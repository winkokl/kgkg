part of '../router.dart';

class CustomerRoute extends GoRouteData {
  const CustomerRoute();

  static const routes = [
    TypedGoRoute<CustomerRoute>(
      path: '/customer',
      routes: [],
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const CustomerScreen();
}

@TypedGoRoute<CustomerFormRoute>(path: '/customer-form')
class CustomerFormRoute extends GoRouteData {
  const CustomerFormRoute({required this.isEdit});
  final bool isEdit;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final customer = state.extra as Customer?;
    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [
        customerFormNotifierProvider.overrideWith(
          () => CustomerFormNotifier(customer),
        ),
      ], child: CustomerFormScreen(isEdit: isEdit)),
    );
  }
}

@TypedGoRoute<CustomerDetailRoute>(path: '/customer-detail')
class CustomerDetailRoute extends GoRouteData {
  const CustomerDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final customer = state.extra as Customer;
    return SlideFromSideTransitionPage(state.pageKey, CustomerDetailScreen(customer: customer));
  }
}

@TypedGoRoute<BusinessUnitFormRoute>(path: '/businessunit-form')
class BusinessUnitFormRoute extends GoRouteData {
  const BusinessUnitFormRoute({required this.isEdit});
  final bool isEdit;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final businessunit = state.extra as BusinessUnit?;
    return SlideFromSideTransitionPage(
      state.pageKey,
      BusinessUnitFormScreen(
        isEdit: isEdit,
        businessUnit: businessunit ?? const BusinessUnit(),
      ),
    );
  }
}

@TypedGoRoute<BusinessUnitDetailRoute>(path: '/businessunit-detail')
class BusinessUnitDetailRoute extends GoRouteData {
  const BusinessUnitDetailRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final businessunit = state.extra as BusinessUnit;
    return SlideFromSideTransitionPage(state.pageKey, BusinessUnitDetailScreen(businessUnit: businessunit));
  }
}
