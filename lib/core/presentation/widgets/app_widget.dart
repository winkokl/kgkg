import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({super.key});

  @override
  ConsumerState<AppWidget> createState() => AppWidgetState();
}

class AppWidgetState extends ConsumerState<AppWidget> {
  // final LocalAuthentication _localAuth = LocalAuthentication();
  // final bool _isAuthenticated = false;

  // Future<void> _authenticate() async {
  //   try {
  //     bool authenticated = await _localAuth.authenticate(
  //       localizedReason: 'Please authenticate to continue',
  //       options: const AuthenticationOptions(
  //         // biometricOnly: true,
  //         stickyAuth: true, // Keeps authentication active when switching apps
  //       ),
  //     );

  //     setState(() {
  //       _isAuthenticated = authenticated;
  //     });
  //   } on PlatformException catch (e) {
  //     print("Error during authentication: $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final appRouter = ref.watch(goRouterProvider);

    // ref.listen(isSessionExpiredNotifierProvider, (previous, isSessionExpired) {
    //   print('session $isSessionExpired');
    //   if (isSessionExpired) {
    //     CustomDialog.showFailureDialog(
    //       title: "Error",
    //       msg: "Session expired. Please login again.",
    //       onPressed: () => ref.read(authNotifierProvider.notifier).signOut(),
    //     );
    //   }
    // });

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Mg Kaung',
      theme: CustomTheme.appTheme,
      builder: ((context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              ),
            )
          ],
        );
      }),
      routerConfig: appRouter,
    );
  }
}
