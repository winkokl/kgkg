import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/show_mpp_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReturnFormWidget extends ConsumerWidget {
  const ReturnFormWidget({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final returnFormNotifier = ref.watch(returnFormNotifierProvider.notifier);
    final promotion = ref.watch(returnFormNotifierProvider.select((value) => value.marketingPromotionPlan));
    final returnCode = ref.watch(returnFormNotifierProvider.select((value) => value.code));
    final returnDate = ref.watch(returnFormNotifierProvider.select((value) => value.returnDate));
    final description = ref.watch(returnFormNotifierProvider.select((value) => value.description));
    // final startDate = useState(prettierDateFormat(DateFormat(dateFormattedString).format(DateTime.now())));

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: whiteContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              if (returnCode.isNotEmpty) ...[
                FormTextInput(
                  isReadOnly: true,
                  fillColor: textFieldFillColor,
                  textStyle: readOnlyTextStyle,
                  label: "Return ID",
                  initialValue: returnCode,
                ),
                const SizedBox(height: 20),
              ],
              FormTextInput(
                isReadOnly: true,
                key: UniqueKey(),
                fillColor: isEdit ? textFieldFillColor : null,
                textStyle: isEdit ? readOnlyTextStyle : null,
                label: "Marketing Promotion ID *",
                hintText: "Select Marketing Promotion ID",
                initialValue: promotion.planCode,
                ontap: isEdit
                    ? null
                    : () => showMppSearchForm(context, (mpp) {
                          returnFormNotifier.setPromotion(mpp);
                          final updatedProducts = mpp.products.map((e) => e.copyWith(plannedQty: e.numberOfProduct)).toList();
                          final updatedGiftItems = mpp.giftItems.map((e) => e.copyWith(productId: e.giftItemId, plannedQty: e.numberOfGiftItem)).toList();
                          returnFormNotifier.setProducts(updatedProducts);
                          returnFormNotifier.setGiftItems(updatedGiftItems);
                        }),
                validator: FormValidators.requiredValidator().call,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Return Date *",
                hintText: "Select Date",
                key: UniqueKey(),
                isReadOnly: true,
                fillColor: isEdit || promotion.id == -1 ? textFieldFillColor : null,
                textStyle: isEdit ? readOnlyTextStyle : null,
                initialValue: prettierDateFormat(returnDate),
                suffixicon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffB4BCCC),
                ),
                validator: FormValidators.requiredValidator().call,
                ontap: (isEdit || promotion.id == -1)
                    ? null
                    : () async {
                        final selectedDate = await CustomDatePicker.datePicker(context, "", promotion.startDate);
                        if (selectedDate != null) {
                          returnFormNotifier.setReturnDate(selectedDate);
                        }
                      },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Description",
                maxlines: 4,
                minlines: 3,
                initialValue: description,
                keyboardType: TextInputType.multiline,
                onSaved: (v) => returnFormNotifier.setDescription(v ?? ""),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
