part of '../router.dart';

class ExpenseRoute extends GoRouteData {
  const ExpenseRoute();

  static const routes = [
    TypedGoRoute<ExpenseRoute>(
      path: '/expense',
      routes: [],
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const ExpenseScreen();
}

@TypedGoRoute<ExpenseFormRoute>(path: '/expense-form')
class ExpenseFormRoute extends GoRouteData {
  const ExpenseFormRoute({required this.isEdit});
  final bool isEdit;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final expense = state.extra as Expense;
    return SlideFromSideTransitionPage(state.pageKey, ExpenseFormScreen(isEdit: isEdit, expense: expense));
  }
}

@TypedGoRoute<ExpenseDetailRoute>(path: '/expense-detail')
class ExpenseDetailRoute extends GoRouteData {
  const ExpenseDetailRoute({required this.id});
  final String id;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final expense = state.extra as Expense;
    return SlideFromSideTransitionPage(state.pageKey, ExpenseDetailScreen(expense: expense));
  }
}
