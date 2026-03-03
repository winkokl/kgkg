part of '../router.dart';

@TypedGoRoute<NotFoundRoute>(path: '/404')
class NotFoundRoute extends GoRouteData {
  const NotFoundRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => FadeTransitionPage(state.pageKey, NotFoundScreen(uri: state.extra as String? ?? ''));
}

@TypedGoRoute<NoPermissionRoute>(path: '/no-permission')
class NoPermissionRoute extends GoRouteData {
  const NoPermissionRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => FadeTransitionPage(state.pageKey, const PermissionDeniedScreen());
}

@TypedGoRoute<PinCodeRoute>(path: '/pin-code')
class PinCodeRoute extends GoRouteData {
  const PinCodeRoute({
    required this.hasOperation,
    this.isOldPinPrompt = false,
  });
  final bool hasOperation;
  final bool isOldPinPrompt;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final callback = state.extra as VoidCallback?;
    return SlideFromBottomTransitionPage(state.pageKey, PinCodeScreen(hasOperation: hasOperation, callback: callback, isOldPinPrompt: isOldPinPrompt));
  }
}
