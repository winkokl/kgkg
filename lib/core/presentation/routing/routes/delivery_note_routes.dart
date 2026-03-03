part of '../router.dart';

@TypedGoRoute<DeliveryNoteRoute>(path: '/delivery-note')
class DeliveryNoteRoute extends GoRouteData {
  const DeliveryNoteRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const DeliveryNoteScreen());
  }
}

@TypedGoRoute<DeliveryNoteDetailRoute>(path: '/delivery-note-detail')
class DeliveryNoteDetailRoute extends GoRouteData {
  DeliveryNoteDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final deliveryNote = state.extra as DeliveryNote;
    return SlideFromSideTransitionPage(state.pageKey, DeliveryNoteDetailScreen(deliveryNote: deliveryNote));
  }
}

@TypedGoRoute<SignToDeliveryNoteRoute>(path: '/delivery-note-sign')
class SignToDeliveryNoteRoute extends GoRouteData {
  const SignToDeliveryNoteRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final deliveryNote = state.extra as DeliveryNote;
    return SlideFromSideTransitionPage(state.pageKey, SignToDeliveryNoteScreen(deliveryNote: deliveryNote));
  }
}

@TypedGoRoute<DeliveryNoteProductListRoute>(path: '/delivery-note--product-list')
class DeliveryNoteProductListRoute extends GoRouteData {
  DeliveryNoteProductListRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const DeliveryNoteProductListScreen());
  }
}

@TypedGoRoute<DeliveryNoteProductDetailRoute>(path: '/delivery-note--product-detail')
class DeliveryNoteProductDetailRoute extends GoRouteData {
  DeliveryNoteProductDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final product = state.extra as Product;
    return SlideFromSideTransitionPage(state.pageKey, DeliveryNoteProductDetailScreen(product: product));
  }
}
