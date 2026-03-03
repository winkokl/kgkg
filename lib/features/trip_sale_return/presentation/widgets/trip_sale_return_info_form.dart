import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/show_trip_sale_request_search_form.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/trip_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/widgets/show_trip_sale_return_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleReturnInfoForm extends ConsumerWidget {
  const TripSaleReturnInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripSaleReturnNotifier = ref.read(tripSaleReturnFormNotifierProvider.notifier);

    final code = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.code));

    final returnDate = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.returnDate));

    final returnReason = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.returnReason));

    final tripSaleInvoice = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.tripSaleInvoice));

    final tripSaleRequest = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.tripSaleRequest));

    final description = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.description));

    final returnMode = ref.watch(tripSaleReturnFormNotifierProvider.select((value) => value.returnType));

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: whiteContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: isEdit ? null : () => tripSaleReturnNotifier.setReturnType(1),
                    child: SizedBox(
                      width: 120,
                      child: Row(
                        children: [
                          Radio<int>(
                            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                            value: 1,
                            groupValue: returnMode,
                            onChanged: (index) {},
                          ),
                          const Expanded(child: Text('Sale Invoice')),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: isEdit ? null : () => tripSaleReturnNotifier.setReturnType(2),
                    child: SizedBox(
                      width: 120,
                      child: Row(
                        children: [
                          Radio<int>(
                            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                            value: 2,
                            groupValue: returnMode,
                            onChanged: (index) {},
                          ),
                          const Expanded(child: Text('Sale Request')),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              if (code.isNotEmpty) ...[
                FormTextInput(
                  isReadOnly: true,
                  fillColor: textFieldFillColor,
                  textStyle: readOnlyTextStyle,
                  label: "Trip Sale Return ID",
                  initialValue: code,
                ),
                const SizedBox(height: 20),
              ],
              FormTextInput(
                label: returnMode == 1 ? "Trip Sale Invoice ID *" : "Trip Sale Request ID *",
                hintText: returnMode == 1 ? "Select Trip Sale Invoice ID" : "Select Trip Sale Ruquest",
                key: UniqueKey(),
                isReadOnly: true,
                validator: FormValidators.requiredValidator().call,
                initialValue: returnMode == 1 ? tripSaleInvoice.code : tripSaleRequest.tripSaleRequestCode,
                fillColor: isEdit ? textFieldFillColor : null,
                ontap: isEdit
                    ? null
                    : () async {
                        returnMode == 1
                            ? await showTripSaleInvoiceSearchForm(
                                context,
                                (saleInvoice) {
                                  tripSaleReturnNotifier.setTripSaleInvoice(saleInvoice);
                                  tripSaleReturnNotifier.setReturnDate("");
                                },
                              )
                            : await showTripSaleRequestSearchForm(
                                context,
                                (tripSaleRequest) {
                                  tripSaleReturnNotifier.setTripSaleRequest(tripSaleRequest);
                                  tripSaleReturnNotifier.setReturnDate("");
                                },
                              );
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
                // validator: FormValidators.dateBeforeValidator(returnMode == 1 ? tripSaleInvoice.invoiceDate : tripSaleRequest.date, returnMode == 1 ? "Invoice Date" : "Trip Sale Request Date").call,
                ontap: isEdit
                    ? null
                    : () async {
                        final selectedDate = await CustomDatePicker.datePicker(context, returnDate, returnMode == 1 ? tripSaleInvoice.invoiceDate : tripSaleRequest.date);
                        if (selectedDate != null) {
                          tripSaleReturnNotifier.setReturnDate(selectedDate);
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
                          onSelect: (v) => tripSaleReturnNotifier.setReturnReason(v),
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
                onSaved: (v) => tripSaleReturnNotifier.setDescription(v ?? ""),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
