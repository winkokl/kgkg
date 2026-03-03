import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_return_total_widget.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/async_consignment_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/consignment_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/widgets/consignment_return_info_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentReturnFormScreen extends ConsumerWidget {
  const ConsignmentReturnFormScreen({super.key, required this.isEdit, required this.consignmentReturn});

  final ConsignmentReturn consignmentReturn;
  final bool isEdit;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);

    ref.listenX(
      provider: asyncConsignmentReturnFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? "",
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const ConsignmentReturnRoute().location);
        },
        printOnPressed: () async => await printConsignmentReturnV2(context, res.data),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${isEdit ? "Edit" : "Add New"} Consignment Return"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const IndicatorWidget(length: 2),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: indicatorValue == 0
                    ? ConsignmentReturnInfoForm(isEdit: isEdit)
                    : DisplayReturnTotalWidget(
                        isReadOnly: false,
                        subtotalOnSaved: (v) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setSubtotal(v);
                        },
                        grandTotalOnSaved: (v) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setGrandtotal(v);
                        },
                        returnDeductOnSaved: (v) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setReturnDeductAmount(v);
                        },
                        otherChargesOnSaved: (v) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setOtherChargesAmount(v);
                        },
                        totalReturnAmountOnSaved: (v) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setTotalReturnAmount(v);
                        },
                        typeSaved: (returnDeductType) {
                          ref.read(consignmentReturnFormNotifierProvider.notifier).setReturnDeductType(returnDeductType);
                        },
                      ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    ActionButton(
                      label: indicatorValue == 0 ? "Next" : "Submit",
                      onPressed: () {
                        if (indicatorValue == 0 && formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();

                          final productlist = ref.watch(productListNotifierProvider);
                          final subtotal = productlist.isEmpty
                              ? 0
                              : productlist.map((e) => e.returnAmount).reduce(
                                    (value, element) => value + element,
                                  );

                          final amount = subtotal;

                          final returnDeduct = consignmentReturn.returnDeductType == AmountOrPercentStatus.amount ? consignmentReturn.returnDeductAmount : (consignmentReturn.returnDeductAmount / 100) * amount;

                          final otherCharges = consignmentReturn.otherChargesAmount;

                          final grandTotal = amount + otherCharges;

                          ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                returnDeductAmount: returnDeduct,
                                returnDeductType: consignmentReturn.returnDeductType,
                                totalReturnAmount: amount + otherCharges - returnDeduct,
                                otherChargesAmount: consignmentReturn.otherChargesAmount,
                                grandtotal: grandTotal,
                              ));

                          ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);

                          return;
                        }

                        if (indicatorValue == 1) {
                          formKey.currentState!.save();
                          final newConsignmentReturn = ref.watch(consignmentReturnFormNotifierProvider).copyWith(
                                products: ref.watch(productListNotifierProvider),
                              );
                          if (newConsignmentReturn.subtotal == 0) {
                            CustomDialog.showFailureDialog(
                              title: "Failed",
                              msg: "Please decrease atleast one product's quantity to return.",
                              onPressed: () => context.pop(),
                            );
                            return;
                          }
                          if (isEdit) {
                            ref.read(asyncConsignmentReturnFormNotifierProvider.notifier).updateConsignmentReturn(newConsignmentReturn);
                          } else {
                            ref.read(asyncConsignmentReturnFormNotifierProvider.notifier).createConsignmentReturn(newConsignmentReturn);
                          }
                          return;
                        }
                      },
                    ),
                    if (indicatorValue != 0)
                      TextButton(
                        onPressed: () => ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue - 1),
                        child: const Text("Previous"),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
