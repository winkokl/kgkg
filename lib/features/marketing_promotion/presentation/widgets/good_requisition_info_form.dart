import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/good_requisition_form_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodRequisitionInfoForm extends HookConsumerWidget {
  const GoodRequisitionInfoForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(goodRequisitionFormNotifierProvider.notifier);

    final promotionName = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.marketingPromotionPlanName));
    final customerName = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.customerName));
    final businessUniNmae = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.businessUnit));
    final startDate = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.startDate));
    final endDate = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.endDate));
    final requisitionDate = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.goodRequisitionDate));

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: whiteContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Promotion Name",
                initialValue: promotionName,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Requisition Date",
                key: UniqueKey(),
                initialValue: prettierDateFormat(requisitionDate),
                ontap: () async {
                  final selectedDate = await CustomDatePicker.datePicker(context, "", startDate, endDate);
                  if (selectedDate != null) {
                    saleNotifier.setGoodRequisitionDate(selectedDate);
                  }
                },
                validator: FormValidators.requiredValidator().call,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Customer Name",
                isReadOnly: true,
                initialValue: customerName,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Business Unit",
                isReadOnly: true,
                initialValue: businessUniNmae,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Start Date",
                isReadOnly: true,
                initialValue: prettierDateFormat(startDate),
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "End Date",
                isReadOnly: true,
                initialValue: prettierDateFormat(endDate),
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
