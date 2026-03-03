part of '../router.dart';

@TypedGoRoute<ConsignmentApprovalDetailRoute>(path: '/consignment-approval-detail')
class ConsignmentApprovalDetailRoute extends GoRouteData {
  const ConsignmentApprovalDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignmentApproval = state.extra as ConsignmentApproval;
    return SlideFromSideTransitionPage(state.pageKey, ConsignmentApprovalDetailScreen(consignmentApproval: consignmentApproval));
  }
}

@TypedGoRoute<ConsignmentContractDetailRoute>(path: '/consignment-contract-detail')
class ConsignmentContractDetailRoute extends GoRouteData {
  const ConsignmentContractDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignmentContract = state.extra as ConsignmentContract;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ConsignmentContractDetailScreen(
          consignmentContract: consignmentContract,
        ));
  }
}

@TypedGoRoute<ConsignmentRoute>(path: '/consignment')
class ConsignmentRoute extends GoRouteData {
  const ConsignmentRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const ConsignmentScreen());
  }
}

@TypedGoRoute<ConsignmentFormRoute>(path: '/consignment-form')
class ConsignmentFormRoute extends GoRouteData {
  const ConsignmentFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final sale = state.extra as Consignment?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [
        consignmentFormNotifierProvider.overrideWith(
          () => ConsignmentFormNotifier(sale),
        )
      ], child: ConsignmentFormScreen(isEdit: isEdit, consignment: sale ?? const Consignment())),
    );
  }
}

@TypedGoRoute<ConsignmentDetailRoute>(path: '/consignment-detail')
class ConsignmentDetailRoute extends GoRouteData {
  const ConsignmentDetailRoute({required this.isOrderApproval});
  final bool isOrderApproval;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignment = state.extra as Consignment;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ConsignmentDetailScreen(
          consignment: consignment,
          isOrderApproval: isOrderApproval,
        ));
  }
}

@TypedGoRoute<ConvertToConsignmentInvoiceRoute>(path: '/convert-to-consignment-invoice')
class ConvertToConsignmentInvoiceRoute extends GoRouteData {
  const ConvertToConsignmentInvoiceRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as ConsignmentInvoice?;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ProviderScope(overrides: [
          consignmentInvoiceFormNotifierProvider.overrideWith(
            () => ConsignmentInvoiceFormNotifier(saleInvoice),
          )
        ], child: ConvertToConsignmentInvoiceScreen(isEdit: isEdit)));
  }
}

@TypedGoRoute<ConsignmentInvoiceDetailRoute>(path: '/consignment-invoice-detail')
class ConsignmentInvoiceDetailRoute extends GoRouteData {
  const ConsignmentInvoiceDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final consignmentInvoice = state.extra as ConsignmentInvoice;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ConsignmentInvoiceDetailScreen(consignmentInvoice: consignmentInvoice),
    );
  }
}

@TypedGoRoute<MakeConsignmentPaymentReceiveRoute>(path: '/make-consignment-payment-receive')
class MakeConsignmentPaymentReceiveRoute extends GoRouteData {
  const MakeConsignmentPaymentReceiveRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as ConsignmentInvoice;
    return SlideFromSideTransitionPage(state.pageKey, MakeConsignmentPaymentReceiveScreen(saleInvoice: saleInvoice));
  }
}

@TypedGoRoute<ConsignmentPaymentReceiveDetailRoute>(path: '/consignment-payment-receive-detail')
class ConsignmentPaymentReceiveDetailRoute extends GoRouteData {
  const ConsignmentPaymentReceiveDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final receipt = state.extra as ConsignmentReceipt;
    return SlideFromSideTransitionPage(state.pageKey, ConsignmentPaymentReceiveDetailScreen(consignmentReceipt: receipt));
  }
}
