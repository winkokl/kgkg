import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';

class SignInForm extends HookConsumerWidget {
  const SignInForm({super.key});
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordVisible = useState(false);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormTextInput(
            hintText: 'Username',
            validator: FormValidators.requiredValidator().call,
            controller: emailController,
            borderColor: bgWhite,
            focusBorderColor: const Color(0xffBFDBFE),
          ),
          const SizedBox(height: 20),
          FormTextInput(
            hintText: 'Password',
            secure: !passwordVisible.value,
            maxlines: 1,
            validator: FormValidators.requiredValidator().call,
            controller: passwordController,
            borderColor: bgWhite,
            focusBorderColor: const Color(0xffBFDBFE),
            suffixicon: InkWell(
              onTap: () => passwordVisible.value = !passwordVisible.value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xff5F6367),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ActionButton(
            label: 'Log In',
            onPressed: () {
              // CustomDialog.showFailureDialog(
              //     title: "Failure", msg: "You must log in");
              if (_formKey.currentState!.validate()) {
                FocusManager.instance.primaryFocus!.unfocus();
                ref.read(authNotifierProvider.notifier).signIn(emailController.text.trim(), passwordController.text);
              }
            },
          ),
        ],
      ),
    );
  }
}
