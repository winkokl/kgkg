part of '../router.dart';

@TypedGoRoute<MarketingPromotionReturnRoute>(path: '/marketing-promotion-return')
class MarketingPromotionReturnRoute extends GoRouteData {
  const MarketingPromotionReturnRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const MarketingPromotionReturnScreen());
  }
}

@TypedGoRoute<ReturnProductFormRoute>(path: '/return-product-form')
class ReturnProductFormRoute extends GoRouteData {
  const ReturnProductFormRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as (PromotionProduct, Function(PromotionProduct p)? onUpdateProduct);
    return SlideFromBottomTransitionPage(
        state.pageKey,
        ReturnProductFormScreen(
          product: data.$1,
          onUpdateProduct: data.$2,
        ));
  }
}

@TypedGoRoute<ReturnGiftItemFormRoute>(path: '/return-gift-item-form')
class ReturnGiftItemFormRoute extends GoRouteData {
  const ReturnGiftItemFormRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final data = state.extra as (GiftItem, Function(GiftItem p)? onUpdateGiftItem);
    return SlideFromBottomTransitionPage(
        state.pageKey,
        ReturnGiftItemFormScreen(
          giftItem: data.$1,
          onUpdateGiftItem: data.$2,
        ));
  }
}

@TypedGoRoute<MarketingPromotionReturnFormRoute>(path: '/marketing-promotion-return-form')
class MarketingPromotionReturnFormRoute extends GoRouteData {
  const MarketingPromotionReturnFormRoute({required this.isEdit});
  final bool isEdit;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final mpReturn = state.extra as MarketingPromotionReturn?;

    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(
          overrides: [
            returnFormNotifierProvider.overrideWith(
              () => ReturnFormNotifier(mpReturn),
            )
          ],
          child: MarketingPromotionReturnFormScreen(
            isEdit: isEdit,
          )),
    );
  }
}

@TypedGoRoute<MarketingPromotionReturnDetailRoute>(path: '/marketing-promotion-return-detail')
class MarketingPromotionReturnDetailRoute extends GoRouteData {
  const MarketingPromotionReturnDetailRoute(this.id);
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, MarketingPromotionReturnDetailScreen(id: id));
  }
}

@TypedGoRoute<MakeReturnPaymentRoute>(path: '/make-return-payment')
class MakeReturnPaymentRoute extends GoRouteData {
  const MakeReturnPaymentRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final mpReturn = state.extra as MarketingPromotionReturn;
    return SlideFromSideTransitionPage(state.pageKey, MakeReturnPaymentScreen(mpReturn: mpReturn));
  }
}

@TypedGoRoute<MarketingPromotionReturnPaymentDetailRoute>(path: '/return-payment-detail')
class MarketingPromotionReturnPaymentDetailRoute extends GoRouteData {
  const MarketingPromotionReturnPaymentDetailRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final saleReturnReceipt = state.extra as ReturnReceipt;
    return SlideFromSideTransitionPage(state.pageKey, ReturnReceiptDetailScreen(receipt: saleReturnReceipt));
  }
}
