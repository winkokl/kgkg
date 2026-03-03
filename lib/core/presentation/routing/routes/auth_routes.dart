part of '../router.dart';

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return FadeTransitionPage(state.pageKey, const SplashScreen());
  }
}

@TypedGoRoute<SignInRoute>(path: '/signIn')
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideFromSideTransitionPage(state.pageKey, const SignInScreen());
  }
}

@TypedStatefulShellRoute<HomeShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranchData>(routes: HomeRoute.routes),
    TypedStatefulShellBranch<CustomerBranchData>(routes: CustomerRoute.routes),
    TypedStatefulShellBranch<SaleBranchData>(routes: SaleRoute.routes),
    TypedStatefulShellBranch<ExpenseBranchData>(routes: ExpenseRoute.routes),
    TypedStatefulShellBranch<ReportBranchData>(routes: ReportRoute.routes),
  ],
)
class HomeShellRouteData extends StatefulShellRouteData {
  const HomeShellRouteData();

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return SlideFromSideTransitionPage(
      state.pageKey,
      ScaffoldWithNestedNavigation(navigationShell: navigationShell),
    );
  }

  static const String $restorationScopeId = 'home_shell';
}
