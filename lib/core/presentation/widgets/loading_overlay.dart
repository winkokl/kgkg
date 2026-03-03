import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/platform_utils.dart';

class LoadingOverlay {
  static OverlayEntry? _overlay;
  static bool _backButtonInterceptor(
    bool stopDefaultButtonEvent,
    RouteInfo routeInfo,
  ) =>
      true;

  static bool get overlayExists => _overlay != null;

  // static GlobalKey<NavigatorState> rootNavigatorKey =
  //     GlobalKey<NavigatorState>();

  // static void setRootNavigatorKey(GlobalKey<NavigatorState> key) {
  //   rootNavigatorKey = key;
  // }

  static void show([BuildContext? ctx, bool isShowSpinkit = true, Color? backgroundColor]) {
    final context = ctx ?? rootNavigatorKey.currentContext!;
    if (PlatformUtils.isMobile) {
      BackButtonInterceptor.add(_backButtonInterceptor);
    }
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => ColoredBox(
          color: backgroundColor ?? const Color(0x80000000),
          child: !isShowSpinkit
              ? null
              : const Center(
                  child: SpinKitChasingDots(color: bgWhite),

                  //  Material(
                  //   color: Colors.black26,
                  //   borderRadius: BorderRadius.all(Radius.circular(5)),
                  //   child: SizedBox(
                  //     height: 100,
                  //     width: 100,
                  //     child: Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 20),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           // SizedBox(
                  //           //   height: 25,
                  //           //   width: 25,
                  //           //   child: CircularProgressIndicator(
                  //           //     strokeWidth: 2,
                  //           //     valueColor: AlwaysStoppedAnimation(Colors.blue),
                  //           //   ),
                  //           // ),
                  //           // SizedBox(height: 10),
                  //           // Text(
                  //           //   'mgkaung_dms_mobile',
                  //           //   style: TextStyle(
                  //           //       fontSize: 14, color: bgColor),
                  //           // )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
        ),
      );
      Overlay.of(context).insert(_overlay!);
    }
  }

  static void hide() {
    if (PlatformUtils.isMobile) {
      BackButtonInterceptor.remove(_backButtonInterceptor);
    }
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }
}
