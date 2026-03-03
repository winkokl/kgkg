part of '../router.dart';

@TypedGoRoute<TripSaleReturnRoute>(path: '/trip-sale-return')
class TripSaleReturnRoute extends GoRouteData {
  const TripSaleReturnRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const TripSaleReturnScreen());
  }
}

@TypedGoRoute<TripSaleReturnFormRoute>(path: '/trip-sales-return-form')
class TripSaleReturnFormRoute extends GoRouteData {
  const TripSaleReturnFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSaleReturn = state.extra as TripSaleReturn?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(
          overrides: [
            tripSaleReturnFormNotifierProvider.overrideWith(
              () => TripSaleReturnFormNotifier(tripSaleReturn),
            )
          ],
          child: TripSaleReturnFormScreen(
            isEdit: isEdit,
            tripSaleReturn: tripSaleReturn ?? const TripSaleReturn(),
          )),
    );
  }
}

@TypedGoRoute<TripSaleReturnDetailRoute>(path: '/trip-sale-return-detail')
class TripSaleReturnDetailRoute extends GoRouteData {
  const TripSaleReturnDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSaleReturn = state.extra as TripSaleReturn;
    return SlideFromSideTransitionPage(state.pageKey, TripSaleReturnDetailScreen(tripSaleReturn: tripSaleReturn));
  }
}

@TypedGoRoute<MakeTripSaleReturnPaymentRoute>(path: '/make-trip-sale-return-payment')
class MakeTripSaleReturnPaymentRoute extends GoRouteData {
  const MakeTripSaleReturnPaymentRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSaleReturnReceipt = state.extra as TripSaleReturnReceipt;
    return SlideFromSideTransitionPage(
      state.pageKey,
      MakeTripSaleReturnPaymentScreen(tripSaleReturnReceipt: tripSaleReturnReceipt),
    );
  }
}

@TypedGoRoute<TripSaleReturnPaymentDetailRoute>(path: '/trip-sale-return-payment-detail')
class TripSaleReturnPaymentDetailRoute extends GoRouteData {
  const TripSaleReturnPaymentDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleReturnReceipt = state.extra as TripSaleReturnReceipt;
    return SlideFromSideTransitionPage(state.pageKey, TripSaleReturnPaymentDetailScreen(saleReturnReceipt: saleReturnReceipt));
  }
}
