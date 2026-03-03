part of '../router.dart';

@TypedGoRoute<MarketingPromotionPlanRoute>(path: '/marketingpromotionplan')
class MarketingPromotionPlanRoute extends GoRouteData {
  const MarketingPromotionPlanRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const MarketingPromotionPlanScreen());
  }
}

@TypedGoRoute<MarketingPromotionPlanDetailRoute>(path: '/marketingpromotionplan-detail')
class MarketingPromotionPlanDetailRoute extends GoRouteData {
  const MarketingPromotionPlanDetailRoute({required this.id});
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, MarketingPromotionPlanDetailScreen(id: id));
  }
}

@TypedGoRoute<GoodRequisitionDetailRoute>(path: '/goodrequisition-detail')
class GoodRequisitionDetailRoute extends GoRouteData {
  const GoodRequisitionDetailRoute({required this.id});
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, GoodRequisitionDetailScreen(id: id));
  }
}

@TypedGoRoute<PromotionProductDetailRoute>(path: '/promotion-product-detail')
class PromotionProductDetailRoute extends GoRouteData {
  const PromotionProductDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final product = state.extra as PromotionProduct;

    return SlideFromSideTransitionPage(state.pageKey, PromotionProductDetailScreen(product: product));
  }
}

@TypedGoRoute<GoodRequisitionFormRoute>(path: '/goodrequisition-form')
class GoodRequisitionFormRoute extends GoRouteData {
  const GoodRequisitionFormRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as GoodRequisition?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [
        goodRequisitionFormNotifierProvider.overrideWith(
          () => GoodRequisitionFormNotifier(data),
        )
      ], child: const GoodRequisitionFormScreen()),
    );
  }
}

@TypedGoRoute<InvoiceDetailRoute>(path: '/invoice-detail')
class InvoiceDetailRoute extends GoRouteData {
  const InvoiceDetailRoute({required this.id});
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, InvoiceDetailScreen(id: id));
  }
}

@TypedGoRoute<ReceiptDetailRoute>(path: '/receipt-detail')
class ReceiptDetailRoute extends GoRouteData {
  const ReceiptDetailRoute({required this.id});
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as Receipt;

    return SlideFromSideTransitionPage(state.pageKey, ReceiptDetailScreen(id: id, receipt: data));
  }
}

@TypedGoRoute<InvoiceFormRoute>(path: '/invoice-form')
class InvoiceFormRoute extends GoRouteData {
  const InvoiceFormRoute({required this.isEdit});
  final bool isEdit;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as Invoice;

    return SlideFromSideTransitionPage(
        state.pageKey,
        ProviderScope(overrides: [
          invoiceFormNotifierProvider.overrideWith(
            () => InvoiceFormNotifier(data),
          )
        ], child: InvoiceFormScreen(isEdit: isEdit)));
  }
}

@TypedGoRoute<InvoiceProductFormRoute>(path: '/invoice-product-form')
class InvoiceProductFormRoute extends GoRouteData {
  const InvoiceProductFormRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as (PromotionProduct, Function(PromotionProduct p)? onUpdateProduct);
    return SlideFromBottomTransitionPage(
        state.pageKey,
        InvoiceProductFormScreen(
          product: data.$1,
          onUpdateProduct: data.$2,
        ));
  }
}

@TypedGoRoute<InvoiceGiftItemFormRoute>(path: '/invoice-gift-item-form')
class InvoiceGiftItemFormRoute extends GoRouteData {
  const InvoiceGiftItemFormRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as (GiftItem, Function(GiftItem p)? onUpdateGiftItem);
    return SlideFromBottomTransitionPage(
        state.pageKey,
        InvoiceGiftItemFormScreen(
          giftItem: data.$1,
          onUpdateGiftItem: data.$2,
        ));
  }
}

@TypedGoRoute<MakePaymentReceiveRoute>(path: '/make-payment-receive')
class MakePaymentReceiveRoute extends GoRouteData {
  const MakePaymentReceiveRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleInvoice = state.extra as Invoice;
    return SlideFromSideTransitionPage(state.pageKey, MakePaymentReceiveScreen(saleInvoice: saleInvoice));
  }
}
