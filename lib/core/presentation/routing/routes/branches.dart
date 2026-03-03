part of '../router.dart';

class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();

  // static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;

  static String $initialLocation = const HomeRoute().location;

  static const String $restorationScopeId = 'home_branch';
}

class CustomerBranchData extends StatefulShellBranchData {
  const CustomerBranchData();

  static String $initialLocation = const CustomerRoute().location;

  static const String $restorationScopeId = 'customer_branch';
}

class SaleBranchData extends StatefulShellBranchData {
  const SaleBranchData();

  static String $initialLocation = const SaleRoute().location;

  static const String $restorationScopeId = 'sale_branch';
}

class ExpenseBranchData extends StatefulShellBranchData {
  const ExpenseBranchData();

  static String $initialLocation = const ExpenseRoute().location;

  static const String $restorationScopeId = 'expense_branch';
}

class ReportBranchData extends StatefulShellBranchData {
  const ReportBranchData();

  // static final GlobalKey<NavigatorState> $navigatorKey = reportNavigatorKey;

  static String $initialLocation = const ReportRoute().location;

  static const String $restorationScopeId = 'report_branch';
}
