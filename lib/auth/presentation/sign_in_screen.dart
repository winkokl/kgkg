import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:mgkaung_dms_mobile/auth/presentation/widgets/sign_in_form.dart';
import 'package:mgkaung_dms_mobile/core/helpers/app_info.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/logo_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (_, state) {
      state.maybeWhen(
        loading: () => LoadingOverlay.show(),
        data: (auth) {
          ref.read(isLoginProvider.notifier).setIsLogin(true);
          LoadingOverlay.hide();
        },
        error: (err, stack) {
          LoadingOverlay.hide();
          CustomDialog.showFailureDialog(
            title: "Failed",
            msg: err.toString(),
            onPressed: () => context.pop(),
          );
        },
        orElse: () {},
      );
    });

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 50),
                          const LogoImage(),
                          const SizedBox(height: 30),
                          const SignInForm(),
                          const SizedBox(height: 10),
                          Text(
                            "v ${AppInfo.version}",
                            textAlign: TextAlign.center,
                            style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
                              color: const Color(0xff5F6367),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Powered By",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: Image.asset('assets/images/logo_edkainnovationlab.png'),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
