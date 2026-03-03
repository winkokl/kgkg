part of '../router.dart';

@TypedGoRoute<ConsignmentReturnRoute>(path: '/consignment-return')
class ConsignmentReturnRoute extends GoRouteData {
  const ConsignmentReturnRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const ConsignmentReturnScreen());
  }
}

@TypedGoRoute<ConsignmentReturnFormRoute>(path: '/consignment-return-form')
class ConsignmentReturnFormRoute extends GoRouteData {
  const ConsignmentReturnFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignmentReturn = state.extra as ConsignmentReturn?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(
          overrides: [
            consignmentReturnFormNotifierProvider.overrideWith(
              () => ConsignmentReturnFormNotifier(consignmentReturn),
            )
          ],
          child: ConsignmentReturnFormScreen(
            isEdit: isEdit,
            consignmentReturn: consignmentReturn ?? const ConsignmentReturn(),
          )),
    );
  }
}

@TypedGoRoute<ConsignmentReturnDetailRoute>(path: '/consignment-return-detail')
class ConsignmentReturnDetailRoute extends GoRouteData {
  const ConsignmentReturnDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignmentReturn = state.extra as ConsignmentReturn;

    return SlideFromSideTransitionPage(
        state.pageKey,
        ConsignmentReturnDetailScreen(
          consignmentReturn: consignmentReturn,
        ));
  }
}
