part of '../router.dart';

@TypedGoRoute<SecondarySaleReturnRoute>(path: '/secondary-sale-return')
class SecondarySaleReturnRoute extends GoRouteData {
  const SecondarySaleReturnRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const SecondarySaleReturnScreen());
  }
}

@TypedGoRoute<SecondarySaleReturnFormRoute>(path: '/secondary-sales-return-form')
class SecondarySaleReturnFormRoute extends GoRouteData {
  const SecondarySaleReturnFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final secondarySaleReturn = state.extra as SecondarySaleReturn?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(
          overrides: [
            secondarySaleReturnFormNotifierProvider.overrideWith(
              () => SecondarySaleReturnFormNotifier(secondarySaleReturn),
            )
          ],
          child: SecondarySaleReturnFormScreen(
            isEdit: isEdit,
            secondarySaleReturn: secondarySaleReturn ?? const SecondarySaleReturn(),
          )),
    );
  }
}

@TypedGoRoute<SecondarySaleReturnDetailRoute>(path: '/secondary-sale-return-detail')
class SecondarySaleReturnDetailRoute extends GoRouteData {
  const SecondarySaleReturnDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final secondarySaleReturn = state.extra as SecondarySaleReturn;
    return SlideFromSideTransitionPage(state.pageKey, SecondarySaleReturnDetailScreen(secondarySaleReturn: secondarySaleReturn));
  }
}

@TypedGoRoute<MakeSecondarySaleReturnPaymentRoute>(path: '/make-secondary-sale-return-payment')
class MakeSecondarySaleReturnPaymentRoute extends GoRouteData {
  const MakeSecondarySaleReturnPaymentRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final secondarySaleReturnReceipt = state.extra as SecondarySaleReturnReceipt;
    return SlideFromSideTransitionPage(
      state.pageKey,
      MakeSecondarySaleReturnPaymentScreen(secondarySaleReturnReceipt: secondarySaleReturnReceipt),
    );
  }
}

@TypedGoRoute<SecondarySaleReturnPaymentDetailRoute>(path: '/secondary-sale-return-payment-detail')
class SecondarySaleReturnPaymentDetailRoute extends GoRouteData {
  const SecondarySaleReturnPaymentDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleReturnReceipt = state.extra as SecondarySaleReturnReceipt;
    return SlideFromSideTransitionPage(state.pageKey, SecondarySaleReturnPaymentDetailScreen(saleReturnReceipt: saleReturnReceipt));
  }
}
