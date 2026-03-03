part of '../router.dart';

@TypedGoRoute<PaymentHistoryDetailRoute>(path: '/payment-history-detail')
class PaymentHistoryDetailRoute extends GoRouteData {
  const PaymentHistoryDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final paymentReceiptList = state.extra as List<PaymentReceipt>;
    return SlideFromSideTransitionPage(
      state.pageKey,
      PaymentHistoryDetailScreen(paymentReceipts: paymentReceiptList),
    );
  }
}
