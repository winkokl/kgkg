import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit_type.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/show_product_search_form.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';
import 'package:mgkaung_dms_mobile/features/product/application/async_scanned_product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_form_notifier.dart';

class ProductForm extends HookConsumerWidget {
  const ProductForm({
    super.key,
    this.isEdit = false,
    this.isReturn = false,
    this.product = const Product(),
  });
  final bool isEdit;
  final bool isReturn;
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(newProductNotifierProvider.notifier);
    // final productSalePriceStatus = ref.watch(productSalePriceStatusProvider);

    final productCodeController = useTextEditingController(text: isEdit ? "${product.prefix}${product.code}" : null);

    final productNameController = useTextEditingController(text: isEdit ? product.name : null);

    final apiLevelController = useTextEditingController(text: isEdit ? product.apiLevel : null);

    final availableQtyController = useTextEditingController(
      text: isEdit ? '${product.availableQty}' : null,
    );

    final contractQtyController = useTextEditingController(text: isEdit ? '${product.consignmentContractQty}' : null);

    final unitController = useTextEditingController(text: isEdit ? product.unit.name : null);

    final salePriceController = useTextEditingController(text: isEdit ? formatter.format(product.salePrice) : null);

    final qtyController = useTextEditingController(text: isEdit ? "${product.quantity}" : null);

    final normalDiscountController = useTextEditingController(text: formatter.format(product.normalDiscount ?? 0));

    final discountController = useTextEditingController(text: isEdit ? formatter.format(product.discountAmount) : null);

    final taxController = useTextEditingController(text: isEdit ? formatter.format(product.taxAmount) : null);

    final amountController = useTextEditingController(text: isEdit ? formatter.format(product.amount) : null);

    final totalAmountController = useTextEditingController(text: isEdit ? formatter.format(product.totalAmount) : null);

    final returnQtyController = useTextEditingController(text: isEdit ? "${product.returnQty}" : null);

    final returnAmountController = useTextEditingController(text: isEdit ? formatter.format(product.returnAmount) : null);

    final warehosueController = useTextEditingController(text: isEdit ? product.warehouse.name : null);

    final warehouse = useState(product.warehouse);
    final productId = useState(product.id);
    final unitTypes = useState(product.unitTypes);
    final oldAvailQty = useState('${product.availableQty}');
    final oldConsignemntContractQty = useState('${product.consignmentContractQty}');
    final discountType = useState(product.discountType);
    final taxType = useState(product.taxType);

    // final availableQty = useState("${product.availableQty}");

    ref.listen(productNotifierProvider, (previous, next) {
      if (isEdit) return;
      //
      productId.value = next.id;
      productCodeController.text = "${next.prefix}${next.code}";
      productNameController.text = next.name;
      apiLevelController.text = next.apiLevel;
      unitController.text = next.unit.name;
      salePriceController.text = formatter.format(next.secondarySalePrice);
      qtyController.text = next.quantity.toString();
      discountController.text = formatter.format(next.discountAmount);
      taxController.text = formatter.format(next.secondarySaleTax);
      taxType.value = next.secondarySaleTaxType;
      amountController.text = formatter.format(next.amount);
      totalAmountController.text = formatter.format(next.totalAmount);
      warehosueController.text = next.warehouse.name;
      availableQtyController.text = next.availableQty == 0 ? "" : "${next.availableQty}";
    });

    ref.listen(asyncAvailabeQtyNotifierProvider(isEdit), (previous, state) {
      state.unwrapPrevious().maybeWhen(
          orElse: () {},
          loading: () => LoadingOverlay.show(),
          data: (data) {
            LoadingOverlay.hide();
            final qty = data.fold(() => 0, (t) => t ?? 0);

            availableQtyController.text = "$qty";
            oldAvailQty.value = "$qty";
            productNotifier.setAvailableQuantity("$qty");
          },
          error: (e, stack) {
            LoadingOverlay.hide();
            availableQtyController.text = "0";
            oldAvailQty.value = "0";
            CustomDialog.showFailureDialog(
              title: "Error",
              msg: e.toString(),
              onPressed: () => context.pop(),
            );
          });
    });

