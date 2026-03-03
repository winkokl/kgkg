import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';

class ReturnGiftItemFormScreen extends HookConsumerWidget {
  const ReturnGiftItemFormScreen({
    super.key,
    required this.giftItem,
    this.onUpdateGiftItem,
  });
  static final formKey = GlobalKey<FormState>();
  final GiftItem giftItem;
  final Function(GiftItem p)? onUpdateGiftItem;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final returnQtyController = useTextEditingController(text: giftItem.returnQty.toString());
    final reasonController = useTextEditingController(text: giftItem.returnReason);
    final isReadOnly = onUpdateGiftItem == null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isReadOnly ? 'Gift Item Details' : 'Edit Gift Item'),
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
                              label: "GiftItem Name",
                              isReadOnly: true,
                              initialValue: giftItem.productName.isEmpty ? giftItem.giftName : giftItem.productName,
                              fillColor: textFieldFillColor,
                              textStyle: readOnlyTextStyle,
                            ),
                            const SizedBox(height: 20),
                            if (giftItem.warehouseName.isNotEmpty) ...[
                              FormTextInput(
                                label: "Allocation Account",
                                isReadOnly: true,
                                initialValue: giftItem.warehouseName,
                                fillColor: textFieldFillColor,
                                textStyle: readOnlyTextStyle,
                              ),
                              const SizedBox(height: 20),
                            ],
                            FormTextInput(
                              label: "Return Qty",
                              isReadOnly: isReadOnly,
                              fillColor: isReadOnly ? textFieldFillColor : null,
                              textStyle: isReadOnly ? readOnlyTextStyle : null,
                              controller: returnQtyController,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              validator: FormValidators.numericValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Return Reason",
                              isReadOnly: isReadOnly,
                              fillColor: isReadOnly ? textFieldFillColor : null,
                              textStyle: isReadOnly ? readOnlyTextStyle : null,
                              controller: reasonController,
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
                      onUpdateGiftItem!(giftItem.copyWith(
                        returnQty: int.tryParse(returnQtyController.text) ?? 0,
                        returnReason: reasonController.text,
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
