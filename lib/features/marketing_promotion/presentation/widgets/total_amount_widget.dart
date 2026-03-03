import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TotalAmountWidget extends HookConsumerWidget {
  const TotalAmountWidget({
    super.key,
    required this.isReadOnly,
    this.bonusOnSaved,
    this.cashBackOnSaved,
    this.discountOnSaved,
    this.taxOnSaved,
    this.otherChargesOnSaved,
    this.subtotalOnSaved,
    this.grandTotalOnSaved,
    this.typeSaved,
  });
  final bool isReadOnly;
  final Function(String? v)? bonusOnSaved;
  final Function(String? v)? cashBackOnSaved;
  final Function(String? v)? discountOnSaved;
  final Function(String? v)? taxOnSaved;
  final Function(String? v)? otherChargesOnSaved;
  final Function(String? v)? subtotalOnSaved;
  final Function(String? v)? grandTotalOnSaved;
  final Function(AmountOrPercentStatus discountType, AmountOrPercentStatus taxType, AmountOrPercentStatus bonsType, AmountOrPercentStatus cashbackType)? typeSaved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCharges = ref.watch(totalChargesFormNotifierProvider);

    final discountType = useState(totalCharges.discountType);
    final taxType = useState(totalCharges.taxType);
    final bonusType = useState(totalCharges.bonusType);
    final cashBackType = useState(totalCharges.cashbackType);

    // final productlist = ref.watch(invoiceFormNotifierProvider).products;

    // final subtotal = productlist.isEmpty
    //     ? 0
    //     : productlist.map((e) => e.amount).reduce(
    //           (value, element) => value + element,
    //         );
    final subtotal = totalCharges.subtotal;

    final grandTotal = useState(roundToNextHundred(totalCharges.grandtotal));
    final discountAmount = useState(totalCharges.discountAmount);
    final taxAmount = useState(totalCharges.taxAmount);
    final bonusAmount = useState(totalCharges.bonusAmount);
    final cashBackAmount = useState(totalCharges.cashbackAmount);

    final otherChargesAmount = useState(totalCharges.otherChargesAmount);

    (double, double, double, double) getRealValue() {
      final bonusValue = bonusType.value == AmountOrPercentStatus.amount ? totalCharges.bonusAmount : (totalCharges.bonusAmount / subtotal) * 100;

      final cashbackValue = cashBackType.value == AmountOrPercentStatus.amount ? totalCharges.cashbackAmount : (totalCharges.cashbackAmount / subtotal) * 100;

      final discountValue = discountType.value == AmountOrPercentStatus.amount ? totalCharges.discountAmount : (totalCharges.discountAmount / subtotal) * 100;

      final taxValue = taxType.value == AmountOrPercentStatus.amount ? totalCharges.taxAmount : (totalCharges.taxAmount / subtotal) * 100;

      return (discountValue, taxValue, bonusValue, cashbackValue);
    }

    final discountController = useTextEditingController(text: formatter.format(getRealValue().$1));

    final taxController = useTextEditingController(text: formatter.format(getRealValue().$2));

    final bonusController = useTextEditingController(text: formatter.format(getRealValue().$3));

    final cashBackController = useTextEditingController(text: formatter.format(getRealValue().$4));

    final otherChargesController = useTextEditingController(text: formatter.format(totalCharges.otherChargesAmount));

    void updateTotalAmount() {
      // final discountType = ref.watch(discountTypeNotifierProvider);
      // final taxType = ref.watch(taxTypeNotifierProvider);

      final taxFieldValue = taxController.text.toDouble();
      final discountFieldValue = discountController.text.toDouble();
      final bonusFieldValue = bonusController.text.toDouble();
      final cashBackFieldValue = cashBackController.text.toDouble();
      final otherChargesFieldValue = otherChargesController.text.toDouble();

      final amount = subtotal;

      final discount = discountType.value == AmountOrPercentStatus.amount ? discountFieldValue : (discountFieldValue / 100) * amount;

      final tax = taxType.value == AmountOrPercentStatus.amount ? taxFieldValue : (taxFieldValue / 100) * amount;

      final bonus = bonusType.value == AmountOrPercentStatus.amount ? bonusFieldValue : (bonusFieldValue / 100) * amount;

      final cashback = cashBackType.value == AmountOrPercentStatus.amount ? cashBackFieldValue : (cashBackFieldValue / 100) * amount;

      final otherCharges = otherChargesFieldValue;

      final totalAmount = amount + tax + otherCharges - (discount + bonus + cashback);

      grandTotal.value = roundToNextHundred(totalAmount);
      discountAmount.value = discount;
      taxAmount.value = tax;
      bonusAmount.value = bonus;
      cashBackAmount.value = cashback;
      otherChargesAmount.value = otherCharges;
    }

    useEffect(() {
      bonusController.addListener(updateTotalAmount);
      return () => bonusController.removeListener(updateTotalAmount);
    }, [bonusController]);

    useEffect(() {
      cashBackController.addListener(updateTotalAmount);
      return () => cashBackController.removeListener(updateTotalAmount);
    }, [cashBackController]);

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

    return SingleChildScrollView(
      child: Container(
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
              // Bonus
              Row(
                children: [
                  const Expanded(
                    child: Align(alignment: Alignment.centerLeft, child: HeaderText("Bonus", color: secondaryTextColor)),
                  ),
                  Expanded(
                    flex: 2,
                    child: FormTextInput(
                      isReadOnly: isReadOnly,
                      controller: bonusController,
                      inputFormatters: textInputFormats(bonusType.value),
                      fillColor: isReadOnly ? textFieldFillColor : null,
                      suffixicon: AmountOrPecentStatusWidget(
                        isSelectable: !isReadOnly,
                        onSelect: () {
                          bonusType.value = bonusType.value.toggle;
                          bonusController.text = "";
                        },
                        selecetedType: bonusType.value,
                      ),
                      onSaved: (v) {
                        bonusOnSaved?.call(v);
                        subtotalOnSaved?.call(subtotal.toString());
                        grandTotalOnSaved?.call(grandTotal.value.toString());
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(bonusAmount.value))),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: Align(alignment: Alignment.centerLeft, child: HeaderText("Cashback", color: secondaryTextColor)),
                  ),
                  Expanded(
                    flex: 2,
                    child: FormTextInput(
                      isReadOnly: isReadOnly,
                      controller: cashBackController,
                      inputFormatters: textInputFormats(cashBackType.value),
                      fillColor: isReadOnly ? textFieldFillColor : null,
                      suffixicon: AmountOrPecentStatusWidget(
                        isSelectable: !isReadOnly,
                        onSelect: () {
                          cashBackType.value = cashBackType.value.toggle;
                          cashBackController.text = "";
                        },
                        selecetedType: cashBackType.value,
                      ),
                      onSaved: (v) {
                        cashBackOnSaved?.call(v);
                        subtotalOnSaved?.call(subtotal.toString());
                        grandTotalOnSaved?.call(grandTotal.value.toString());
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(cashBackAmount.value))),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Discount
              Row(
                children: [
                  const Expanded(
                    child: Align(alignment: Alignment.centerLeft, child: HeaderText("Discount", color: secondaryTextColor)),
                  ),
                  Expanded(
                    flex: 2,
                    child: FormTextInput(
                      isReadOnly: isReadOnly,
                      controller: discountController,
                      inputFormatters: textInputFormats(discountType.value),
                      fillColor: isReadOnly ? textFieldFillColor : null,
                      suffixicon: AmountOrPecentStatusWidget(
                        isSelectable: !isReadOnly,
                        onSelect: () {
                          discountType.value = discountType.value.toggle;
                          discountController.text = "";
                        },
                        selecetedType: discountType.value,
                      ),
                      onSaved: (v) {
                        discountOnSaved?.call(v);
                        typeSaved?.call(discountType.value, taxType.value, bonusType.value, cashBackType.value);
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
              // Tax
              Row(
                children: [
                  const Expanded(
                    child: Align(alignment: Alignment.centerLeft, child: HeaderText("Tax", color: secondaryTextColor)),
                  ),
                  Expanded(
                    flex: 2,
                    child: FormTextInput(
                      isReadOnly: isReadOnly,
                      controller: taxController,
                      inputFormatters: textInputFormats(taxType.value),
                      fillColor: isReadOnly ? textFieldFillColor : null,
                      suffixicon: AmountOrPecentStatusWidget(
                        isSelectable: !isReadOnly,
                        onSelect: () {
                          taxType.value = taxType.value.toggle;
                          taxController.text = "";
                        },
                        selecetedType: taxType.value,
                      ),
                      onSaved: taxOnSaved,
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
      ),
    );
  }
}
