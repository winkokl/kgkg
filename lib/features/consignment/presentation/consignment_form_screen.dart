import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/product_qty_validator.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/async_consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_info_form.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_total_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentFormScreen extends ConsumerWidget {
  const ConsignmentFormScreen({
    super.key,
    required this.isEdit,
    required this.consignment,
  });

  final bool isEdit;
  final Consignment consignment;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);
    final productlist = ref.watch(productListNotifierProvider);

    ref.listenX(
      provider: asyncConsignmentFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? '',
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location);
        },
        printOnPressed: () async => await printConsignmentV2(context, res.data),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${isEdit ? "Edit" : "Add New"} Consignment"),
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
                    ? ConsignmentInfoForm(isEdit: isEdit)
                    : indicatorValue == 1
                        ? ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: productlist.length,
                            itemBuilder: (ctx, index) {
                              final product = productlist[index];

                              return ProductCard(
                                isReturn: false,
                                product: product,
                                ontap: () => ref.watch(goRouterProvider).push(
                                      const ProductDetailRoute(
                                        hasAction: true,
                                        isReturn: false,
                                      ).location,
                                      extra: product,
                                    ),
                              );
                            })

                        // SingleChildScrollView(
                        //     physics: const BouncingScrollPhysics(),
                        //     child: Column(
                        //       children: [
                        //         TotalProductCard(
                        //           ontap: () => ref.watch(goRouterProvider).push(
                        //                 const ProductListRoute(
                        //                   hasAction: true,
                        //                   isReturn: false,
                        //                 ).location,
                        //               ),
                        //         ),
                        //         const DisabledProductForm()
                        //       ],
                        //     ),
                        //   )
                        // const AddNewProductWidget(
                        //     hasAction: true, isReturn: false)
                        : DisplayTotalWidget(
                            isReadOnly: false,
                            subtotalOnSaved: (v) {
                              ref.read(consignmentFormNotifierProvider.notifier).setSubtotal(v);
                            },
                            grandTotalOnSaved: (v) {
                              ref.read(consignmentFormNotifierProvider.notifier).setGrandtotal(v);
                            },
                            discountOnSaved: (v) {
                              ref.read(consignmentFormNotifierProvider.notifier).setDiscountAmount(v);
                            },
                            taxOnSaved: (v) {
                              ref.read(consignmentFormNotifierProvider.notifier).setTaxAmount(v);
                            },
                            otherChargesOnSaved: (v) {
                              ref.read(consignmentFormNotifierProvider.notifier).setOtherChargesAmount(v);
                            },
                            typeSaved: (discountType, taxType) {
                              ref.read(consignmentFormNotifierProvider.notifier).setDiscountType(discountType);
                              ref.read(consignmentFormNotifierProvider.notifier).setTaxType(taxType);
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
                        if (indicatorValue == 0 && formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                          final consignment = ref.watch(consignmentFormNotifierProvider);
                          final products = ref.watch(productListNotifierProvider).map((e) => e.copyWith(consignmentMethod: consignment.consignmentMethod)).toList();
                          ref.read(productListNotifierProvider.notifier).setProductList(products);
                          return;
                        }

                        if (indicatorValue == 1) {
                          if (ref.watch(productListNotifierProvider).isEmpty) {
                            CustomDialog.showFailureDialog(
                              title: "Add Product",
                              msg: "Please add a product to the list",
                              onPressed: () => context.pop(),
                            );
                          } else if (!isQunatityValid2(ref.watch(productListNotifierProvider))) {
                            CustomDialog.showFailureDialog(
                              title: "Invalid Quantity",
                              msg: "At least one product must have a non-zero quantity.",
                              onPressed: () => context.pop(),
                            );
                          } else {
                            final productlist = ref.watch(productListNotifierProvider);
                            final subtotal = productlist.isEmpty
                                ? 0
                                : productlist.map((e) => e.totalAmount).reduce(
                                      (value, element) => value + element,
                                    );

                            final amount = subtotal;

                            final discount = consignment.discountType == AmountOrPercentStatus.amount ? consignment.discountAmount : (consignment.discountAmount / 100) * amount;

                            final tax = consignment.taxType == AmountOrPercentStatus.amount ? consignment.taxAmount : (consignment.taxAmount / 100) * amount;

                            final otherCharges = consignment.otherChargesAmount;

                            final totalAmount = amount + tax + otherCharges - discount;

                            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                  taxType: consignment.taxType,
                                  taxAmount: tax,
                                  discountType: consignment.discountType,
                                  discountAmount: discount,
                                  otherChargesAmount: consignment.otherChargesAmount,
                                  grandtotal: totalAmount,
                                ));

                            ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                          }
                          return;
                        }
                        if (indicatorValue == 2) {
                          if (formKey.currentState!.validate() == true) {
                            formKey.currentState!.save();
                            final products = ref.watch(productListNotifierProvider);
                            final consignment = ref.watch(consignmentFormNotifierProvider).copyWith(products: products);
                            if (isEdit) {
                              ref.read(asyncConsignmentFormNotifierProvider.notifier).updateConsignment(consignment);
                            } else {
                              ref.read(asyncConsignmentFormNotifierProvider.notifier).createConsignment(consignment);
                            }
                            return;
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