    // ref.listen(userAssignWarehousesProvider)

    void updateTotalAmount() {
      final taxFieldValue = taxController.text.toDouble();
      final discountFieldValue = discountController.text.toDouble();
      final qty = int.tryParse(qtyController.text) ?? 0;
      final salePrice = salePriceController.text.toDouble();
      final amount = amountController.text.toDouble();

      final discount = discountType.value == AmountOrPercentStatus.amount ? discountFieldValue : (discountFieldValue / 100) * salePrice;

      final tax = taxType.value == AmountOrPercentStatus.amount ? taxFieldValue : (taxFieldValue / 100) * amount;

      final totalAmount = amount + tax - (discount * qty);
      totalAmountController.text = formatter.format(totalAmount.round());
    }

    void updateReturnAmount() {
      final quantity = int.tryParse(returnQtyController.text) ?? 0;
      final unit = unitTypes.value.where((element) => element.name == unitController.text).firstOrNull;
      if (unit == null) return;
      final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;
      final updateAmount = baseQty * quantity * salePriceController.text.toDouble();
      returnAmountController.text = formatter.format(updateAmount);
    }

    void updateAmount() {
      final quantity = int.tryParse(qtyController.text) ?? 0;
      // final unit = int.tryParse(unitController.text) ?? 0;

      // if (!isReturn && !product.isConsignment) {
      final unit = unitTypes.value.where((element) => element.name == unitController.text).firstOrNull;
      if (unit == null) return;
      final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;
      final updateAmount = baseQty * quantity * salePriceController.text.toDouble();
      amountController.text = formatter.format(updateAmount);
      if (isReturn) {
        updateReturnAmount();
      }
      updateTotalAmount();
      // } else {
      //   final updateAmount = quantity * salePriceController.text.toDouble();
      //   amountController.text = formatter.format(updateAmount);
      //   updateTotalAmount();
      // }
    }

    useEffect(() {
      if (!isEdit && (warehouse.value.id == -1 || (warehouse.value.name ?? '').isEmpty)) {
        // fetch assigned warehouses and pick the first as default
        ref.read(userAssignWarehousesProvider.future).then((list) {
          if (list.isNotEmpty) {
            final first = list.first;
            warehouse.value = first;
            warehosueController.text = first.name ?? '';
            productNotifier.setWarehouse(first);
            // no product selected yet; when user opens product search, this warehouse will be used
          }
        }).catchError((_) {
          // ignore -- leave default warehouse if fetch fails
        });
      }
      return null;
    }, const []);

    useEffect(() {
      qtyController.addListener(updateAmount);
      return () => qtyController.removeListener(updateAmount);
    }, [qtyController]);

    useEffect(() {
      discountController.addListener(updateTotalAmount);
      return () => discountController.removeListener(updateTotalAmount);
    }, [discountController]);

    useEffect(() {
      taxController.addListener(updateTotalAmount);
      return () => taxController.removeListener(updateTotalAmount);
    }, [taxController]);

    useEffect(() {
      returnQtyController.addListener(updateReturnAmount);
      return () => returnQtyController.removeListener(updateReturnAmount);
    }, [taxController]);

    updateAvailableQty() {
      final oldAvailableQty = int.tryParse(oldAvailQty.value) ?? 0;

      final unit = unitTypes.value.where((element) => element.name == unitController.text).firstOrNull;
      if (unit == null) return;
      final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;
      final updateQty = oldAvailableQty ~/ baseQty;

      availableQtyController.text = '$updateQty';
      productNotifier.setAvailableQuantity('$updateQty');

      if (product.isConsignment) {
        final oldContractQty = int.tryParse(oldConsignemntContractQty.value) ?? 0;
        final updateContractQty = oldContractQty ~/ baseQty;
        contractQtyController.text = '$updateContractQty';
      }
    }

