import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/helpers/text_input_formatter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/file_picker_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_pad.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/async_secondary_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MakeSecondarySaleReturnPaymentScreen extends HookConsumerWidget {
  const MakeSecondarySaleReturnPaymentScreen({
    super.key,
    required this.secondarySaleReturnReceipt,
  });
  final SecondarySaleReturnReceipt secondarySaleReturnReceipt;
  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paidAmountController = useTextEditingController();
    final remarkController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final paymentReceiveDate = useState("");
    final signature = useState<File?>(null);
    final attachment = useState<File?>(null);
    final paymentMethod = useState(const PaymentMethod());

    ref.listenX(
      provider: asyncSecondarySaleReturnFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? '',
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const SecondarySaleReturnRoute().location);
        },
        printOnPressed: () async {
          final saleReceipt = res.data as SecondarySaleReturnReceipt;
          LoadingOverlay.show();
          await PrintServiceV2.excutePayment(
              context,
              PaymentPrintFormat(
                invoiceID: saleReceipt.invoiceCode,
                receiveDate: saleReceipt.paymentDate,
                receiveID: saleReceipt.code,
                paymentAmount: saleReceipt.paidAmount,
                paymentMethod: saleReceipt.paymentMethod.name,
              ));
          LoadingOverlay.hide();
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Make Payment"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: Container(
                  decoration: whiteContainerDecoration,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 20),
                          FormTextInput(
                            isReadOnly: true,
                            fillColor: textFieldFillColor,
                            textStyle: readOnlyTextStyle,
                            label: "Sale Return ID",
                            initialValue: secondarySaleReturnReceipt.code,
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Return Date *",
                            initialValue: prettierDateFormat(secondarySaleReturnReceipt.returnDate),
                            isReadOnly: true,
                            validator: FormValidators.requiredValidator.call(),
                            fillColor: textFieldFillColor,
                            textStyle: readOnlyTextStyle,
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Payment Date *",
                            hintText: "Select Date",
                            key: UniqueKey(),
                            isReadOnly: true,
                            initialValue: prettierDateFormat(paymentReceiveDate.value),
                            validator: FormValidators.requiredValidator.call(),
                            ontap: () async {
                              final selectedDate = await CustomDatePicker.datePicker(context, "", secondarySaleReturnReceipt.returnDate);
                              if (selectedDate != null) {
                                paymentReceiveDate.value = selectedDate;
                              }
                            },
                            suffixicon: const Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xffB4BCCC),
                            ),
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Payment Method *",
                            hintText: "Select Payment Method",
                            validator: FormValidators.requiredValidator().call,
                            key: UniqueKey(),
                            isReadOnly: true,
                            initialValue: paymentMethod.value.name,
                            ontap: () async {
                              await CustomPicker.modalSheetPicker<PaymentMethod>(
                                context: context,
                                onSelect: (v) => paymentMethod.value = v,
                                display: (v) => v.name,
                                currentValue: paymentMethod.value,
                                futureProvider: paymentMethodsProvider,
                                errorCallback: () => ref.invalidate(paymentMethodsProvider),
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Total Invoice Amount",
                            initialValue: formatter.format(secondarySaleReturnReceipt.totalReturnAmount),
                            isReadOnly: true,
                            fillColor: textFieldFillColor,
                            textStyle: readOnlyTextStyle,
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Balance",
                            initialValue: formatter.format(secondarySaleReturnReceipt.balance),
                            isReadOnly: true,
                            fillColor: textFieldFillColor,
                            textStyle: readOnlyTextStyle,
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Paid Amount *",
                            controller: paidAmountController,
                            inputFormatters: textInputFormats(null),
                            validator: (v) {
                              if (v == null || v.isEmpty) {
                                return "*This field is required";
                              } else if (double.parse(v) == 0) {
                                return "*Paid amount should not be zero";
                              } else if (v.toDouble() > secondarySaleReturnReceipt.balance) {
                                return "*Paid amount should be less than balance";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          FormTextInput(
                            label: "Description",
                            maxlines: 4,
                            minlines: 3,
                            controller: descriptionController,
                            keyboardType: TextInputType.multiline,
                          ),
                          const SizedBox(height: 20),
                          FilePickerWidget(onFileSelected: (v) => attachment.value = v),
                          const SizedBox(height: 20),
                          SignaturePad(
                            onSignatureGenerated: (errMsg, file) {
                              if (errMsg != null) {
                                CustomDialog.showFailureDialog(title: "Failed", msg: errMsg, onPressed: () => context.pop());
                                return;
                              }
                              signature.value = file;
                            },
                          )
                          // FormTextInput(
                          //   label: "Remark",
                          //   maxlines: 4,
                          //   minlines: 3,
                          //   controller: remarkController,
                          //   keyboardType: TextInputType.multiline,
                          // ),
                          // const SizedBox(height: 20),
                          // FormTextInput(
                          //   label: "Description",
                          //   maxlines: 4,
                          //   minlines: 3,
                          //   controller: descriptionController,
                          //   keyboardType: TextInputType.multiline,
                          // ),
                          // const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: bgWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: ActionButton(
                  label: "Submit",
                  onPressed: () {
                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      if (signature.value == null) {
                        CustomDialog.showFailureDialog(title: "Failed", msg: "No signature is found.", onPressed: () => context.pop());
                        return;
                      }
                      final newReceipt = secondarySaleReturnReceipt.copyWith(
                        paidAmount: paidAmountController.text.toDouble(),
                        remark: remarkController.text,
                        description: descriptionController.text,
                        paymentDate: paymentReceiveDate.value,
                        balance: secondarySaleReturnReceipt.balance,
                        paymentMethod: paymentMethod.value,
                      );
                      ref.read(asyncSecondarySaleReturnFormNotifierProvider.notifier).makePaymentReceive(attachment.value, signature.value!, newReceipt);
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
