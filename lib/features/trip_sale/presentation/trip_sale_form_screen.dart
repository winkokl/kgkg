import 'package:fpdart/fpdart.dart';
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
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/async_trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_info_form.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_total_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleFormScreen extends ConsumerWidget {
  const TripSaleFormScreen({
    super.key,
    required this.isEdit,
    required this.tripSale,
  });

  final bool isEdit;
  final TripSale tripSale;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);
    final productlist = ref.watch(productListNotifierProvider);

    ref.listenX(
      provider: asyncTripSaleFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? "",
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const TripSaleRoute().location);
        },
        printOnPressed: () async => await printTripSaleV2(context, res.data),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${isEdit ? "Edit" : "Add New"} Sale Order"),
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
                    ? TripSaleInfoForm(isEdit: isEdit)
                    : // ...existing code...
                    indicatorValue == 1
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
                        : DisplayTotalWidget(
                            isReadOnly: false,
                            salePromotion: ref.watch(tripSaleFormNotifierProvider).salePromotion == const SalePromotion() ? null : ref.watch(tripSaleFormNotifierProvider).salePromotion,
                            subtotalOnSaved: (v) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setSubtotal(v);
                            },
                            grandTotalOnSaved: (v) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setGrandtotal(v);
                            },
                            discountOnSaved: (v) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setDiscountAmount(v);
                            },
                            taxOnSaved: (v) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setTaxAmount(v);
                            },
                            otherChargesOnSaved: (v) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setOtherChargesAmount(v);
                            },
                            typeSaved: (discountType, taxType) {
                              ref.read(tripSaleFormNotifierProvider.notifier).setDiscountType(discountType);
                              ref.read(tripSaleFormNotifierProvider.notifier).setTaxType(taxType);
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
                    if (indicatorValue == 1) ...[
                      const SizedBox(height: 10),
                    ],
                    ActionButton(
                      label: indicatorValue == 0 || indicatorValue == 1 ? "Next" : "Submit",
                      onPressed: () {
                        if (indicatorValue == 0 && formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
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

                            final discount = tripSale.discountType == AmountOrPercentStatus.amount ? tripSale.discountAmount : (tripSale.discountAmount / 100) * amount;

                            final tax = tripSale.taxType == AmountOrPercentStatus.amount ? tripSale.taxAmount : (tripSale.taxAmount / 100) * amount;

                            final otherCharges = tripSale.otherChargesAmount;

                            final totalAmount = amount + tax + otherCharges - discount;

                            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                  taxType: tripSale.taxType,
                                  taxAmount: tax,
                                  discountType: tripSale.discountType,
                                  discountAmount: discount,
                                  otherChargesAmount: tripSale.otherChargesAmount,
                                  grandtotal: totalAmount,
                                ));

                            ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                          }
                          return;
                        }
                        if (indicatorValue == 2) {
                          if (formKey.currentState!.validate() == true) {
                            formKey.currentState!.save();

                            List<Product> finalProducts = ref.watch(productListNotifierProvider).map((product) => product).filter((p) => p.quantity > 0).toList();
                            print("Final product list before submit : ");
                            for (var p in finalProducts) {
                              print("Product : ${p.name} , quantity : ${p.quantity} , available qty : ${p.availableQty}");
                            }
                            final tripSale = ref.watch(tripSaleFormNotifierProvider).copyWith(products: finalProducts);

                            if (isEdit) {
                              ref.read(asyncTripSaleFormNotifierProvider.notifier).updateTripSale(tripSale);
                            } else {
                              ref.read(asyncTripSaleFormNotifierProvider.notifier).createTripSale(tripSale);
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
