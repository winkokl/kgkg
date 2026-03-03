import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:mgkaung_dms_mobile/core/helpers/app_info.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            const Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  // SettingTitle(
                  //   iconData: Icons.lock_outline,
                  //   title: "Change PIN",
                  //   ontap: () => ref.watch(goRouterProvider).push(
                  //         const PinCodeRoute(hasOperation: false, isOldPinPrompt: true).location,
                  //         extra: () => ref.watch(goRouterProvider).push(const PinCodeRoute(hasOperation: true).location),
                  //       ),
                  // ),
                  // const Divider()
                ],
              ),
            )),
            ActionButton(
              label: "Log out",
              icon: const Icon(Icons.logout, color: Color(0xffF03D3D)),
              backgroundColor: bgWhite,
              onPressed: () => ref.read(authNotifierProvider.notifier).signOut(),
              foregroundColor: const Color(0xffF03D3D),
            ),
            const SizedBox(height: 10),
            Text(
              "v ${AppInfo.version}",
              textAlign: TextAlign.center,
              style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xff5F6367),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingTitle extends StatelessWidget {
  const SettingTitle({
    super.key,
    required this.iconData,
    required this.title,
    this.ontap,
  });
  final String title;
  final IconData iconData;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Icon(iconData, size: 20),
      title: HeaderText(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
