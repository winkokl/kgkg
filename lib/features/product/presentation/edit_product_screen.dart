import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';

class EditProductScreen extends HookConsumerWidget {
  const EditProductScreen({
    super.key,
    required this.product,
    required this.isReturn,
  });
  static final formKey = GlobalKey<FormState>();
  final Product product;
  final bool isReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Product")),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: ProductForm(
                    isEdit: true,
                    product: product,
                    isReturn: isReturn,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ActionButton(
                  label: "Submit",
                  onPressed: () {
                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      final newProductfromForm = ref.watch(newProductNotifierProvider);
                      Product newProduct;

                      if (newProductfromForm.code.contains('-')) {
                        newProduct = newProductfromForm.copyWith(
                          code: newProductfromForm.code.split('-').sublist(1).join('-'),
                        );
                      } else {
                        newProduct = newProductfromForm;
                      }

                      print("new product available quantity from form : ${newProduct.availableQty}");

                      // Check if the product is a promotion item
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
                          orElse: () => Info.defaultValue(), // Return default if no match is found
                        );

                        final existingPromotionInfo = newProduct.promotionInfo;
                        final updatedPromotionInfo = promotionInfo.copyWith(
                          promotionName: promotionDetail.promotionName,
                        );

                        // Update product only if promotionInfo actually changed (or was null)
                        if (existingPromotionInfo != updatedPromotionInfo) {
                          ref.read(productListNotifierProvider.notifier).editProduct(newProduct.copyWith(promotionInfo: updatedPromotionInfo));
                        } else {
                          ref.read(productListNotifierProvider.notifier).editProduct(newProduct);
                        }
                      } else {
                        ref.read(productListNotifierProvider.notifier).editProduct(newProduct);
                      }

                      ref.invalidate(productNotifierProvider);
                      for (var i = 0; i < 2; i++) {
                        context.pop();
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
