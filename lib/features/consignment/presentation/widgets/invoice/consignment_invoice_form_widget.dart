import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_invoice_form_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentInvoiceFormWidget extends ConsumerWidget {
  const ConsignmentInvoiceFormWidget({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleInvoiceNotifier = ref.watch(consignmentInvoiceFormNotifierProvider.notifier);

    final invoiceCode = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.code));

    // final paymentTerm = ref.watch(consignmentInvoiceFormNotifierProvider
    //     .select((value) => value.paymentTerm));

    final paymentType = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.paymentType));

    // final warehouse = ref.watch(consignmentInvoiceFormNotifierProvider
    //     .select((value) => value.warehouse));

    final consignmentCode = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.consignmentCode));

    final customer = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.customer));

    final businessUnit = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.businessUnit));

    final invoiceDate = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.invoiceDate));

    final dueDate = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.dueDate));

    final description = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.description));

    final paymentHistory = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.paymentReceivedHistory));

    final saleDate = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.saleDate));

    final region = ref.watch(consignmentInvoiceFormNotifierProvider.select((value) => value.region));

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: whiteContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              if (invoiceCode.isNotEmpty) ...[
                FormTextInput(
                  isReadOnly: true,
                  fillColor: textFieldFillColor,
                  textStyle: readOnlyTextStyle,
                  label: "Invoice ID",
                  initialValue: invoiceCode,
                ),
                const SizedBox(height: 20),
              ],
              FormTextInput(
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                label: "Consignment ID",
                initialValue: consignmentCode,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Invoice Date *",
                hintText: "Select Date",
                key: UniqueKey(),
                isReadOnly: true,
                fillColor: isEdit ? textFieldFillColor : null,
                textStyle: isEdit ? readOnlyTextStyle : null,
                initialValue: prettierDateFormat(invoiceDate),
                suffixicon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffB4BCCC),
                ),
                validator: FormValidators.requiredValidator().call,
                ontap: (!isEdit)
                    ? () async {
                        final selectedDate = await CustomDatePicker.datePicker(context, "", saleDate);
                        if (selectedDate != null) {
                          saleInvoiceNotifier.setInvoiceDate(selectedDate);
                        }
                      }
                    : null,
              ),
              const SizedBox(height: 20),

              FormTextInput(
                label: "Due Date *",
                hintText: "Select Date",
                key: UniqueKey(),
                initialValue: prettierDateFormat(dueDate),
                isReadOnly: true,
                suffixicon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffB4BCCC),
                ),
                validator: FormValidators.requiredValidator().call,
                ontap: () async {
                  final selectedDate = await CustomDatePicker.datePicker(context, "", invoiceDate);
                  if (selectedDate != null) {
                    saleInvoiceNotifier.setDueDate(selectedDate);
                  }
                },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Customer Name",
                hintText: "Select Customer Name",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: customer.name,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Business Unit Name",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: businessUnit.name,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Payment Type",
                hintText: "Select Payment Type",
                key: UniqueKey(),
                isReadOnly: true,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
                validator: FormValidators.requiredValidator().call,
                initialValue: paymentType.name,
                // ontap: () async {
                //   await CustomPicker.modalSheetPicker<PaymentType>(
                //     context: context,
                //     onSelect: (v) => saleInvoiceNotifier.setPaymentType(v),
                //     display: (v) => v.name,
                //     currentValue: paymentType,
                //     futureProvider: paymentTypesProvider,
                //     errorCallback: () => ref.invalidate(paymentTypesProvider),
                //   );
                // },
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Distribution Region *",
                hintText: "Select Distribution Region",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: region.name,
                fillColor: isEdit ? textFieldFillColor : null,
                validator: FormValidators.requiredValidator().call,
              ),
              const SizedBox(height: 20),
              // FormTextInput(
              //   label: "Payment Term",
              //   hintText: "Select Payment Term",
              //   key: UniqueKey(),
              //   initialValue: paymentTerm.name,
              //   isReadOnly: true,
              //   fillColor: textFieldFillColor,
              //   textStyle: readOnlyTextStyle,
              // ),
              // FormTextInput(
              //   label: "Warehouse",
              //   hintText: "Select Warehouse",
              //   key: UniqueKey(),
              //   isReadOnly: true,
              //   initialValue: warehouse.name,
              //   validator: FormValidators.requiredValidator().call,
              //   ontap: null,
              //   fillColor: textFieldFillColor,
              //   textStyle: readOnlyTextStyle,
              // ),
              // const SizedBox(height: 20),

              if (isEdit) ...[
                FormTextInput(
                  isReadOnly: true,
                  fillColor: textFieldFillColor,
                  textStyle: readOnlyTextStyle,
                  label: "Payment History",
                  initialValue: paymentHistory.isEmpty ? '0' : formatter.format(paymentHistory.map((e) => e.paymentReceiveAmount).reduce((value, element) => value + element)),
                  suffixicon: InkWell(
                    onTap: paymentHistory.isEmpty
                        ? null
                        : () => ref.watch(goRouterProvider).push(
                              const PaymentHistoryDetailRoute().location,
                              extra: paymentHistory
                                  .map((e) => PaymentReceipt(
                                        amount: e.paymentReceiveAmount,
                                        date: e.paymentReciveDate,
                                        code: e.code,
                                      ))
                                  .toList(),
                            ),
                    child: const Icon(Icons.history, size: 24, color: brandColor),
                  ),
                ),
                const SizedBox(height: 20),
              ],
              // FormTextInput(
              //   label: "Remark",
              //   maxlines: 4,
              //   minlines: 3,
              //   initialValue: remark,
              //   keyboardType: TextInputType.multiline,
              //   onSaved: (v) => saleInvoiceNotifier.setRemark(v ?? ""),
              // ),
              // const SizedBox(height: 20),
              FormTextInput(
                label: "Description",
                maxlines: 4,
                minlines: 3,
                initialValue: description,
                keyboardType: TextInputType.multiline,
                onSaved: (v) => saleInvoiceNotifier.setDescription(v ?? ""),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
