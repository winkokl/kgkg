import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductDetailScreen extends HookConsumerWidget {
  const ProductDetailScreen({
    super.key,
    required this.hasAction,
    required this.product,
    required this.isReturn,
  });
  final bool hasAction;
  final Product product;
  final bool isReturn;

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final actionButton = CustomPopUpMenuButton(
      popupMenuEntries: [
        CustomPopUpMenuItem(
          title: "Delete",
          textColor: errorColor,
          ontap: () => CustomDialog.showDeleteConfirmationDialog(onPressed: () {
            ref.read(productListNotifierProvider.notifier).removeProduct(product);
            for (var i = 0; i < 2; i++) {
              context.pop();
            }
          }),
          isLast: true,
          icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
        )
      ],
    );

    List<Widget>? getActionButton() {
      if (hasAction && !isReturn) {
        return [actionButton];
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: getActionButton(),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        decoration: whiteContainerDecoration,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HeaderTextLarge("Product Detail", color: brandColor),
                              const SizedBox(height: 20),
                              InfoCard(title: "Product Code", value: product.code),
                              InfoCard(title: "Product Name", value: product.name),
                              if (product.warehouse.id != -1) ...[
                                InfoCard(title: "Allocation Account Name", value: product.warehouse.name),
                              ],
                              if (product.isViewOnly) ...[
                                ViewOnlyProductWidget(product: product),
                              ],
                              if (product.isConsignmentContract) ConsignmentContractProductWidget(product: product),
                              if (!isReturn && !product.isConsignmentContract && !product.isViewOnly) ...[
                                SaleProductEditableWidget(product: product, hasAction: hasAction),
                              ],
                              if (isReturn) ...[
                                ReturnProductWidget(product: product),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (product.isPromotionItem) ...[
                        Container(
                          decoration: whiteContainerDecoration,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const HeaderTextLarge("Promotion Details", color: brandColor),
                                const SizedBox(height: 20),
                                InfoCard(title: "Promotion Name", value: product.promotionInfo.promotionName),
                                InfoCard(title: "Stock Keeping Unit", value: product.promotionInfo.skulabel),
                                InfoCard(title: "Sale Range", value: '${product.promotionInfo.saleRangeFrom} - ${product.promotionInfo.saleRangeTo}'),
                                InfoCard(title: "Bonus", value: '${formatter.format(product.promotionInfo.bonus)} ${product.promotionInfo.bonusType.name}'),
                                InfoCard(title: "Cashback", value: '${formatter.format(product.promotionInfo.cashback)} ${product.promotionInfo.cashbackType.name}'),
                                InfoCard(title: "Item Back", value: product.promotionInfo.itemName),
                                InfoCard(title: "Number of Item Back", value: '${product.promotionInfo.itemQty} ${product.promotionInfo.itemUnitName}'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            if (hasAction && !isReturn && !product.isConsignmentContract && !product.isViewOnly) ...[
              Container(
                color: bgWhite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: ActionButton(
                    label: "Submit",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        final newProduct = ref.read(newProductNotifierProvider);

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
                                  return e == infoList.last;
                                }
                              } else {
                                // Check for Quantity range type
                                if (qty >= fromSaleRange && qty <= toSaleRange) {
                                  return true;
                                } else if (qty > toSaleRange) {
                                  return e == infoList.last;
                                }
                              }
                              return false;
                            },
                            orElse: () => Info.defaultValue(),
                          );

                          final existingPromotionInfo = newProduct.promotionInfo;
                          final updatedPromotionInfo = promotionInfo.copyWith(
                            promotionName: promotionDetail.promotionName,
                          );

                          // Update product only if promotionInfo actually changed
                          if (existingPromotionInfo != updatedPromotionInfo) {
                            ref.read(productListNotifierProvider.notifier).editProduct(newProduct.copyWith(promotionInfo: updatedPromotionInfo));
                          } else {
                            ref.read(productListNotifierProvider.notifier).editProduct(newProduct);
                          }
                        } else {
                          ref.read(productListNotifierProvider.notifier).editProduct(newProduct);
                        }

                        ref.invalidate(productNotifierProvider);
                        context.pop();
                      }
                    },
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class ViewOnlyProductWidget extends StatelessWidget {
  const ViewOnlyProductWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoCard(title: "Product Category Name", value: product.categoryName),
        InfoCard(title: "Pack Type", value: product.typeName),
        InfoCard(title: "Unit", value: product.unit.name),
        if (product.proposalQty != null) InfoCard(title: "Proposal Quantity", value: "${product.proposalQty}"),
        InfoCard(title: "Quantity", value: "${product.quantity}"),
      ],
    );
  }
}

