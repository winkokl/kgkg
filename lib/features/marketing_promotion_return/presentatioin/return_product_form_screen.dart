import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';

class ReturnProductFormScreen extends HookConsumerWidget {
  const ReturnProductFormScreen({
    super.key,
    required this.product,
    this.onUpdateProduct,
  });
  static final formKey = GlobalKey<FormState>();
  final PromotionProduct product;
  final Function(PromotionProduct p)? onUpdateProduct;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final returnQtyController = useTextEditingController(text: product.returnQty.toString());
    final returnAmountController = useTextEditingController(text: product.returnAmount.toString());
    final returnReasonController = useTextEditingController(text: product.returnReason);
    final isReadOnly = onUpdateProduct == null;

    updateAmount() {
      final returnQty = int.tryParse(returnQtyController.text) ?? 0;
      final amount = product.price == 0 ? product.salePrice * returnQty : product.price * returnQty;
      // final normalDiscount = product.discountType == AmountOrPercentStatus.amount ? product.normalDiscount : (product.normalDiscount / 100) * amount;

      returnAmountController.text = formatter.format(amount);
    }

    useEffect(() {
      returnQtyController.addListener(updateAmount);
      return () => returnQtyController.removeListener(updateAmount);
    }, [returnQtyController]);

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
                            if (product.warehouseName.isNotEmpty) ...[
                              FormTextInput(
                                label: "Allocation Account",
                                isReadOnly: true,
                                initialValue: product.warehouseName,
                                fillColor: textFieldFillColor,
                                textStyle: readOnlyTextStyle,
                              ),
                              const SizedBox(height: 20),
                            ],
                            FormTextInput(
                              label: "Sale Price",
                              isReadOnly: true,
                              initialValue: formatter.format(product.price == 0 ? product.salePrice : product.price),
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
                              label: "Return Qty",
                              controller: returnQtyController,
                              isReadOnly: isReadOnly,
                              fillColor: isReadOnly ? textFieldFillColor : null,
                              textStyle: isReadOnly ? readOnlyTextStyle : null,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              validator: FormValidators.numericValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Return Amount",
                              isReadOnly: true,
                              controller: returnAmountController,
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Return Reason",
                              controller: returnReasonController,
                              maxlines: 4,
                              minlines: 3,
                              keyboardType: TextInputType.multiline,
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
                        returnQty: int.tryParse(returnQtyController.text) ?? 0,
                        returnReason: returnReasonController.text,
                        returnAmount: returnAmountController.text.toDouble(),
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
