import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/application/pin_code_notifier.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_appbar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_keyboard.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

class PinCodeScreen extends ConsumerWidget {
  const PinCodeScreen({
    super.key,
    required this.hasOperation,
    this.callback,
    this.isOldPinPrompt = false,
  });
  final bool hasOperation;
  final VoidCallback? callback;
  final bool isOldPinPrompt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinCodeState = ref.watch(pinCodeNotifierProvider(hasOperation));
    final pinCodeNotifier = ref.read(pinCodeNotifierProvider(hasOperation).notifier);

    ref.listen(pinCodeNotifierProvider(hasOperation), (previous, state) {
      if (state.errorMessage != null) {
        CustomDialog.showFailureDialog(
            title: "Failed",
            msg: state.errorMessage ?? "",
            onPressed: () {
              pinCodeNotifier.reset();
              context.pop();
            });
        return;
      }

      if (hasOperation && state.successMessage != null) {
        CustomDialog.showSuccessDialog(
          title: "Success",
          msg: state.successMessage ?? "",
          onPressed: () => ref.watch(goRouterProvider).popUntilPath(const SettingRoute().location),
        );
        return;
      }

      if (!hasOperation && state.successMessage != null) {
        if (callback != null) {
          callback?.call();
        } else {
          ref.watch(goRouterProvider).go(const HomeRoute().location);
        }
        return;
      }
    });

    return BackButtonListener(
      onBackButtonPressed: () async {
        if (!hasOperation && !isOldPinPrompt) {
          return Future.value(true);
        }

        if (hasOperation || isOldPinPrompt) {
          ref.watch(goRouterProvider).popUntilPath(const SettingRoute().location);
          return Future.value(true);
        }

        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: hasOperation || isOldPinPrompt
            ? AppBar(
                leading: CustomBackButton(
                onPressed: () => ref.watch(goRouterProvider).popUntilPath(const SettingRoute().location),
              ))
            : null,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),
              HeaderTextLarge(
                isOldPinPrompt
                    ? "Enter Current PIN"
                    : hasOperation
                        ? (pinCodeState.isConfirmingPin ? "Re-enter New PIN" : "Enter New PIN")
                        : (pinCodeState.isConfirmingPin ? "Re-enter PIN" : "Enter PIN"),
              ),
              HeaderTextSmall(
                isOldPinPrompt
                    ? "Please enter your current PIN to continue"
                    : hasOperation
                        ? (pinCodeState.isConfirmingPin ? "Please re-enter your new PIN to confirm" : "Please enter your new PIN")
                        : (pinCodeState.isConfirmingPin ? "Please re-enter your PIN to confirm" : "Please enter your PIN to continue"),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) {
                    final pinValue = pinCodeState.isConfirmingPin ? pinCodeState.renteredPin : pinCodeState.enteredPin;
                    return Container(
                      margin: const EdgeInsets.all(6.0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: textFieldFillColor,
                      ),
                      child: index < pinValue.length
                          ? const Center(
                              child: Text('*', style: TextStyle(fontSize: 17, color: black, fontWeight: FontWeight.w700)),
                            )
                          : null,
                    );
                  },
                ),
              ),
              const Spacer(),
              CustomKeyboard(
                onTextInput: (myText) => pinCodeNotifier.insertText(myText),
                onBackspace: pinCodeNotifier.backspace,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
