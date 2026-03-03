part of '../router.dart';

class ReportRoute extends GoRouteData {
  const ReportRoute();

  static const routes = [
    TypedGoRoute<ReportRoute>(
      path: '/report',
      routes: [],
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const ReportScreen();
}
