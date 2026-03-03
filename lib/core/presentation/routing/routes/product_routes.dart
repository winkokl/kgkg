part of '../router.dart';

@TypedGoRoute<ProductListRoute>(path: '/product-list')
class ProductListRoute extends GoRouteData {
  const ProductListRoute({
    required this.hasAction,
    required this.isReturn,
  });
  final bool hasAction;
  final bool isReturn;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(
        state.pageKey,
        ProductListScreen(
          hasAction: hasAction,
          isReturn: isReturn,
        ));
  }
}

@TypedGoRoute<ProductDetailRoute>(path: '/product-detail')
class ProductDetailRoute extends GoRouteData {
  const ProductDetailRoute({
    required this.hasAction,
    required this.isReturn,
  });
  final bool hasAction;
  final bool isReturn;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final product = state.extra as Product;
    return SlideFromSideTransitionPage(
        state.pageKey,
        ProductDetailScreen(
          hasAction: hasAction,
          product: product,
          isReturn: isReturn,
        ));
  }
}

@TypedGoRoute<SelectProductRoute>(path: '/select-product')
class SelectProductRoute extends GoRouteData {
  const SelectProductRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const SelectProductScreen());
  }
}

@TypedGoRoute<EditProductRoute>(path: '/edit-product')
class EditProductRoute extends GoRouteData {
  const EditProductRoute({
    required this.isReturn,
  });
  final bool isReturn;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final product = state.extra as Product;
    return SlideFromSideTransitionPage(
        state.pageKey,
        EditProductScreen(
          product: product,
          isReturn: isReturn,
        ));
  }
}