    useEffect(() {
      void combinedListener() {
        updateAvailableQty();
        updateAmount();
      }

      unitController.addListener(combinedListener);

      return () => unitController.removeListener(combinedListener);
    }, [taxController]);

    return Container(
      decoration: whiteContainerDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            if (!isEdit)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderText("Add New Product", color: Color(0xff002C76)),
                  // TextButton(
                  //   child: const HeaderText('Clear', color: errorColor),
                  //   onPressed: () {
                  //     warehouse.value = const Warehouse();
                  //     unitTypes.value = [];
                  //     ref.invalidate(productNotifierProvider);
                  //   },
                  // )
                ],
              ),
            const SizedBox(height: 20),
            FormTextInput(
              key: UniqueKey(),
              autoFocus: true,
              maxlines: 1,
              minlines: 1,
              isReadOnly: true,
              // fillColor: textFieldFillColor,
              // textStyle: readOnlyTextStyle,
              controller: productCodeController,
              validator: FormValidators.requiredValidator.call(),
              label: "Product Code",
              hintText: "Select a product code",
              ontap: isEdit
                  ? null
                  : () {
                      showProductSearchForm(context, warehouse.value.id.toString(), (v) async {
                        final salePromotion = ref.watch(secondarySaleFormNotifierProvider).salePromotion;

                        final promotionDetail = salePromotion.details.firstWhere(
                          (detail) {
                            var isPromotionWithItemBack = detail.info.any((s) => s.item == v.id);
                            var isPromotionWithDiscount = detail.info.any((s) => s.discountAmount != null);
                            if (isPromotionWithItemBack) {
                              return true;
                            } else if (isPromotionWithDiscount) {
                              return true;
                            } else {
                              return false;
                            }
                          },
                          orElse: () => PromotionDetail.defaultValue(),
                        );
                        final isPromotionItem = promotionDetail != PromotionDetail.defaultValue();

                        final p = isPromotionItem
                            ? v.copyWith(
                                isPromotionItem: isPromotionItem,
                                promotionDetail: promotionDetail,
                              )
                            : v;
                        final productWarehouse = p.warehouse.id != -1
                            ? p.warehouse
                            : warehouse.value.id != -1
                                ? warehouse.value
                                : const Warehouse();
                        final productWithWarehouse = p.copyWith(warehouse: productWarehouse);
                        oldAvailQty.value = '${productWithWarehouse.availableQty}';
                        productNotifier.setAvailableQuantity(product.availableQty.toString());

                        ref.read(productNotifierProvider.notifier).setProduct(productWithWarehouse);
                        ref.read(newProductNotifierProvider.notifier).setProduct(productWithWarehouse);
                        productId.value = v.id;
                        unitTypes.value = v.unitTypes;

                        var selectedUnit = v.unitTypes.where((element) => element.baseQty == 0).firstOrNull;

                        if (selectedUnit != null) {
                          unitController.text = selectedUnit.name;
                          productNotifier.setUnit(Unit(id: selectedUnit.id, name: selectedUnit.name));
                        } else {
                          unitController.text = '';
                        }

                        availableQtyController.text = '${productWithWarehouse.availableQty}';
                      });
                    },
            ),
            const SizedBox(height: 20),
            FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Product Name",
              controller: productNameController,
            ),
            const SizedBox(height: 20),
            // if (!isReturn && !product.isTrip) ...[
            if (product.isConsignment || product.isTrip) ...[
              FormTextInput(
                label: "Allocation Account Name ${product.isConsignment ? '' : '*'}",
                hintText: "Select Allocation Account Name",
                // key: UniqueKey(),
                key: const Key('warehouse_field'),
                isReadOnly: true,
                // initialValue: product.isConsignment ? product.warehouse.name : null,
                controller: product.isConsignment ? null : warehosueController,
                // validator: product.isConsignment ? null : FormValidators.requiredValidator().call,
                ontap: product.isConsignment || productId.value == -1
                    ? null
                    : () async {
                        await CustomPicker.modalSheetPicker<Warehouse>(
                          context: context,
                          onSelect: (v) {
                            productNotifier.setWarehouse(v);
                            warehosueController.text = v.name;
                            ref.read(asyncAvailabeQtyNotifierProvider(isEdit).notifier).getProduct(productId.value, v.id);
                          },
                          display: (v) => v.name,
                          currentValue: product.warehouse,
                          futureProvider: userAssignWarehousesProvider,
                          errorCallback: () => ref.invalidate(userAssignWarehousesProvider),
                        );
                      },
              ),
              const SizedBox(height: 20),
            ] else if (!isReturn) ...[
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Allocation Account Name",
                controller: warehosueController,
              ),
              const SizedBox(height: 20),
            ],
            if (product.isConsignment) ...[
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Consignment Contract Quantity",
                controller: contractQtyController,
              ),
              const SizedBox(height: 20),
            ],
            if (!isReturn && product.consignmentMethod != ConsignmentMethod.terminationProcess) ...[
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Available Quantity",
                // initialValue: product.isConsignment
                //     ? '${product.consignmentContractQty}'
                //     : product.isTrip
                //         ? '${product.availableQty}'
                //         : null,
                // controller: product.isConsignment || product.isTrip ? null : availableQtyController,
                controller: availableQtyController,
                onSaved: product.isConsignment || product.isTrip ? null : (v) => productNotifier.setAvailableQuantity(product.availableQty.toString()),
              ),
              const SizedBox(height: 20),
            ],
            if (!isReturn && product.normalDiscountType != null) ...[
              FormTextInput(
                label: "Normal Discount",
                isReadOnly: true,
                keyboardType: TextInputType.number,
                controller: normalDiscountController,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                inputFormatters: textInputFormats(product.normalDiscountType),
                suffixicon: AmountOrPecentStatusWidget(
                  isSelectable: false,
                  onSelect: () {},
                  selecetedType: product.normalDiscountType!,
                ),
                onSaved: (v) {},
              ),
              const SizedBox(height: 20),
            ],
            FormTextInput(
              isReadOnly: true,
              // fillColor: !isReturn && product.isConsignment ? textFieldFillColor : null,
              // textStyle: !isReturn && product.isConsignment ? readOnlyTextStyle : null,
              label: "Unit",
              controller: unitController,
              ontap: () {
                final currentUnit = unitTypes.value.where((element) => element.id == product.unit.id).firstOrNull ?? const UnitType();

                return CustomPicker.modalSheetPicker<UnitType>(
                  context: context,
                  data: unitTypes.value,
                  onSelect: (v) {
                    unitController.text = v.name;
                    productNotifier.setUnit(Unit(id: v.id, name: v.name));
                  },
                  display: (v) => v.name,
                  currentValue: currentUnit,
                );
              },
            ),
            const SizedBox(height: 20),
            FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Sale Price",
              controller: salePriceController,
              onSaved: (v) => productNotifier.setSalePrice(v),
            ),
            const SizedBox(height: 20),
            if (!isReturn) ...[
              FormTextInput(
                label: "Quantity",
                isReadOnly: isReturn,
                validator: FormValidators.productValidator(
                  // product.isConsignment
                  //     ? '${product.consignmentContractQty}'
                  //     : !product.isTrip
                  //         ? '${product.availableQty}'
                  //         : useValueListenable(availableQtyController).text,
                  product.isConsignment ? useValueListenable(contractQtyController).text : useValueListenable(availableQtyController).text,
                  !isReturn,
                  product.isConsignment && product.consignmentMethod == ConsignmentMethod.stockRefill ? '${product.availableQty}' : null,
                  product.isConsignment && product.consignmentMethod == ConsignmentMethod.stockRefill && product.availableQty < 0 ? null : 'Contract',
                ),
                keyboardType: TextInputType.number,
                fillColor: isReturn ? textFieldFillColor : null,
                textStyle: isReturn ? readOnlyTextStyle : null,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: qtyController,
                onChanged: (v) {
                  final currentProduct = ref.read(newProductNotifierProvider);
                  final salePromotion = currentProduct.promotionDetail;
                  if (salePromotion.info.isEmpty) return;

                  bool promotionApplied = false;
                  for (final info in salePromotion.info) {
                    if (int.parse(v) >= info.saleRangeFrom && int.parse(v) <= info.saleRangeTo) {
                      discountType.value = info.discountType;
                      discountController.text = formatter.format(info.discountAmount);
                      promotionApplied = true;
                      break;
                    }
                  }

                  if (!promotionApplied) {
                    discountController.text = formatter.format(currentProduct.normalDiscount ?? 0);
                    discountType.value = currentProduct.normalDiscountType ?? AmountOrPercentStatus.amount;
                  }

                  productNotifier.setAvailableQuantity(availableQtyController.text);
                },
                onSaved: (v) => productNotifier.setQuantity(v),
              ),
              const SizedBox(height: 20),
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                controller: amountController,
                label: "Amount",
                onSaved: (v) => productNotifier.setAmount(v),
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Discount",
                isReadOnly: isReturn,
                keyboardType: TextInputType.number,
                controller: discountController,
                fillColor: isReturn ? textFieldFillColor : null,
                textStyle: isReturn ? readOnlyTextStyle : null,
                inputFormatters: textInputFormats(discountType.value),
                suffixicon: AmountOrPecentStatusWidget(
                  isSelectable: !isReturn,
                  onSelect: () {
                    discountType.value = discountType.value.toggle;
                    // ref.read(discountTypeNotifierProvider.notifier).toggle();
                    discountController.text = '';
                  },
                  selecetedType: discountType.value,
                ),
                onSaved: (v) {
                  productNotifier.setDiscountType(discountType.value);
                  productNotifier.setDiscount(v);
                },
              ),
              const SizedBox(height: 20),
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
                  onSelect: () {
                    // taxType.value = taxType.value.toggle;
                    // // ref.read(taxTypeNotifierProvider.notifier).toggle();
                    // taxController.text = "";
                  },
                  selecetedType: taxType.value,
                ),
                onSaved: (v) {
                  productNotifier.setTaxType(taxType.value);
                  productNotifier.setTax(v);
                },
              ),
              const SizedBox(height: 20),
            ],
            if (product.isTrip) ...[
              FormTextInput(
                label: "Allocation Account Name",
                hintText: "Select Allocation Account Name",
                key: UniqueKey(),
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                initialValue: warehouse.value.name,
                validator: FormValidators.requiredValidator().call,
                // ontap: () async {
                //   await CustomPicker.modalSheetPicker<Warehouse>(
                //     context: context,
                //     onSelect: (v) {
                //       warehouse.value = v;
                //       productNotifier.setWarehouse(v);
                //     },
                //     display: (v) => v.name,
                //     currentValue: product.warehouse,
                //     futureProvider: warehousesProvider,
                //     errorCallback: () => ref.invalidate(warehousesProvider),
                //   );
                // },
              ),
              const SizedBox(height: 20),
            ],
            if (!isReturn) ...[
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Total Amount",
                controller: totalAmountController,
                onSaved: (v) => productNotifier.setTotalAmount(totalAmountController.text),
              ),
              const SizedBox(height: 20),
            ],
            if (isReturn) ...[
              FormTextInput(
                label: "Available Return Quantity",
                initialValue: '${product.availableReturnQty}',
                isReadOnly: true,
                fillColor: textFieldFillColor,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Return Quantity",
                controller: returnQtyController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) {
                  if (v != null && product.availableReturnQty < int.parse(v)) {
                    return "Return Quantity should be less than available quantity";
                  }
                  return null;
                },
                onSaved: (v) => productNotifier.setReturnQty(returnQtyController.text),
              ),
              const SizedBox(height: 20),
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Return Amount",
                controller: returnAmountController,
                onSaved: (v) => productNotifier.setReturnAmount(returnAmountController.text),
              ),
              const SizedBox(height: 20),
            ]
          ],
        ),
      ),
    );
  }
}
