import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InvoiceFormWidget extends ConsumerWidget {
  const InvoiceFormWidget({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleInvoiceNotifier = ref.watch(invoiceFormNotifierProvider.notifier);
    final invoiceCode = ref.watch(invoiceFormNotifierProvider.select((value) => value.code));
    final promotion = ref.watch(invoiceFormNotifierProvider.select((value) => value.marketingPromotionPlan));
    final invoiceDate = ref.watch(invoiceFormNotifierProvider.select((value) => value.invoiceDate));
    final dueDate = ref.watch(invoiceFormNotifierProvider.select((value) => value.dueDate));
    final description = ref.watch(invoiceFormNotifierProvider.select((value) => value.description));
    final customer = ref.watch(invoiceFormNotifierProvider.select((value) => value.marketingPromotionPlan.customerName));
    final businessUnit = ref.watch(invoiceFormNotifierProvider.select((value) => value.marketingPromotionPlan.businessUnitName));
    final paymentHistory = ref.watch(invoiceFormNotifierProvider.select((value) => value.paymentReceivedHistory));
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
                label: "Promotion ID",
                initialValue: promotion.planCode,
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
                        final selectedDate = await CustomDatePicker.datePicker(context, "", promotion.startDate);
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
                initialValue: customer,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Business Unit Name",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: businessUnit,
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Eligible Duration for Bonus",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: '${promotion.bonusDuration}',
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
              FormTextInput(
                label: "Eligible Duration for Cashback",
                key: UniqueKey(),
                isReadOnly: true,
                initialValue: '${promotion.cashbackDuration}',
                fillColor: textFieldFillColor,
                textStyle: readOnlyTextStyle,
              ),
              const SizedBox(height: 20),
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