class SaleProductEditableWidget extends HookConsumerWidget {
  const SaleProductEditableWidget({super.key, required this.product, required this.hasAction});
  final Product product;
  final bool hasAction;

  double baseUnitSalePrice(Product product) {
    if (product.unitTypes.isEmpty) return product.salePrice;

    final baseUnit = product.unitTypes.firstWhere(
      (u) => u.baseQty == 0,
      orElse: () => product.unitTypes.first,
    );

    final currentUnit = product.unitTypes.firstWhere(
      (u) => u.id == product.unit.id,
      orElse: () => baseUnit,
    );

    if (currentUnit.baseQty == 0) return product.salePrice;
    final conversionQty = currentUnit.baseQty == 0 ? 1 : currentUnit.baseQty;

    return product.salePrice / conversionQty;
  }

  String baseUnitName(Product product) {
    if (product.unitTypes.isEmpty) return product.unit.name;

    final baseUnit = product.unitTypes.firstWhere(
      (u) => u.baseQty == 0,
      orElse: () => product.unitTypes.first,
    );

    return baseUnit.name;
  }

  String unitConversionText(Product product) {
    if (product.unitTypes.isEmpty) return "";
    if (baseUnitName(product) == product.unit.name) {
      return "";
    } else {
      final currentUnit = product.unitTypes.firstWhere(
        (u) => u.id == product.unit.id,
        orElse: () => product.unitTypes.first,
      );
      return "1 ${product.unit.name} = ${currentUnit.baseQty} ${baseUnitName(product)}";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(newProductNotifierProvider.notifier);

    final qtyController = useTextEditingController(text: "${product.quantity}");
    final discountController = useTextEditingController(text: formatter.format(product.discountAmount));
    final amountController = useTextEditingController(text: formatter.format(product.amount));
    final taxController = useTextEditingController(text: formatter.format(product.taxAmount));
    final totalAmountController = useTextEditingController(text: formatter.format(product.totalAmount));

    final discountType = useState(product.discountType);
    final taxType = useState(product.taxType);

    // Initialize the notifier with current product
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        productNotifier.setProduct(product);
      });
      return null;
    }, []);

    void updateTotalAmount() {
      final taxFieldValue = taxController.text.toDouble();
      final discountFieldValue = discountController.text.toDouble();
      final qty = int.tryParse(qtyController.text) ?? 0;
      final salePrice = product.salePrice;
      final amount = amountController.text.toDouble();

      final discount = discountType.value == AmountOrPercentStatus.amount ? discountFieldValue : (discountFieldValue / 100) * salePrice;

      final tax = taxType.value == AmountOrPercentStatus.amount ? taxFieldValue : (taxFieldValue / 100) * amount;

      // For AMT discount type: apply discount once (total discount)
      // For PERCENT discount type: apply discount per unit (discount * qty)
      final totalDiscount = discountType.value == AmountOrPercentStatus.amount ? discount : (discount * qty);
      final totalAmount = amount + tax - totalDiscount;
      totalAmountController.text = formatter.format(totalAmount.round());
    }

    void updateAmount() {
      final quantity = int.tryParse(qtyController.text) ?? 0;

      final unit = product.unitTypes.where((element) => element.id == product.unit.id).firstOrNull;
      if (unit == null) return;
      final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;
      final updateAmount = baseQty * quantity * product.salePrice;
      amountController.text = formatter.format(updateAmount);
      updateTotalAmount();
    }

    useEffect(() {
      qtyController.addListener(updateAmount);
      return () => qtyController.removeListener(updateAmount);
    }, [qtyController]);

    useEffect(() {
      discountController.addListener(updateTotalAmount);
      return () => discountController.removeListener(updateTotalAmount);
    }, [discountController, discountType.value, taxType.value]);

    useEffect(() {
      taxController.addListener(updateTotalAmount);
      return () => taxController.removeListener(updateTotalAmount);
    }, [taxController, discountType.value, taxType.value]);

    // Recalculate when discount type changes
    useEffect(() {
      updateTotalAmount();
      return null;
    }, [discountType.value]);

    // Recalculate when tax type changes
    useEffect(() {
      updateTotalAmount();
      return null;
    }, [taxType.value]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (product.categoryName.isNotEmpty) InfoCard(title: "Product Category Name", value: product.categoryName),
        if (product.typeName.isNotEmpty) InfoCard(title: "Pack Type", value: product.typeName),
        InfoCard(title: "Unit", value: "${product.unit.name} (${unitConversionText(product)})"),
        InfoCard(
          title: "Sale Price",
          value: "${formatter.format(baseUnitSalePrice(product))} MMK / ${baseUnitName(product)}",
        ),
        if (product.availableQty > 0) ...[
          InfoCard(title: "Available Quantity", value: "${product.availableQty}"),
        ],
        if (hasAction) ...[
          const SizedBox(height: 10),
          FormTextInput(
            label: "Quantity",
            controller: qtyController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: FormValidators.productValidator(
              '${product.availableQty}',
              true,
              null,
              'Available',
            ),
            onChanged: (v) {
              if (v.isEmpty) return;
              final currentProduct = ref.read(newProductNotifierProvider);
              final salePromotion = currentProduct.promotionDetail;
              if (salePromotion.info.isEmpty) return;

              // Only update discount if a promotion matches the quantity
              for (final info in salePromotion.info) {
                if (int.parse(v) >= info.saleRangeFrom && int.parse(v) <= info.saleRangeTo) {
                  discountType.value = info.discountType;
                  discountController.text = formatter.format(info.discountAmount);
                  break;
                }
              }
              // Don't reset discount if no promotion matches - keep user's manual selection
            },
            onSaved: (v) => productNotifier.setQuantity(v),
          ),
          const SizedBox(height: 10),
        ] else ...[
          InfoCard(
            title: "Quantity",
            value: "${product.quantity}",
          ),
        ],
        if (hasAction) ...[
          const SizedBox(height: 10),
          FormTextInput(
            isReadOnly: true,
            fillColor: textFieldFillColor,
            textStyle: readOnlyTextStyle,
            controller: amountController,
            label: "Amount",
            onSaved: (v) => productNotifier.setAmount(v),
          ),
          const SizedBox(height: 10),
          FormTextInput(
            label: "Discount",
            keyboardType: TextInputType.number,
            controller: discountController,
            inputFormatters: textInputFormats(discountType.value),
            validator: (v) {
              if (v != null && v.isNotEmpty && discountType.value == AmountOrPercentStatus.amount) {
                final discountValue = v.toDouble();
                if (discountValue > product.salePrice) {
                  return "Discount amount cannot be greater than sale price";
                }
              }
              return null;
            },
            suffixicon: AmountOrPecentStatusWidget(
              isSelectable: true,
              onSelect: () {
                discountType.value = discountType.value.toggle;
                discountController.text = '';
              },
              selecetedType: discountType.value,
            ),
            onSaved: (v) {
              productNotifier.setDiscountType(discountType.value);
              productNotifier.setDiscount(v);
            },
          ),
          const SizedBox(height: 10),
          FormTextInput(
            label: "Tax",
            keyboardType: TextInputType.number,
            isReadOnly: true,
            controller: taxController,
            fillColor: textFieldFillColor,
            textStyle: readOnlyTextStyle,
            inputFormatters: textInputFormats(taxType.value),
            suffixicon: AmountOrPecentStatusWidget(
              isSelectable: false,
              onSelect: () {},
              selecetedType: taxType.value,
            ),
            onSaved: (v) {
              productNotifier.setTaxType(taxType.value);
              productNotifier.setTax(v);
            },
          ),
          const SizedBox(height: 10),
          FormTextInput(
            isReadOnly: true,
            fillColor: textFieldFillColor,
            textStyle: readOnlyTextStyle,
            label: "Total Amount",
            controller: totalAmountController,
            onSaved: (v) => productNotifier.setTotalAmount(totalAmountController.text),
          ),
        ] else ...[
          InfoCard(
            title: "Amount",
            value: formatter.format(amountController.text.toDouble()),
          ),
          InfoCard(
            title: "Discount",
            value: product.discountAmount == 0 ? "" : '${formatter.format(product.discountAmount)} ${product.discountType}',
          ),
          InfoCard(
            title: "Tax",
            value: product.taxAmount == 0 ? "" : "${formatter.format(product.taxAmount)} ${product.taxType}",
          ),
          InfoCard(
            title: "Total Amount",
            value: formatter.format(totalAmountController.text.toDouble()),
          ),
        ],
      ],
    );
  }
}

