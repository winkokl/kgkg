import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/secondary_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/widgets/show_secondary_sale_return_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleReturnInfoForm extends ConsumerWidget {
  const SecondarySaleReturnInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final secondarySaleReturnNotifier = ref.read(secondarySaleReturnFormNotifierProvider.notifier);

    final code = ref.watch(secondarySaleReturnFormNotifierProvider.select((value) => value.code));

    final returnDate = ref.watch(secondarySaleReturnFormNotifierProvider.select((value) => value.returnDate));

    final secondarySaleInvoice = ref.watch(secondarySaleReturnFormNotifierProvider.select((value) => value.secondarySaleInvoice));

    final returnReason = ref.watch(secondarySaleReturnFormNotifierProvider.select((value) => value.returnReason));

    final description = ref.watch(secondarySaleReturnFormNotifierProvider.select((value) => value.description));

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
                  label: "Sale Return ID",
                  initialValue: code,
                ),
                const SizedBox(height: 20),
              ],
              FormTextInput(
                label: "Sale Invoice ID *",
                hintText: "Select Invoice ID",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: secondarySaleInvoice.code,
                validator: FormValidators.requiredValidator().call,
                ontap: isEdit
                    ? null
                    : () async {
                        await showSecondarySaleInvoiceSearchForm(context, (saleInvoice) {
                          secondarySaleReturnNotifier.setSecondarySaleInvoice(saleInvoice);
                          secondarySaleReturnNotifier.setReturnDate("");
                        });
                      },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Return Date *",
                hintText: "Select Date",
                key: UniqueKey(),
                isReadOnly: true,
                fillColor: isEdit ? textFieldFillColor : null,
                initialValue: prettierDateFormat(returnDate),
                suffixicon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffB4BCCC),
                ),
                validator: FormValidators.requiredValidator().call,
                // validator: FormValidators.dateBeforeValidator(secondarySaleInvoice.invoiceDate, "Invoice Date").call,
                ontap: isEdit
                    ? null
                    : () async {
                        final selectedDate = await CustomDatePicker.datePicker(context, returnDate, secondarySaleInvoice.invoiceDate);
                        if (selectedDate != null) {
                          secondarySaleReturnNotifier.setReturnDate(selectedDate);
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
                          onSelect: (v) => secondarySaleReturnNotifier.setReturnReason(v),
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
                keyboardType: TextInputType.multiline,
                validator: returnReason.name.toLowerCase().contains("other") ? FormValidators.requiredValidator().call : null,
                onSaved: (v) => secondarySaleReturnNotifier.setDescription(v ?? ""),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
