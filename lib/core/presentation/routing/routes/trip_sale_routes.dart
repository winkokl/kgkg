part of '../router.dart';

@TypedGoRoute<TripSaleRoute>(path: '/trip-sale')
class TripSaleRoute extends GoRouteData {
  const TripSaleRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const TripSaleScreen());
  }
}

@TypedGoRoute<TripProposalDetailRoute>(path: '/trip-management-detail')
class TripProposalDetailRoute extends GoRouteData {
  const TripProposalDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripProposal = state.extra as TripProposal;
    return SlideFromSideTransitionPage(state.pageKey, TripProposalDetailScreen(tripProposal: tripProposal));
  }
}

@TypedGoRoute<TripUserAssignDetailRoute>(path: '/trip-user-assign-detail')
class TripUserAssignDetailRoute extends GoRouteData {
  const TripUserAssignDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripUserAssign = state.extra as TripUserAssign;
    return SlideFromSideTransitionPage(state.pageKey, TripUserAssignDetailScreen(tripUserAssign: tripUserAssign));
  }
}

@TypedGoRoute<TripSaleFormRoute>(path: '/trip-sale-form')
class TripSaleFormRoute extends GoRouteData {
  const TripSaleFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final sale = state.extra as TripSale?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [
        tripSaleFormNotifierProvider.overrideWith(
          () => TripSaleFormNotifier(sale),
        )
      ], child: TripSaleFormScreen(isEdit: isEdit, tripSale: sale ?? const TripSale())),
    );
  }
}

@TypedGoRoute<TripSaleDetailRoute>(path: '/trip-sale-detail')
class TripSaleDetailRoute extends GoRouteData {
  const TripSaleDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSale = state.extra as TripSale;
    return SlideFromSideTransitionPage(state.pageKey, TripSaleDetailScreen(tripSale: tripSale));
  }
}

@TypedGoRoute<TripSaleRequestDetailRoute>(path: '/trip-sale-request-detail')
class TripSaleRequestDetailRoute extends GoRouteData {
  const TripSaleRequestDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSaleRequest = state.extra as TripSaleRequest;
    return SlideFromSideTransitionPage(state.pageKey, TripSaleRequestDetailScreen(tripSaleRequest: tripSaleRequest));
  }
}

@TypedGoRoute<ConvertToTripSaleInvoiceRoute>(path: '/convert-to-trip-sale-invoice')
class ConvertToTripSaleInvoiceRoute extends GoRouteData {
  const ConvertToTripSaleInvoiceRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as TripSaleInvoice?;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ProviderScope(overrides: [
          tripSaleInvoiceFormNotifierProvider.overrideWith(
            () => TripSaleInvoiceFormNotifier(saleInvoice),
          )
        ], child: ConvertToTripSaleInvoiceScreen(isEdit: isEdit)));
  }
}

@TypedGoRoute<TripSaleInvoiceDetailRoute>(path: '/trip-sale-invoice-detail')
class TripSaleInvoiceDetailRoute extends GoRouteData {
  const TripSaleInvoiceDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final tripSaleInvoice = state.extra as TripSaleInvoice;

    return SlideFromSideTransitionPage(
      state.pageKey,
      TripSaleInvoiceDetailScreen(tripSaleInvoice: tripSaleInvoice),
    );
  }
}

@TypedGoRoute<MakeTripSalePaymentReceiveRoute>(path: '/make-trip-sale-payment-receive')
class MakeTripSalePaymentReceiveRoute extends GoRouteData {
  const MakeTripSalePaymentReceiveRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as TripSaleInvoice;
    return SlideFromSideTransitionPage(state.pageKey, MakeTripSalePaymentReceiveScreen(saleInvoice: saleInvoice));
  }
}

@TypedGoRoute<TripSalePaymentReceiveDetailRoute>(path: '/trip-sale-payment-receive-detail')
class TripSalePaymentReceiveDetailRoute extends GoRouteData {
  const TripSalePaymentReceiveDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final receipt = state.extra as TripSaleReceipt;
    return SlideFromSideTransitionPage(state.pageKey, TripSalePaymentReceiveDetailScreen(tripSaleReceipt: receipt));
  }
}
