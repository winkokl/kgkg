import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Change Password")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Form(
            key: formKey,
            child: Container(
              decoration: whiteContainerDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    FormTextInput(
                      hintText: 'Enter old password',
                      validator: FormValidators.requiredValidator().call,
                      controller: oldPasswordController,
                      label: "Old Password",
                    ),
                    const SizedBox(height: 20),
                    FormTextInput(
                      hintText: 'Enter new password',
                      validator: FormValidators.requiredValidator().call,
                      controller: newPasswordController,
                      label: "New Password",
                    ),
                    const SizedBox(height: 20),
                    FormTextInput(
                      hintText: 'Re-enter new password',
                      validator: (val) => FormValidators.passwordMatchValidator().validateMatch(val!, newPasswordController.text),
                      controller: confirmPasswordController,
                      label: "Confirm new password",
                    ),
                    const SizedBox(height: 40),
                    ActionButton(
                      label: "Change Password",
                      onPressed: () {
                        CustomDialog.showSuccessDialog(
                          title: "Successful Update!",
                          msg: "You have successful Updated Password.",
                          onPressed: () => context.pop(),
                        );
                        // if (formKey.currentState!.validate() == true) {}
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
