part of '../router.dart';

@TypedGoRoute<SecondarySaleRoute>(path: '/secondary-sale')
class SecondarySaleRoute extends GoRouteData {
  const SecondarySaleRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const SecondarySaleScreen());
  }
}

@TypedGoRoute<SecondarySaleFormRoute>(path: '/secondary-sale-form')
class SecondarySaleFormRoute extends GoRouteData {
  const SecondarySaleFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final sale = state.extra as SecondarySale?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [
        secondarySaleFormNotifierProvider.overrideWith(() => SecondarySaleFormNotifier(sale)),
      ], child: SecondarySaleFormScreen(isEdit: isEdit, secondarySale: sale ?? const SecondarySale())),
    );
  }
}

@TypedGoRoute<SecondarySaleDetailRoute>(path: '/secondary-sale-detail')
class SecondarySaleDetailRoute extends GoRouteData {
  SecondarySaleDetailRoute({required this.isOrderApproval});
  final bool isOrderApproval;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final secondarySale = state.extra as SecondarySale;
    return SlideFromSideTransitionPage(
        state.pageKey,
        SecondarySaleDetailScreen(
          secondarySale: secondarySale,
          isOrderApproval: isOrderApproval,
        ));
  }
}

@TypedGoRoute<ConvertToSecondarySaleInvoiceRoute>(path: '/convert-to-secondary-sale-invoice')
class ConvertToSecondarySaleInvoiceRoute extends GoRouteData {
  const ConvertToSecondarySaleInvoiceRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as SecondarySaleInvoice?;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ProviderScope(overrides: [
          secondarySaleInvoiceFormNotifierProvider.overrideWith(
            () => SecondarySaleInvoiceFormNotifier(saleInvoice),
          )
        ], child: ConvertToSecondarySaleInvoiceScreen(isEdit: isEdit)));
  }
}

@TypedGoRoute<SecondarySaleInvoiceDetailRoute>(path: '/secondary-sale-invoice-detail')
class SecondarySaleInvoiceDetailRoute extends GoRouteData {
  const SecondarySaleInvoiceDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final secondarySaleInvoice = state.extra as SecondarySaleInvoice;

    return SlideFromSideTransitionPage(
      state.pageKey,
      SecondarySaleInvoiceDetailScreen(secondarySaleInvoice: secondarySaleInvoice),
    );
  }
}

@TypedGoRoute<MakeSecondarySalePaymentReceiveRoute>(path: '/make-secondary-sale-payment-receive')
class MakeSecondarySalePaymentReceiveRoute extends GoRouteData {
  const MakeSecondarySalePaymentReceiveRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as SecondarySaleInvoice;
    return SlideFromSideTransitionPage(state.pageKey, MakeSecondarySalePaymentReceiveScreen(saleInvoice: saleInvoice));
  }
}

@TypedGoRoute<SecondarySalePaymentReceiveDetailRoute>(path: '/secondary-sale-payment-receive-detail')
class SecondarySalePaymentReceiveDetailRoute extends GoRouteData {
  const SecondarySalePaymentReceiveDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final receipt = state.extra as SecondarySaleReceipt;
    return SlideFromSideTransitionPage(state.pageKey, SecondarySalePaymentReceiveDetailScreen(secondarySaleReceipt: receipt));
  }
}
