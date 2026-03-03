import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';

class InvoiceProductFormScreen extends HookConsumerWidget {
  const InvoiceProductFormScreen({
    super.key,
    required this.product,
    this.onUpdateProduct,
  });
  static final formKey = GlobalKey<FormState>();
  final PromotionProduct product;
  final Function(PromotionProduct p)? onUpdateProduct;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final netSalePriceController = useTextEditingController(text: product.netSalePrice.toString());
    final saleQtyController = useTextEditingController(text: product.saleQty.toString());
    final amountController = useTextEditingController(text: product.amount.toString());
    final isReadOnly = onUpdateProduct == null;

    updateAmount() {
      final netSalePrice = double.tryParse(netSalePriceController.text) ?? 0.0;
      final saleQty = int.tryParse(saleQtyController.text) ?? 0;
      final amount = netSalePrice * saleQty;
      final normalDiscount = product.discountType == AmountOrPercentStatus.amount ? product.normalDiscount : (product.normalDiscount / 100) * amount;

      amountController.text = formatter.format(amount - normalDiscount);
    }

    useEffect(() {
      netSalePriceController.addListener(updateAmount);
      return () => netSalePriceController.removeListener(updateAmount);
    }, [netSalePriceController]);

    useEffect(() {
      saleQtyController.addListener(updateAmount);
      return () => saleQtyController.removeListener(updateAmount);
    }, [saleQtyController]);

    return Scaffold(
      appBar: AppBar(
        title: Text(isReadOnly ? 'Product Details' : 'Edit Product'),
      ),
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
                    child: Container(
                      decoration: whiteContainerDecoration,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            FormTextInput(
                              label: "Product Name",
                              isReadOnly: true,
                              initialValue: product.productName,
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Plan Qty",
                              isReadOnly: true,
                              initialValue: '${product.requestedQty} (${product.unitName})',
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Requested Qty",
                              isReadOnly: true,
                              initialValue: '${product.baseQty} (${product.unitName})',
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Sale Price",
                              isReadOnly: true,
                              initialValue: formatter.format(product.salePrice),
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Normal Discount",
                              isReadOnly: true,
                              initialValue: '${product.normalDiscount} ${product.discountType.name}',
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Sale Qty",
                              controller: saleQtyController,
                              isReadOnly: isReadOnly,
                              fillColor: isReadOnly ? textFieldFillColor : null,
                              textStyle: isReadOnly ? readOnlyTextStyle : null,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              validator: FormValidators.numericValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Net Sale Price",
                              controller: netSalePriceController,
                              isReadOnly: isReadOnly,
                              fillColor: isReadOnly ? textFieldFillColor : null,
                              textStyle: isReadOnly ? readOnlyTextStyle : null,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              validator: FormValidators.numericValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Amount",
                              isReadOnly: true,
                              controller: amountController,
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ActionButton(
                  label: isReadOnly ? "Back" : "Submit",
                  onPressed: () {
                    if (isReadOnly) {
                      ref.watch(goRouterProvider).pop();
                      return;
                    }

                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      onUpdateProduct!(product.copyWith(
                        saleQty: int.tryParse(saleQtyController.text) ?? 0,
                        netSalePrice: netSalePriceController.text.toDouble(),
                        amount: amountController.text.toDouble(),
                      ));
                      ref.watch(goRouterProvider).pop();
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
