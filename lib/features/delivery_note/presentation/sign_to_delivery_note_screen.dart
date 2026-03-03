import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/application/async_delivery_note_notifier.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/file_picker_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_pad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignToDeliveryNoteScreen extends HookConsumerWidget {
  const SignToDeliveryNoteScreen({
    super.key,
    required this.deliveryNote,
  });
  final DeliveryNote deliveryNote;
  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryNoteCompleteDate = useState("");
    final descriptionController = useTextEditingController();
    final signature = useState<File?>(null);
    final attachment = useState<File?>(null);

    ref.listenX(
      provider: asyncDeliveryNoteFormNotifierProvider,
      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const DeliveryNoteRoute().location),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Delivery Note"),
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
                            label: "Delivery Note Complete Date *",
                            hintText: "Select Date",
                            key: UniqueKey(),
                            isReadOnly: true,
                            initialValue: prettierDateFormat(deliveryNoteCompleteDate.value),
                            validator: FormValidators.requiredValidator().call,
                            ontap: () async {
                              final selectedDate = await CustomDatePicker.datePicker(context, "", deliveryNote.invoiceDate);
                              if (selectedDate != null) {
                                deliveryNoteCompleteDate.value = selectedDate;
                              }
                            },
                            suffixicon: const Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xffB4BCCC),
                            ),
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
                      ref.read(asyncDeliveryNoteFormNotifierProvider.notifier).signDeliveryNote(
                            attachment.value,
                            signature.value!,
                            deliveryNoteCompleteDate.value,
                            descriptionController.text,
                            deliveryNote.id,
                          );
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
