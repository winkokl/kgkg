part of '../router.dart';

@TypedGoRoute<SalePromotionDetailRoute>(path: '/sale-promotion-detail')
class SalePromotionDetailRoute extends GoRouteData {
  SalePromotionDetailRoute(this.id);
  final int id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, SalePromotionDetailScreen(id: id));
  }
}
