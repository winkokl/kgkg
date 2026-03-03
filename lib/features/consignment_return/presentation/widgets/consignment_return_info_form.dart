import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/consignment_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/widgets/show_consignment_contract_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';

class ConsignmentReturnInfoForm extends ConsumerWidget {
  const ConsignmentReturnInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consignmentReturnNotifier = ref.read(consignmentReturnFormNotifierProvider.notifier);

    final code = ref.watch(consignmentReturnFormNotifierProvider.select((value) => value.code));

    final returnDate = ref.watch(consignmentReturnFormNotifierProvider.select((value) => value.returnDate));

    final returnReason = ref.watch(consignmentReturnFormNotifierProvider.select((value) => value.returnReason));

    final consignmentContract = ref.watch(consignmentReturnFormNotifierProvider.select((value) => value.consignmentContract));

    final description = ref.watch(consignmentReturnFormNotifierProvider.select((value) => value.description));

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: whiteContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              if (code.isNotEmpty) ...[
                FormTextInput(
                  isReadOnly: true,
                  fillColor: textFieldFillColor,
                  textStyle: readOnlyTextStyle,
                  label: "Consignment Return ID",
                  initialValue: code,
                ),
                const SizedBox(height: 20),
              ],
              FormTextInput(
                label: "Consignment Contract *",
                hintText: "Select Consignment Contract ",
                key: UniqueKey(),
                isReadOnly: true,
                validator: FormValidators.requiredValidator().call,
                fillColor: isEdit ? textFieldFillColor : null,
                initialValue: consignmentContract.code,
                ontap: isEdit
                    ? null
                    : () async {
                        await showConsignmentContractSearchForm(context, (saleInvoice) {
                          consignmentReturnNotifier.setConsignmentContract(saleInvoice);
                          consignmentReturnNotifier.setReturnDate("");
                        });
                      },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Return Date *",
                hintText: "Select Date",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: prettierDateFormat(returnDate),
                fillColor: isEdit ? textFieldFillColor : null,
                suffixicon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffB4BCCC),
                ),
                validator: FormValidators.requiredValidator().call,
                // validator: FormValidators.dateBeforeValidator(consignmentContract.date, "Consignment Contract Date").call,
                ontap: isEdit
                    ? null
                    : () async {
                        final selectedDate = await CustomDatePicker.datePicker(context, "", consignmentContract.date);
                        if (selectedDate != null) {
                          consignmentReturnNotifier.setReturnDate(selectedDate);
                        }
                      },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Return Reason *",
                hintText: "Select Return Reason",
                validator: FormValidators.requiredValidator().call,
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: returnReason.name,
                fillColor: isEdit ? textFieldFillColor : null,
                ontap: isEdit
                    ? null
                    : () async {
                        await CustomPicker.modalSheetPicker<ReturnReason>(
                          context: context,
                          onSelect: (v) => consignmentReturnNotifier.setReturnReason(v),
                          display: (v) => v.name,
                          currentValue: returnReason,
                          futureProvider: returnReasonsProvider,
                          errorCallback: () => ref.invalidate(returnReasonsProvider),
                        );
                      },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Description ${returnReason.name.toLowerCase().contains("other") ? '*' : ''}",
                maxlines: 4,
                minlines: 3,
                initialValue: description,
                validator: returnReason.name.toLowerCase().contains("other") ? FormValidators.requiredValidator().call : null,
                keyboardType: TextInputType.multiline,
                onSaved: (v) => consignmentReturnNotifier.setDescription(v ?? ""),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
