import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/sale_promotion_overview._widget.dart';

class DisplayTotalWidget extends HookConsumerWidget {
  const DisplayTotalWidget({
    super.key,
    required this.isReadOnly,
    this.salePromotion,
    this.discountOnSaved,
    this.taxOnSaved,
    this.otherChargesOnSaved,
    this.subtotalOnSaved,
    this.grandTotalOnSaved,
    this.typeSaved,
    this.discountAmountOnSaved,
    this.taxAmountOnSaved,
  });
  final bool isReadOnly;
  final SalePromotion? salePromotion;
  final Function(String? v)? discountOnSaved;
  final Function(String? v)? taxOnSaved;
  final Function(String? v)? otherChargesOnSaved;
  final Function(String? v)? subtotalOnSaved;
  final Function(String? v)? grandTotalOnSaved;
  final Function(String? v)? discountAmountOnSaved;
  final Function(String? v)? taxAmountOnSaved;

  final Function(AmountOrPercentStatus discountType, AmountOrPercentStatus taxType)? typeSaved;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCharges = ref.watch(totalChargesFormNotifierProvider);

    final discountType = useState(totalCharges.discountType);
    final taxType = useState(totalCharges.taxType);

    final productlist = ref.watch(productListNotifierProvider);

    final promtionItemList = productlist.where((element) => element.isPromotionItem).toList();
    final hasPromotionItems = promtionItemList.isNotEmpty;

    final subtotal = productlist.isEmpty
        ? 0
        : productlist.map((e) => e.totalAmount).reduce(
              (value, element) => value + element,
            );

    final discountValue = useState(totalCharges.discount);
    final taxValue = useState(totalCharges.tax);
    final grandTotal = useState(roundToNextHundred(totalCharges.grandtotal));
    final discountAmount = useState(totalCharges.discountAmount);
    final taxAmount = useState(totalCharges.taxAmount);
    final otherChargesAmount = useState(totalCharges.otherChargesAmount);

    (double, double) getRealValue() {
      final discountValue = discountType.value == AmountOrPercentStatus.amount ? totalCharges.discountAmount : (totalCharges.discountAmount / subtotal) * 100;

      final taxValue = taxType.value == AmountOrPercentStatus.amount ? totalCharges.taxAmount : (totalCharges.taxAmount / subtotal) * 100;

      return (discountValue, taxValue);
    }

    final discountController = useTextEditingController(text: formatter.format(getRealValue().$1));

    final taxController = useTextEditingController(text: formatter.format(getRealValue().$2));

    final otherChargesController = useTextEditingController(text: formatter.format(totalCharges.otherChargesAmount));

    void updateTotalAmount() {
      // final discountType = ref.watch(discountTypeNotifierProvider);
      // final taxType = ref.watch(taxTypeNotifierProvider);

      final taxFieldValue = taxController.text.toDouble();
      final discountFieldValue = discountController.text.toDouble();
      final otherChargesFieldValue = otherChargesController.text.toDouble();

      final amount = subtotal;

      final discount = discountType.value == AmountOrPercentStatus.amount ? discountFieldValue : (discountFieldValue / 100) * amount;

      final tax = taxType.value == AmountOrPercentStatus.amount ? taxFieldValue : (taxFieldValue / 100) * amount;

      final otherCharges = otherChargesFieldValue;

      final totalAmount = amount + tax + otherCharges - discount;

      print("discountType: ${discountType.value}, discountFieldValue: $discountFieldValue, calculated discount: $discount");
      print("taxType: ${taxType.value}, taxFieldValue: $taxFieldValue, calculated tax: $tax");

      discountValue.value = discountFieldValue;
      taxValue.value = taxFieldValue;
      grandTotal.value = roundToNextHundred(totalAmount);
      discountAmount.value = discount;
      taxAmount.value = tax;
      otherChargesAmount.value = otherCharges;
    }

    useEffect(() {
      discountController.addListener(updateTotalAmount);
      return () => discountController.removeListener(updateTotalAmount);
    }, [discountController]);

    useEffect(() {
      taxController.addListener(updateTotalAmount);
      return () => taxController.removeListener(updateTotalAmount);
    }, [taxController]);

    useEffect(() {
      otherChargesController.addListener(updateTotalAmount);
      return () => otherChargesController.removeListener(updateTotalAmount);
    }, [otherChargesController]);

