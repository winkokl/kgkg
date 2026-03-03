part of '../router.dart';

class SaleRoute extends GoRouteData {
  const SaleRoute();

  static const routes = [
    TypedGoRoute<SaleRoute>(
      path: '/sale',
      routes: [],
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const SaleScreen();
}
