import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/async_marketing_promotion_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/marketing_promotion_return_total_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/return_form_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/return_items_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';

class MarketingPromotionReturnFormScreen extends ConsumerWidget {
  const MarketingPromotionReturnFormScreen({
    super.key,
    required this.isEdit,
    // required this.invoice,
  });

  final bool isEdit;
  // final Invoice invoice;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);

    ref.listenX(
      provider: asyncMarketingPromotionReturnFormNotifierProvider,
      onData: (res) => ref.watch(goRouterProvider).popUntilPath(const MarketingPromotionReturnRoute().location),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Marketing Promotion Return" : "Add New Marketing Promotion Return"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const IndicatorWidget(length: 3),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: indicatorValue == 0
                    ? ReturnFormWidget(isEdit: isEdit)
                    : indicatorValue == 1
                        ? ReturnItemsWidget(isEdit: isEdit)
                        : MarketingPromotionReturnTotalWidget(
                            isReadOnly: false,
                            returnDeductOnSaved: (v) {
                              ref.read(returnFormNotifierProvider.notifier).setDeductAmount(v);
                            },
                            totalReturnAmountOnSaved: (v) {
                              ref.read(returnFormNotifierProvider.notifier).setTotalReturnAmount(v);
                            },
                            subtotalOnSaved: (v) {
                              ref.read(returnFormNotifierProvider.notifier).setSubtotal(v);
                            },
                            grandTotalOnSaved: (v) {
                              ref.read(returnFormNotifierProvider.notifier).setGrandtotal(v);
                            },
                            otherChargesOnSaved: (v) {
                              ref.read(returnFormNotifierProvider.notifier).setOtherChargesAmount(v);
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
                      label: indicatorValue == 0 || indicatorValue == 1 ? "Next" : "Submit",
                      onPressed: () {
                        if (formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          if (indicatorValue == 0) {
                            ref.read(indicatorNotifierProvider.notifier).setValue(1);
                          } else if (indicatorValue == 1) {
                            final products = ref.watch(returnFormNotifierProvider).products;
                            if (!products.any((element) => element.returnAmount != 0)) {
                              CustomDialog.showFailureDialog(
                                title: "Invalid Quantity",
                                msg: "At least one product must have a non-zero quantity.",
                                onPressed: () => context.pop(),
                              );
                            } else {
                              final mpReturn = ref.watch(returnFormNotifierProvider);
                              final productlist = ref.watch(returnFormNotifierProvider).products;
                              final subtotal = productlist.isEmpty
                                  ? 0.0
                                  : productlist.map((e) => e.returnAmount).reduce(
                                        (value, element) => value + element,
                                      );

                              final amount = subtotal;

                              final otherCharges = mpReturn.otherCharges;
                              final detuctAmount = mpReturn.deductAmount;
                              final grandTotal = subtotal + otherCharges;
                              final totalReturnAmount = amount + otherCharges - detuctAmount;

                              ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                    subtotal: subtotal,
                                    returnDeductAmount: detuctAmount,
                                    totalReturnAmount: totalReturnAmount,
                                    otherChargesAmount: mpReturn.otherCharges,
                                    grandtotal: grandTotal,
                                  ));
                              ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                            }
                          } else {
                            if (formKey.currentState!.validate() == true) {
                              formKey.currentState!.save();
                              final mpReturn = ref.watch(returnFormNotifierProvider);
                              // print(MarketingPromotionReturnDTO.fromDomain(mpReturn).toJson());
                              if (isEdit) {
                                ref.read(asyncMarketingPromotionReturnFormNotifierProvider.notifier).updateReturn(mpReturn);
                              } else {
                                ref.read(asyncMarketingPromotionReturnFormNotifierProvider.notifier).create(mpReturn);
                              }
                            }
                          }
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
