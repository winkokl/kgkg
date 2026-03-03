import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/qty_and_unit.dart';

Future<void> showQtyDialog<T extends QtyAndUnit>(
  BuildContext context,
  T item,
  Function(T) callBack, {
  String title = "Update Current Qty",
}) async {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: bgColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.7,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) {
          return QtyForm<T>(item: item, callBack: callBack, title: title);
        },
      ),
    ),
  );
}

class QtyForm<T extends QtyAndUnit> extends HookConsumerWidget {
  const QtyForm({
    super.key,
    required this.item,
    required this.callBack,
    required this.title,
  });

  final T item;
  final Function(T updatedItem) callBack;
  final String title;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentQty = useTextEditingController(text: '${item.currentQty}');
    final unit = useState<PromotionProductUnit?>(item.currentQtyUnit);
    final unitController = useTextEditingController(text: item.currentQtyUnit?.label);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    HeaderTextLarge(title),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: constraints.maxHeight),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                FormTextInput(
                                  label: "Current Qty",
                                  hintText: "Enter Current Qty",
                                  controller: currentQty,
                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                  validator: FormValidators.productValidator('${item.requestedQty}', true, null, 'Plan'),
                                ),
                                const SizedBox(height: 20),
                                FormTextInput(
                                  isReadOnly: true,
                                  label: "Unit",
                                  hintText: "Select Unit",
                                  validator: FormValidators.requiredValidator().call,
                                  controller: unitController,
                                  ontap: () async => await CustomPicker.modalSheetPicker<PromotionProductUnit>(
                                    context: context,
                                    data: item.convertedUnits,
                                    onSelect: (v) {
                                      unit.value = v;
                                      unitController.text = v.label;
                                    },
                                    display: (v) => v.label,
                                    currentValue: unit.value ?? const PromotionProductUnit(),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: ActionButton(
                                    label: "Done",
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        callBack(item.qtyAmdUnitcopyWith(
                                          currentQty: int.parse(currentQty.text),
                                          currentQtyUnit: unit.value!,
                                        ) as T);
                                        Navigator.of(context).pop();
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
