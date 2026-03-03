import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplayReturnTotalWidget extends HookConsumerWidget {
  const DisplayReturnTotalWidget({
    super.key,
    required this.isReadOnly,
    this.returnDeductOnSaved,
    this.otherChargesOnSaved,
    this.subtotalOnSaved,
    this.grandTotalOnSaved,
    this.totalReturnAmountOnSaved,
    this.typeSaved,
  });
  final bool isReadOnly;
  final Function(String? v)? returnDeductOnSaved;
  final Function(String? v)? otherChargesOnSaved;
  final Function(String? v)? subtotalOnSaved;
  final Function(String? v)? grandTotalOnSaved;
  final Function(String? v)? totalReturnAmountOnSaved;

  final Function(AmountOrPercentStatus returnDeductType)? typeSaved;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCharges = ref.watch(totalChargesFormNotifierProvider);

    final returnDeductType = useState(totalCharges.returnDeductType);

    final productlist = ref.watch(productListNotifierProvider);

    final subtotal = productlist.isEmpty
        ? 0
        : productlist.map((e) => e.returnAmount).reduce(
              (value, element) => value + element,
            );

    final grandTotal = useState(totalCharges.grandtotal);
    final totalReturnAmount = useState(roundToNextHundred(totalCharges.totalReturnAmount));
    final returnDeductAmount = useState(totalCharges.returnDeductAmount);
    final otherChargesAmount = useState(totalCharges.otherChargesAmount);

    double getRealValue() {
      final returnDeductValue = returnDeductType.value == AmountOrPercentStatus.amount ? totalCharges.returnDeductAmount : (totalCharges.returnDeductAmount / subtotal) * 100;

      return returnDeductValue;
    }

    final returnDeductController = useTextEditingController(text: formatter.format(getRealValue()));

    final otherChargesController = useTextEditingController(text: formatter.format(totalCharges.otherChargesAmount));

    void updateTotalAmount() {
      final returnDeductFieldValue = returnDeductController.text.toDouble();
      final otherChargesFieldValue = otherChargesController.text.toDouble();
      final productlist = ref.watch(productListNotifierProvider);
      final subtotal = productlist.isEmpty
          ? 0
          : productlist.map((e) => e.returnAmount).reduce(
                (value, element) => value + element,
              );
      final amount = subtotal;

      final returnDeduct = returnDeductType.value == AmountOrPercentStatus.amount ? returnDeductFieldValue : (returnDeductFieldValue / 100) * amount;

      final otherCharges = otherChargesFieldValue;

      grandTotal.value = amount + otherCharges;
      totalReturnAmount.value = roundToNextHundred(amount + otherCharges - returnDeduct);
      returnDeductAmount.value = returnDeduct;
      otherChargesAmount.value = otherCharges;
    }

    ref.listen(productListNotifierProvider, (previous, next) {
      if (previous != next) {
        final subtotal = next.map((e) => e.returnAmount).reduce((value, element) => value + element);
        final returnDeductFieldValue = returnDeductController.text.toDouble();

        final returnDeduct = returnDeductType.value == AmountOrPercentStatus.amount ? returnDeductFieldValue : (returnDeductFieldValue / 100) * subtotal;
        returnDeductAmount.value = returnDeduct;
        grandTotal.value = subtotal + otherChargesAmount.value;
        totalReturnAmount.value = roundToNextHundred(subtotal + otherChargesAmount.value - returnDeduct);
      }
    });

    useEffect(() {
      returnDeductController.addListener(updateTotalAmount);
      return () => returnDeductController.removeListener(updateTotalAmount);
    }, [returnDeductController]);

    useEffect(() {
      otherChargesController.addListener(updateTotalAmount);
      return () => otherChargesController.removeListener(updateTotalAmount);
    }, [otherChargesController]);

    return SingleChildScrollView(
      child: Column(
        children: [
          TotalProductCard(
            ontap: () => ref.watch(goRouterProvider).push(ProductListRoute(hasAction: !isReadOnly, isReturn: true).location),
          ),
          const SizedBox(height: 100),
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
                          onSaved: (v) {
                            otherChargesOnSaved?.call(v);
                            typeSaved?.call(returnDeductType.value);
                            subtotalOnSaved?.call(subtotal.toString());
                            grandTotalOnSaved?.call(grandTotal.value.toString());
                            totalReturnAmountOnSaved?.call(totalReturnAmount.value.toString());
                          },
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Return Deduct Amount", color: secondaryTextColor)),
                      ),
                      Expanded(
                        flex: 2,
                        child: FormTextInput(
                          isReadOnly: isReadOnly,
                          controller: returnDeductController,
                          inputFormatters: textInputFormats(returnDeductType.value),
                          fillColor: isReadOnly ? textFieldFillColor : null,
                          suffixicon: AmountOrPecentStatusWidget(
                            isSelectable: !isReadOnly,
                            onSelect: () {
                              returnDeductType.value = returnDeductType.value.toggle;
                              returnDeductController.text = "";
                            },
                            selecetedType: returnDeductType.value,
                          ),
                          onSaved: returnDeductOnSaved,
                        ),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(returnDeductAmount.value))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: HeaderText("Total Return Amount", color: secondaryTextColor)),
                      ),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: HeaderText(formatter.format(totalReturnAmount.value))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