class SaleProductWidget extends StatelessWidget {
  const SaleProductWidget({super.key, required this.product});
  final Product product;

  double baseUnitSalePrice(Product product) {
    if (product.unitTypes.isEmpty) return product.salePrice;

    final baseUnit = product.unitTypes.firstWhere(
      (u) => u.baseQty == 0,
      orElse: () => product.unitTypes.first,
    );

    final currentUnit = product.unitTypes.firstWhere(
      (u) => u.id == product.unit.id,
      orElse: () => baseUnit,
    );

    if (currentUnit.baseQty == 0) return product.salePrice;
    final conversionQty = currentUnit.baseQty == 0 ? 1 : currentUnit.baseQty;

    return product.salePrice / conversionQty;
  }

  String baseUnitName(Product product) {
    if (product.unitTypes.isEmpty) return product.unit.name;

    final baseUnit = product.unitTypes.firstWhere(
      (u) => u.baseQty == 0,
      orElse: () => product.unitTypes.first,
    );

    return baseUnit.name;
  }

  String unitConversionText(Product product) {
    if (product.unitTypes.isEmpty) return "";
    if (baseUnitName(product) == product.unit.name) {
      return "";
    } else {
      final currentUnit = product.unitTypes.firstWhere(
        (u) => u.id == product.unit.id,
        orElse: () => product.unitTypes.first,
      );
      return "1 ${product.unit.name} = ${currentUnit.baseQty} ${baseUnitName(product)}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (product.categoryName.isNotEmpty) InfoCard(title: "Product Category Name", value: product.categoryName),
        if (product.typeName.isNotEmpty) InfoCard(title: "Pack Type", value: product.typeName),
        InfoCard(title: "Unit", value: "${product.unit.name} (${unitConversionText(product)})"),
        InfoCard(
          title: "Sale Price",
          value: "${formatter.format(baseUnitSalePrice(product))} MMK / ${baseUnitName(product)}",
        ),
        InfoCard(
          title: "Quantity",
          value: "${product.quantity}",
        ),
        InfoCard(
          title: "Amount",
          value: formatter.format(product.amount),
        ),
        InfoCard(
          title: "Discount",
          value: product.discountAmount == 0 ? "" : '${formatter.format(product.discountAmount)} ${product.discountType}',
        ),
        InfoCard(
          title: "Tax",
          value: product.taxAmount == 0 ? "" : "${formatter.format(product.taxAmount)} ${product.taxType}",
        ),
        InfoCard(
          title: "Total Amount",
          value: formatter.format(product.totalAmount),
        ),
      ],
    );
  }
}

class ConsignmentContractProductWidget extends StatelessWidget {
  const ConsignmentContractProductWidget({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoCard(title: "Product Category Name", value: product.categoryName),
        InfoCard(title: "Pack Type", value: product.typeName),
        InfoCard(title: "Unit", value: product.unit.name),
        InfoCard(title: "Sale Price", value: formatter.format(product.salePrice)),
        InfoCard(
          title: 'Consignment Contract Quantity',
          value: '${product.consignmentContractQty}',
        ),
        InfoCard(
          title: "Normal Discount",
          value: product.normalDiscount == 0 ? "" : '${formatter.format(product.normalDiscount)} ${product.normalDiscountType}',
        ),
        InfoCard(
          title: 'Consignment Contract Amount',
          value: '${product.consignmentContractAmount}',
        ),
      ],
    );
  }
}

class ReturnProductWidget extends StatelessWidget {
  const ReturnProductWidget({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoCard(title: "Unit", value: product.unit.name),
        InfoCard(title: "Sale Price", value: formatter.format(product.salePrice)),
        InfoCard(
          title: "Return Quantity",
          value: "${product.returnQty}",
        ),
        InfoCard(
          title: "Return Amount",
          value: formatter.format(product.returnAmount),
        ),
      ],
    );
  }
}
