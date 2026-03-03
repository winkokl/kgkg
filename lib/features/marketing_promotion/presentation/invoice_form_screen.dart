import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
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
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/async_marketing_promotion_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/invoice_form_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/invoice_items_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/total_amount_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';

class InvoiceFormScreen extends ConsumerWidget {
  const InvoiceFormScreen({
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
      provider: asyncMarketingPromotionFormNotifierProvider,
      onData: (res) => ref.watch(goRouterProvider).popUntilPath(const MarketingPromotionPlanRoute().location),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Invoice" : "Convert to Invoice"),
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
                    ? InvoiceFormWidget(isEdit: isEdit)
                    : indicatorValue == 1
                        ? InvoiceItemsWidget(isEdit: isEdit)
                        : TotalAmountWidget(
                            isReadOnly: false,
                            subtotalOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setSubtotal(v);
                            },
                            grandTotalOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setGrandtotal(v);
                            },
                            discountOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setDiscountAmount(v);
                            },
                            bonusOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setBonusAmount(v);
                            },
                            cashBackOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setCashBackAmount(v);
                            },
                            taxOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setTaxAmount(v);
                            },
                            otherChargesOnSaved: (v) {
                              ref.read(invoiceFormNotifierProvider.notifier).setOtherChargesAmount(v);
                            },
                            typeSaved: (discountType, taxType, bonusType, cashbackType) {
                              ref.read(invoiceFormNotifierProvider.notifier).setBonusType(bonusType);
                              ref.read(invoiceFormNotifierProvider.notifier).setCashBackType(cashbackType);
                              ref.read(invoiceFormNotifierProvider.notifier).setDiscountType(discountType);
                              ref.read(invoiceFormNotifierProvider.notifier).setTaxType(taxType);
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
                            final products = ref.watch(invoiceFormNotifierProvider).products;
                            if (products.any((element) => element.amount == 0)) {
                              CustomDialog.showFailureDialog(
                                title: "Invalid Quantity",
                                msg: "At least one product must have a non-zero quantity.",
                                onPressed: () => context.pop(),
                              );
                            } else {
                              final invoice = ref.watch(invoiceFormNotifierProvider);
                              final productlist = ref.watch(invoiceFormNotifierProvider).products;
                              final subtotal = productlist.isEmpty
                                  ? 0.0
                                  : productlist.map((e) => e.amount).reduce(
                                        (value, element) => value + element,
                                      );

                              final amount = subtotal;
                              final discount = invoice.discountType == AmountOrPercentStatus.amount ? invoice.discountAmount : (invoice.discountAmount / 100) * amount;
                              final tax = invoice.taxType == AmountOrPercentStatus.amount ? invoice.taxAmount : (invoice.taxAmount / 100) * amount;
                              final bonus = invoice.bonusType == AmountOrPercentStatus.amount ? invoice.bonusAmt : (invoice.bonusAmt / 100) * amount;
                              final cashback = invoice.cashbackType == AmountOrPercentStatus.amount ? invoice.cashbackAmt : (invoice.cashbackAmt / 100) * amount;

                              final otherCharges = invoice.otherCharges;

                              final totalAmount = amount + tax + otherCharges - (discount + bonus + cashback);

                              ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                    subtotal: subtotal,
                                    taxType: invoice.taxType,
                                    taxAmount: tax,
                                    discountType: invoice.discountType,
                                    discountAmount: discount,
                                    bonusType: invoice.bonusType,
                                    bonusAmount: bonus,
                                    cashbackType: invoice.cashbackType,
                                    cashbackAmount: cashback,
                                    otherChargesAmount: invoice.otherCharges,
                                    grandtotal: totalAmount,
                                  ));
                              ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                            }
                          } else {
                            if (formKey.currentState!.validate() == true) {
                              formKey.currentState!.save();
                              final invoice = ref.watch(invoiceFormNotifierProvider);
                              if (isEdit) {
                                ref.read(asyncMarketingPromotionFormNotifierProvider.notifier).updateInvoice(invoice);
                              } else {
                                ref.read(asyncMarketingPromotionFormNotifierProvider.notifier).convertToInvoice(invoice);
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
