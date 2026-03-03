import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/dialog_content.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/dialog_header_text.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/dialog_icon_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/dialog_text.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomDialog {
  static Future showSuccessDialog({
    required String title,
    required String msg,
    VoidCallback? onPressed,
  }) async {
    final context = rootNavigatorKey.currentContext!;

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogContent(
        content: Column(
          children: [
            const DialogIconWidget(
              backgroundColor: brandColor,
              iconData: Icons.check,
            ),
            const SizedBox(height: 40),
            DialogHeaderText(title),
            const SizedBox(height: 16),
            DialogText(msg),
            const SizedBox(height: 80),
            SizedBox(
              width: 240,
              child: ActionButton(label: "Done", onPressed: onPressed),
            )
          ],
        ),
      ),
    );
  }

  static Future showFailureDialog({
    required String title,
    required String msg,
    VoidCallback? onPressed,
  }) async {
    final context = rootNavigatorKey.currentContext!;

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogContent(
        content: Column(
          children: [
            const DialogIconWidget(backgroundColor: errorColor, iconData: Icons.priority_high),
            const SizedBox(height: 40),
            DialogHeaderText(title, color: errorColor),
            const SizedBox(height: 16),
            DialogText(msg),
            const SizedBox(height: 80),
            SizedBox(
              width: 240,
              child: ActionButton(
                label: "OK",
                onPressed: onPressed,
                foregroundColor: errorColor,
                backgroundColor: const Color(0xffFFC8C8),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Future showAsyncDeleteConfirmationDialog<N extends AutoDisposeAsyncNotifier<Option<CustomResponse>>>({
    VoidCallback? onPressed,
    required void Function(CustomResponse res) onData,
    required AutoDisposeAsyncNotifierProvider<N, Option<CustomResponse>> provider,
  }) async {
    final context = rootNavigatorKey.currentContext!;

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Consumer(
        builder: (context, ref, child) {
          ref.listenX(provider: provider, onData: onData);

          return DialogContent(
            height: 440,
            content: Column(
              children: [
                const DialogIconWidget(backgroundColor: errorColor, iconData: Icons.priority_high),
                const SizedBox(height: 30),
                const DialogHeaderText("Confirmation", color: errorColor),
                const SizedBox(height: 10),
                const DialogText("Please make sure you want to Delete this Record."),
                const SizedBox(height: 60),
                SizedBox(
                  width: 240,
                  child: ActionButton(
                    label: "Delete",
                    onPressed: onPressed,
                    foregroundColor: errorColor,
                    backgroundColor: const Color(0xffFFC8C8),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 240,
                  child: ActionButton(
                    label: "Cancel",
                    onPressed: () => context.pop(),
                    foregroundColor: const Color(0xff7A7A7A),
                    backgroundColor: const Color(0xffEBEBEB),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  static Future showDeleteConfirmationDialog({
    VoidCallback? onPressed,
  }) async {
    final context = rootNavigatorKey.currentContext!;

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogContent(
        height: 440,
        content: Column(
          children: [
            const DialogIconWidget(backgroundColor: errorColor, iconData: Icons.priority_high),
            const SizedBox(height: 30),
            const DialogHeaderText("Confirmation", color: errorColor),
            const SizedBox(height: 10),
            const DialogText("Please make sure you want to Delete this Record."),
            const SizedBox(height: 60),
            SizedBox(
              width: 240,
              child: ActionButton(
                label: "Delete",
                onPressed: onPressed,
                foregroundColor: errorColor,
                backgroundColor: const Color(0xffFFC8C8),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 240,
              child: ActionButton(
                label: "Cancel",
                onPressed: () => context.pop(),
                foregroundColor: const Color(0xff7A7A7A),
                backgroundColor: const Color(0xffEBEBEB),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future showDeleteWitReasonDialog<N extends AutoDisposeAsyncNotifier<Option<CustomResponse>>>({
    required Function(String v) onPressed,
    required void Function(CustomResponse res) onData,
    required AutoDisposeAsyncNotifierProvider<N, Option<CustomResponse>> provider,
  }) async {
    final context = rootNavigatorKey.currentContext!;
    final reasonController = TextEditingController();
    final key = GlobalKey<FormState>();

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
            ref.listenX(provider: provider, onData: onData);
            return DialogContent(
              height: 440,
              content: Form(
                key: key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DialogIconWidget(
                      height: 35,
                      width: 35,
                      iconSize: 20,
                      backgroundColor: errorColor,
                      iconData: Icons.priority_high,
                    ),
                    const SizedBox(height: 10),
                    const DialogHeaderText("Confirmation", color: errorColor),
                    const SizedBox(height: 10),
                    const DialogText(
                      "Please make sure you want to Delete this Record. Please provide the reason below.",
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    FormTextInput(
                      validator: FormValidators.requiredValidator().call,
                      hintText: "Write a reason.",
                      controller: reasonController,
                      maxlines: 4,
                      minlines: 3,
                      keyboardType: TextInputType.multiline,
                    ),
                    const SizedBox(height: 20),
                    ActionButton(
                      label: "Delete",
                      onPressed: () {
                        if (key.currentState!.validate() == true) {
                          onPressed.call(reasonController.text);
                        }
                      },
                      foregroundColor: errorColor,
                      backgroundColor: const Color(0xffFFC8C8),
                    ),
                    const SizedBox(height: 10),
                    ActionButton(
                      label: "Cancel",
                      onPressed: () => context.pop(),
                      foregroundColor: const Color(0xff7A7A7A),
                      backgroundColor: const Color(0xffEBEBEB),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Future showDoneAndPrintDialog({
    VoidCallback? doneOnPressed,
    VoidCallback? printOnPressed,
    String msg = '',
  }) async {
    final context = rootNavigatorKey.currentContext!;

    return await showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogContent(
        height: 440,
        content: Column(
          children: [
            const DialogIconWidget(
              backgroundColor: brandColor,
              iconData: Icons.check,
            ),
            const SizedBox(height: 30),
            const DialogHeaderText("Success", color: brandColor),
            const SizedBox(height: 10),
            DialogText(msg),
            const SizedBox(height: 60),
            SizedBox(
              width: 240,
              child: ActionButton(
                label: "Done",
                onPressed: doneOnPressed,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 240,
              child: ActionButton(
                label: "Print",
                icon: const Icon(Icons.print_outlined, color: brandColor),
                onPressed: printOnPressed,
                foregroundColor: brandColor,
                backgroundColor: bgWhite,
                borderColor: brandColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
