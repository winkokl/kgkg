import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/dialog_icon_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/async_secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/add_new_product_widget.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/secondary_sale_info_form.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_total_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleFormScreen extends ConsumerWidget {
  const SecondarySaleFormScreen({
    super.key,
    required this.isEdit,
    required this.secondarySale,
  });

  final bool isEdit;
  final SecondarySale secondarySale;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);

    ref.listenX(
      provider: asyncSecondarySaleFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? "",
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const SecondarySaleRoute().location);
        },
        printOnPressed: () async => await printSecondarySaleV2(context, res.data),
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
                    ? SecondarySaleInfoForm(isEdit: isEdit)
                    : indicatorValue == 1
                        ? const AddNewProductWidget(hasAction: true, isReturn: false)
                        : DisplayTotalWidget(
                            isReadOnly: false,
                            salePromotion: ref.watch(secondarySaleFormNotifierProvider).salePromotion.id == -1 ? null : ref.watch(secondarySaleFormNotifierProvider).salePromotion,
                            subtotalOnSaved: (v) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setSubtotal(v);
                            },
                            grandTotalOnSaved: (v) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setGrandtotal(v);
                            },
                            discountOnSaved: (v) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setDiscountAmount(v);
                            },
                            discountAmountOnSaved: (v) => ref.read(secondarySaleFormNotifierProvider.notifier).setDiscount(v),
                            taxAmountOnSaved: (v) => ref.read(secondarySaleFormNotifierProvider.notifier).setTax(v),
                            taxOnSaved: (v) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setTaxAmount(v);
                            },
                            otherChargesOnSaved: (v) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setOtherChargesAmount(v);
                            },
                            typeSaved: (discountType, taxType) {
                              ref.read(secondarySaleFormNotifierProvider.notifier).setDiscountType(discountType);
                              ref.read(secondarySaleFormNotifierProvider.notifier).setTaxType(taxType);
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
                      ActionButton(
                        foregroundColor: brandColor,
                        borderColor: brandColor,
                        backgroundColor: bgWhite,
                        label: "Add Product",
                        onPressed: () {
                          if (formKey.currentState!.validate() == true) {
                            formKey.currentState!.save();

                            final newProductfromForm = ref.watch(newProductNotifierProvider);
                            Product newProduct;

                            if (newProductfromForm.code.contains('-')) {
                              //remofe prefix from code
                              final codeParts = newProductfromForm.code.split('-');
                              newProduct = newProductfromForm.copyWith(code: codeParts.sublist(1).join('-'));
                            } else {
                              newProduct = newProductfromForm;
                            }

                            if (newProduct.isPromotionItem) {
                              final promotionDetail = newProduct.promotionDetail;
                              final infoList = promotionDetail.info;
                              final unit = newProduct.unitTypes.firstWhere((e) => e.id == newProduct.unit.id);
                              final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;

                              final amount = newProduct.amount * baseQty;
                              final qty = baseQty * newProduct.quantity;

                              // Determine promotion info based on the range type
                              final promotionInfo = infoList.firstWhere(
                                (e) {
                                  final fromSaleRange = e.saleRangeFrom;
                                  final toSaleRange = e.saleRangeTo;
                                  // Check for MMK range type
                                  if (promotionDetail.rangeType == SaleRangeType.mmk) {
                                    if (amount >= fromSaleRange && amount <= toSaleRange) {
                                      return true;
                                    } else if (amount > toSaleRange) {
                                      return e == infoList.last; // Ensure we return the last item for over-range
                                    }
                                  } else {
                                    // Check for Quantity range type
                                    if (qty >= fromSaleRange && qty <= toSaleRange) {
                                      return true;
                                    } else if (qty > toSaleRange) {
                                      return e == infoList.last; // Ensure we return the last item for over-range
                                    }
                                  }
                                  return false;
                                },
                                orElse: () => Info.defaultValue(), // Return null if no match is found
                              );
                              final updatePromotionInfo = promotionInfo.copyWith(
                                promotionName: promotionDetail.promotionName,
                                skulabel: promotionDetail.sku.isNotEmpty
                                    ? promotionDetail.sku.firstWhere(
                                        (element) => element.value == newProduct.unit.id,
                                        orElse: () {
                                          return const Sku();
                                        },
                                      ).label
                                    : "",
                              );
                              ref.read(productListNotifierProvider.notifier).addProduct(newProduct.copyWith(promotionInfo: updatePromotionInfo));
                            } else {
                              ref.read(productListNotifierProvider.notifier).addProduct(newProduct);
                            }
                            ref.invalidate(productNotifierProvider);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: bgWhite,
                              duration: const Duration(seconds: 3),
                              margin: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height - 200, right: 20, left: 20),
                              behavior: SnackBarBehavior.floating,
                              showCloseIcon: true,
                              closeIconColor: brandColorGrey,
                              elevation: 3,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              content: const Row(
                                children: [
                                  DialogIconWidget(
                                    height: 30,
                                    width: 30,
                                    iconSize: 16,
                                    backgroundColor: brandColor,
                                    iconData: Icons.check,
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        HeaderText("Product Successfully Added!"),
                                        SizedBox(height: 5),
                                        HeaderTextSmall("You have successfully added new product."),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                          }
                        },
                        icon: const Icon(Icons.add, color: brandColor),
                      ),
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
                          } else {
                            final productlist = ref.watch(productListNotifierProvider);
                            final subtotal = productlist.isEmpty
                                ? 0
                                : productlist.map((e) => e.totalAmount).reduce(
                                      (value, element) => value + element,
                                    );

                            final amount = subtotal;

                            final discount = secondarySale.discountType == AmountOrPercentStatus.amount ? secondarySale.discountAmount : (secondarySale.discountAmount / 100) * amount;

                            final tax = secondarySale.taxType == AmountOrPercentStatus.amount ? secondarySale.taxAmount : (secondarySale.taxAmount / 100) * amount;

                            final otherCharges = secondarySale.otherChargesAmount;

                            final totalAmount = amount + tax + otherCharges - discount;

                            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                  taxType: secondarySale.taxType,
                                  taxAmount: tax,
                                  discountType: secondarySale.discountType,
                                  discountAmount: discount,
                                  otherChargesAmount: secondarySale.otherChargesAmount,
                                  grandtotal: totalAmount,
                                ));

                            ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue + 1);
                          }
                          return;
                        }
                        if (indicatorValue == 2) {
                          if (formKey.currentState!.validate() == true) {
                            formKey.currentState!.save();
                            var secondarySale = ref.watch(secondarySaleFormNotifierProvider).copyWith(
                                  products: ref.watch(productListNotifierProvider),
                                );
                            secondarySale = secondarySale.copyWith(type: "Secondary");
                            if (isEdit) {
                              ref.read(asyncSecondarySaleFormNotifierProvider.notifier).updateSecondarySale(secondarySale);
                            } else {
                              ref.read(asyncSecondarySaleFormNotifierProvider.notifier).createSecondarySale(secondarySale);
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