    // Calculate discount and tax from products when promotion items exist
    useEffect(() {
      if (hasPromotionItems) {
        // Calculate total discount from all products
        final totalProductDiscount = productlist.isEmpty
            ? 0.0
            : productlist.map((e) {
                final qty = e.quantity;
                final discountPerUnit = e.discountAmount;
                final discountTypeLocal = e.discountType;

                // Calculate discount based on type
                if (discountTypeLocal == AmountOrPercentStatus.amount) {
                  return discountPerUnit * qty;
                } else {
                  return (discountPerUnit / 100) * e.amount;
                }
              }).reduce((value, element) => value + element);

        // Calculate total tax from all products
        final totalProductTax = productlist.isEmpty ? 0.0 : productlist.map((e) => e.taxAmount).reduce((value, element) => value + element);

        // Update the discount and tax amounts
        discountAmount.value = totalProductDiscount;
        taxAmount.value = totalProductTax;

        // Update controllers to show the calculated values
        discountController.text = formatter.format(totalProductDiscount);
        taxController.text = formatter.format(totalProductTax);

        // Recalculate grand total
        final totalAmount = subtotal + totalProductTax + otherChargesAmount.value - totalProductDiscount;
        grandTotal.value = roundToNextHundred(totalAmount);
      }
      return null;
    }, [hasPromotionItems, productlist.length, subtotal]);

    print("sale promotion in display total widget: $salePromotion");
    print("sale promotion name in display total widget: ${salePromotion?.promotionName}");

    return SingleChildScrollView(
      child: Column(
        children: [
          TotalProductCard(
            ontap: () => ref.watch(goRouterProvider).push(ProductListRoute(hasAction: !isReadOnly, isReturn: false).location),
          ),
          if (salePromotion != null && salePromotion!.id != -1) ...[
            const SizedBox(height: 15),
            InkWell(
              onTap: () async => await showPromotionOverView(context, salePromotion!, promtionItemList),
              child: Container(
                decoration: whiteContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderTextLarge("Promotion", color: brandColor),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(child: HeaderText(salePromotion!.promotionName)),
                          const DecoratedContainer(
                            height: 32,
                            width: 32,
                            color: Color(0xffF4F8FD),
                            child: Icon(Icons.info, color: brandColor, size: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
          if (salePromotion == null || salePromotion?.id == -1) const SizedBox(height: 100),
          Container(
            color: bgWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Sub Total", color: secondaryTextColor)),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(subtotal))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Discount", color: secondaryTextColor)),
                      ),
                      Expanded(
                        flex: 2,
                        child: FormTextInput(
                          isReadOnly: isReadOnly || hasPromotionItems,
                          controller: discountController,
                          inputFormatters: textInputFormats(discountType.value),
                          fillColor: isReadOnly || hasPromotionItems ? textFieldFillColor : null,
                          suffixicon: AmountOrPecentStatusWidget(
                            isSelectable: isReadOnly && hasPromotionItems,
                            onSelect: () {
                              discountType.value = discountType.value.toggle;
                              discountController.text = "";
                            },
                            selecetedType: discountType.value,
                          ),
                          onSaved: (v) {
                            discountOnSaved?.call(discountAmount.value.toString());
                            discountAmountOnSaved?.call(discountValue.value.toString());
                            typeSaved?.call(discountType.value, taxType.value);
                            subtotalOnSaved?.call(subtotal.toString());
                            grandTotalOnSaved?.call(grandTotal.value.toString());
                          },
                        ),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(discountAmount.value))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Tax", color: secondaryTextColor)),
                      ),
                      Expanded(
                        flex: 2,
                        child: FormTextInput(
                          isReadOnly: isReadOnly || hasPromotionItems,
                          controller: taxController,
                          inputFormatters: textInputFormats(taxType.value),
                          fillColor: isReadOnly || hasPromotionItems ? textFieldFillColor : null,
                          suffixicon: AmountOrPecentStatusWidget(
                            isSelectable: !isReadOnly && !hasPromotionItems,
                            onSelect: () {
                              taxType.value = taxType.value.toggle;
                              taxController.text = "";
                            },
                            selecetedType: taxType.value,
                          ),
                          onSaved: (v) {
                            taxOnSaved?.call(taxAmount.value.toString());
                            taxAmountOnSaved?.call(taxValue.value.toString());
                          },
                        ),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(taxAmount.value))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Other Charges", color: secondaryTextColor)),
                      ),
                      Expanded(
                        flex: 2,
                        child: FormTextInput(
                          isReadOnly: isReadOnly,
                          controller: otherChargesController,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'^[+-]?\d{0,100}'),
                            )
                          ],
                          fillColor: isReadOnly ? textFieldFillColor : null,
                          onSaved: otherChargesOnSaved,
                        ),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(otherChargesAmount.value))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Grand Total", color: secondaryTextColor)),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(grandTotal.value))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
