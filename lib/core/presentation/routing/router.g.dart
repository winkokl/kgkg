// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $customerFormRoute,
      $customerDetailRoute,
      $businessUnitFormRoute,
      $businessUnitDetailRoute,
      $splashRoute,
      $signInRoute,
      $homeShellRouteData,
      $profileRoute,
      $settingRoute,
      $changePasswordRoute,
      $productListRoute,
      $productDetailRoute,
      $selectProductRoute,
      $editProductRoute,
      $secondarySaleRoute,
      $secondarySaleFormRoute,
      $secondarySaleDetailRoute,
      $convertToSecondarySaleInvoiceRoute,
      $secondarySaleInvoiceDetailRoute,
      $makeSecondarySalePaymentReceiveRoute,
      $secondarySalePaymentReceiveDetailRoute,
      $tripSaleRoute,
      $tripProposalDetailRoute,
      $tripUserAssignDetailRoute,
      $tripSaleFormRoute,
      $tripSaleDetailRoute,
      $tripSaleRequestDetailRoute,
      $convertToTripSaleInvoiceRoute,
      $tripSaleInvoiceDetailRoute,
      $makeTripSalePaymentReceiveRoute,
      $tripSalePaymentReceiveDetailRoute,
      $tripSaleReturnRoute,
      $tripSaleReturnFormRoute,
      $tripSaleReturnDetailRoute,
      $makeTripSaleReturnPaymentRoute,
      $tripSaleReturnPaymentDetailRoute,
      $consignmentApprovalDetailRoute,
      $consignmentContractDetailRoute,
      $consignmentRoute,
      $consignmentFormRoute,
      $consignmentDetailRoute,
      $convertToConsignmentInvoiceRoute,
      $consignmentInvoiceDetailRoute,
      $makeConsignmentPaymentReceiveRoute,
      $consignmentPaymentReceiveDetailRoute,
      $secondarySaleReturnRoute,
      $secondarySaleReturnFormRoute,
      $secondarySaleReturnDetailRoute,
      $makeSecondarySaleReturnPaymentRoute,
      $secondarySaleReturnPaymentDetailRoute,
      $consignmentReturnRoute,
      $consignmentReturnFormRoute,
      $consignmentReturnDetailRoute,
      $expenseFormRoute,
      $expenseDetailRoute,
      $allFilterRoute,
      $paymentHistoryDetailRoute,
      $deliveryNoteRoute,
      $deliveryNoteDetailRoute,
      $signToDeliveryNoteRoute,
      $deliveryNoteProductListRoute,
      $deliveryNoteProductDetailRoute,
      $salePromotionDetailRoute,
      $marketingPromotionPlanRoute,
      $marketingPromotionPlanDetailRoute,
      $goodRequisitionDetailRoute,
      $promotionProductDetailRoute,
      $goodRequisitionFormRoute,
      $invoiceDetailRoute,
      $receiptDetailRoute,
      $invoiceFormRoute,
      $invoiceProductFormRoute,
      $invoiceGiftItemFormRoute,
      $makePaymentReceiveRoute,
      $notFoundRoute,
      $noPermissionRoute,
      $pinCodeRoute,
      $marketingPromotionReturnRoute,
      $returnProductFormRoute,
      $returnGiftItemFormRoute,
      $marketingPromotionReturnFormRoute,
      $marketingPromotionReturnDetailRoute,
      $makeReturnPaymentRoute,
      $marketingPromotionReturnPaymentDetailRoute,
    ];

RouteBase get $customerFormRoute => GoRouteData.$route(
      path: '/customer-form',
      factory: $CustomerFormRouteExtension._fromState,
    );

extension $CustomerFormRouteExtension on CustomerFormRoute {
  static CustomerFormRoute _fromState(GoRouterState state) => CustomerFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/customer-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $customerDetailRoute => GoRouteData.$route(
      path: '/customer-detail',
      factory: $CustomerDetailRouteExtension._fromState,
    );

extension $CustomerDetailRouteExtension on CustomerDetailRoute {
  static CustomerDetailRoute _fromState(GoRouterState state) =>
      const CustomerDetailRoute();

  String get location => GoRouteData.$location(
        '/customer-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $businessUnitFormRoute => GoRouteData.$route(
      path: '/businessunit-form',
      factory: $BusinessUnitFormRouteExtension._fromState,
    );

extension $BusinessUnitFormRouteExtension on BusinessUnitFormRoute {
  static BusinessUnitFormRoute _fromState(GoRouterState state) =>
      BusinessUnitFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/businessunit-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $businessUnitDetailRoute => GoRouteData.$route(
      path: '/businessunit-detail',
      factory: $BusinessUnitDetailRouteExtension._fromState,
    );

extension $BusinessUnitDetailRouteExtension on BusinessUnitDetailRoute {
  static BusinessUnitDetailRoute _fromState(GoRouterState state) =>
      const BusinessUnitDetailRoute();

  String get location => GoRouteData.$location(
        '/businessunit-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/signIn',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/signIn',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeShellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: HomeShellRouteData.$restorationScopeId,
      factory: $HomeShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          restorationScopeId: HomeBranchData.$restorationScopeId,
          initialLocation: HomeBranchData.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: CustomerBranchData.$restorationScopeId,
          initialLocation: CustomerBranchData.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/customer',
              factory: $CustomerRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: SaleBranchData.$restorationScopeId,
          initialLocation: SaleBranchData.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/sale',
              factory: $SaleRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: ExpenseBranchData.$restorationScopeId,
          initialLocation: ExpenseBranchData.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/expense',
              factory: $ExpenseRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: ReportBranchData.$restorationScopeId,
          initialLocation: ReportBranchData.$initialLocation,
          routes: [
            GoRouteData.$route(
              path: '/report',
              factory: $ReportRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeShellRouteDataExtension on HomeShellRouteData {
  static HomeShellRouteData _fromState(GoRouterState state) =>
      const HomeShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CustomerRouteExtension on CustomerRoute {
  static CustomerRoute _fromState(GoRouterState state) => const CustomerRoute();

  String get location => GoRouteData.$location(
        '/customer',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SaleRouteExtension on SaleRoute {
  static SaleRoute _fromState(GoRouterState state) => const SaleRoute();

  String get location => GoRouteData.$location(
        '/sale',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExpenseRouteExtension on ExpenseRoute {
  static ExpenseRoute _fromState(GoRouterState state) => const ExpenseRoute();

  String get location => GoRouteData.$location(
        '/expense',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ReportRouteExtension on ReportRoute {
  static ReportRoute _fromState(GoRouterState state) => const ReportRoute();

  String get location => GoRouteData.$location(
        '/report',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profileRoute => GoRouteData.$route(
      path: '/profile',
      factory: $ProfileRouteExtension._fromState,
    );

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingRoute => GoRouteData.$route(
      path: '/setting',
      factory: $SettingRouteExtension._fromState,
    );

extension $SettingRouteExtension on SettingRoute {
  static SettingRoute _fromState(GoRouterState state) => const SettingRoute();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $changePasswordRoute => GoRouteData.$route(
      path: '/change-password',
      factory: $ChangePasswordRouteExtension._fromState,
    );

extension $ChangePasswordRouteExtension on ChangePasswordRoute {
  static ChangePasswordRoute _fromState(GoRouterState state) =>
      const ChangePasswordRoute();

  String get location => GoRouteData.$location(
        '/change-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $productListRoute => GoRouteData.$route(
      path: '/product-list',
      factory: $ProductListRouteExtension._fromState,
    );

extension $ProductListRouteExtension on ProductListRoute {
  static ProductListRoute _fromState(GoRouterState state) => ProductListRoute(
        hasAction: _$boolConverter(state.uri.queryParameters['has-action']!),
        isReturn: _$boolConverter(state.uri.queryParameters['is-return']!),
      );

  String get location => GoRouteData.$location(
        '/product-list',
        queryParams: {
          'has-action': hasAction.toString(),
          'is-return': isReturn.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $productDetailRoute => GoRouteData.$route(
      path: '/product-detail',
      factory: $ProductDetailRouteExtension._fromState,
    );

extension $ProductDetailRouteExtension on ProductDetailRoute {
  static ProductDetailRoute _fromState(GoRouterState state) =>
      ProductDetailRoute(
        hasAction: _$boolConverter(state.uri.queryParameters['has-action']!),
        isReturn: _$boolConverter(state.uri.queryParameters['is-return']!),
      );

  String get location => GoRouteData.$location(
        '/product-detail',
        queryParams: {
          'has-action': hasAction.toString(),
          'is-return': isReturn.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $selectProductRoute => GoRouteData.$route(
      path: '/select-product',
      factory: $SelectProductRouteExtension._fromState,
    );

extension $SelectProductRouteExtension on SelectProductRoute {
  static SelectProductRoute _fromState(GoRouterState state) =>
      const SelectProductRoute();

  String get location => GoRouteData.$location(
        '/select-product',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editProductRoute => GoRouteData.$route(
      path: '/edit-product',
      factory: $EditProductRouteExtension._fromState,
    );

extension $EditProductRouteExtension on EditProductRoute {
  static EditProductRoute _fromState(GoRouterState state) => EditProductRoute(
        isReturn: _$boolConverter(state.uri.queryParameters['is-return']!),
      );

  String get location => GoRouteData.$location(
        '/edit-product',
        queryParams: {
          'is-return': isReturn.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleRoute => GoRouteData.$route(
      path: '/secondary-sale',
      factory: $SecondarySaleRouteExtension._fromState,
    );

extension $SecondarySaleRouteExtension on SecondarySaleRoute {
  static SecondarySaleRoute _fromState(GoRouterState state) =>
      const SecondarySaleRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleFormRoute => GoRouteData.$route(
      path: '/secondary-sale-form',
      factory: $SecondarySaleFormRouteExtension._fromState,
    );

extension $SecondarySaleFormRouteExtension on SecondarySaleFormRoute {
  static SecondarySaleFormRoute _fromState(GoRouterState state) =>
      SecondarySaleFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/secondary-sale-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleDetailRoute => GoRouteData.$route(
      path: '/secondary-sale-detail',
      factory: $SecondarySaleDetailRouteExtension._fromState,
    );

extension $SecondarySaleDetailRouteExtension on SecondarySaleDetailRoute {
  static SecondarySaleDetailRoute _fromState(GoRouterState state) =>
      SecondarySaleDetailRoute(
        isOrderApproval:
            _$boolConverter(state.uri.queryParameters['is-order-approval']!),
      );

  String get location => GoRouteData.$location(
        '/secondary-sale-detail',
        queryParams: {
          'is-order-approval': isOrderApproval.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $convertToSecondarySaleInvoiceRoute => GoRouteData.$route(
      path: '/convert-to-secondary-sale-invoice',
      factory: $ConvertToSecondarySaleInvoiceRouteExtension._fromState,
    );

extension $ConvertToSecondarySaleInvoiceRouteExtension
    on ConvertToSecondarySaleInvoiceRoute {
  static ConvertToSecondarySaleInvoiceRoute _fromState(GoRouterState state) =>
      ConvertToSecondarySaleInvoiceRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/convert-to-secondary-sale-invoice',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleInvoiceDetailRoute => GoRouteData.$route(
      path: '/secondary-sale-invoice-detail',
      factory: $SecondarySaleInvoiceDetailRouteExtension._fromState,
    );

extension $SecondarySaleInvoiceDetailRouteExtension
    on SecondarySaleInvoiceDetailRoute {
  static SecondarySaleInvoiceDetailRoute _fromState(GoRouterState state) =>
      const SecondarySaleInvoiceDetailRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale-invoice-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeSecondarySalePaymentReceiveRoute => GoRouteData.$route(
      path: '/make-secondary-sale-payment-receive',
      factory: $MakeSecondarySalePaymentReceiveRouteExtension._fromState,
    );

extension $MakeSecondarySalePaymentReceiveRouteExtension
    on MakeSecondarySalePaymentReceiveRoute {
  static MakeSecondarySalePaymentReceiveRoute _fromState(GoRouterState state) =>
      const MakeSecondarySalePaymentReceiveRoute();

  String get location => GoRouteData.$location(
        '/make-secondary-sale-payment-receive',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySalePaymentReceiveDetailRoute => GoRouteData.$route(
      path: '/secondary-sale-payment-receive-detail',
      factory: $SecondarySalePaymentReceiveDetailRouteExtension._fromState,
    );

extension $SecondarySalePaymentReceiveDetailRouteExtension
    on SecondarySalePaymentReceiveDetailRoute {
  static SecondarySalePaymentReceiveDetailRoute _fromState(
          GoRouterState state) =>
      const SecondarySalePaymentReceiveDetailRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale-payment-receive-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleRoute => GoRouteData.$route(
      path: '/trip-sale',
      factory: $TripSaleRouteExtension._fromState,
    );

extension $TripSaleRouteExtension on TripSaleRoute {
  static TripSaleRoute _fromState(GoRouterState state) => const TripSaleRoute();

  String get location => GoRouteData.$location(
        '/trip-sale',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripProposalDetailRoute => GoRouteData.$route(
      path: '/trip-management-detail',
      factory: $TripProposalDetailRouteExtension._fromState,
    );

extension $TripProposalDetailRouteExtension on TripProposalDetailRoute {
  static TripProposalDetailRoute _fromState(GoRouterState state) =>
      const TripProposalDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-management-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripUserAssignDetailRoute => GoRouteData.$route(
      path: '/trip-user-assign-detail',
      factory: $TripUserAssignDetailRouteExtension._fromState,
    );

extension $TripUserAssignDetailRouteExtension on TripUserAssignDetailRoute {
  static TripUserAssignDetailRoute _fromState(GoRouterState state) =>
      const TripUserAssignDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-user-assign-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleFormRoute => GoRouteData.$route(
      path: '/trip-sale-form',
      factory: $TripSaleFormRouteExtension._fromState,
    );

extension $TripSaleFormRouteExtension on TripSaleFormRoute {
  static TripSaleFormRoute _fromState(GoRouterState state) => TripSaleFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/trip-sale-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleDetailRoute => GoRouteData.$route(
      path: '/trip-sale-detail',
      factory: $TripSaleDetailRouteExtension._fromState,
    );

extension $TripSaleDetailRouteExtension on TripSaleDetailRoute {
  static TripSaleDetailRoute _fromState(GoRouterState state) =>
      const TripSaleDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleRequestDetailRoute => GoRouteData.$route(
      path: '/trip-sale-request-detail',
      factory: $TripSaleRequestDetailRouteExtension._fromState,
    );

extension $TripSaleRequestDetailRouteExtension on TripSaleRequestDetailRoute {
  static TripSaleRequestDetailRoute _fromState(GoRouterState state) =>
      const TripSaleRequestDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-request-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $convertToTripSaleInvoiceRoute => GoRouteData.$route(
      path: '/convert-to-trip-sale-invoice',
      factory: $ConvertToTripSaleInvoiceRouteExtension._fromState,
    );

extension $ConvertToTripSaleInvoiceRouteExtension
    on ConvertToTripSaleInvoiceRoute {
  static ConvertToTripSaleInvoiceRoute _fromState(GoRouterState state) =>
      ConvertToTripSaleInvoiceRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/convert-to-trip-sale-invoice',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleInvoiceDetailRoute => GoRouteData.$route(
      path: '/trip-sale-invoice-detail',
      factory: $TripSaleInvoiceDetailRouteExtension._fromState,
    );

extension $TripSaleInvoiceDetailRouteExtension on TripSaleInvoiceDetailRoute {
  static TripSaleInvoiceDetailRoute _fromState(GoRouterState state) =>
      const TripSaleInvoiceDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-invoice-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeTripSalePaymentReceiveRoute => GoRouteData.$route(
      path: '/make-trip-sale-payment-receive',
      factory: $MakeTripSalePaymentReceiveRouteExtension._fromState,
    );

extension $MakeTripSalePaymentReceiveRouteExtension
    on MakeTripSalePaymentReceiveRoute {
  static MakeTripSalePaymentReceiveRoute _fromState(GoRouterState state) =>
      const MakeTripSalePaymentReceiveRoute();

  String get location => GoRouteData.$location(
        '/make-trip-sale-payment-receive',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSalePaymentReceiveDetailRoute => GoRouteData.$route(
      path: '/trip-sale-payment-receive-detail',
      factory: $TripSalePaymentReceiveDetailRouteExtension._fromState,
    );

extension $TripSalePaymentReceiveDetailRouteExtension
    on TripSalePaymentReceiveDetailRoute {
  static TripSalePaymentReceiveDetailRoute _fromState(GoRouterState state) =>
      const TripSalePaymentReceiveDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-payment-receive-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleReturnRoute => GoRouteData.$route(
      path: '/trip-sale-return',
      factory: $TripSaleReturnRouteExtension._fromState,
    );

extension $TripSaleReturnRouteExtension on TripSaleReturnRoute {
  static TripSaleReturnRoute _fromState(GoRouterState state) =>
      const TripSaleReturnRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-return',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleReturnFormRoute => GoRouteData.$route(
      path: '/trip-sales-return-form',
      factory: $TripSaleReturnFormRouteExtension._fromState,
    );

extension $TripSaleReturnFormRouteExtension on TripSaleReturnFormRoute {
  static TripSaleReturnFormRoute _fromState(GoRouterState state) =>
      TripSaleReturnFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/trip-sales-return-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleReturnDetailRoute => GoRouteData.$route(
      path: '/trip-sale-return-detail',
      factory: $TripSaleReturnDetailRouteExtension._fromState,
    );

extension $TripSaleReturnDetailRouteExtension on TripSaleReturnDetailRoute {
  static TripSaleReturnDetailRoute _fromState(GoRouterState state) =>
      const TripSaleReturnDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-return-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeTripSaleReturnPaymentRoute => GoRouteData.$route(
      path: '/make-trip-sale-return-payment',
      factory: $MakeTripSaleReturnPaymentRouteExtension._fromState,
    );

extension $MakeTripSaleReturnPaymentRouteExtension
    on MakeTripSaleReturnPaymentRoute {
  static MakeTripSaleReturnPaymentRoute _fromState(GoRouterState state) =>
      const MakeTripSaleReturnPaymentRoute();

  String get location => GoRouteData.$location(
        '/make-trip-sale-return-payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tripSaleReturnPaymentDetailRoute => GoRouteData.$route(
      path: '/trip-sale-return-payment-detail',
      factory: $TripSaleReturnPaymentDetailRouteExtension._fromState,
    );

extension $TripSaleReturnPaymentDetailRouteExtension
    on TripSaleReturnPaymentDetailRoute {
  static TripSaleReturnPaymentDetailRoute _fromState(GoRouterState state) =>
      const TripSaleReturnPaymentDetailRoute();

  String get location => GoRouteData.$location(
        '/trip-sale-return-payment-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentApprovalDetailRoute => GoRouteData.$route(
      path: '/consignment-approval-detail',
      factory: $ConsignmentApprovalDetailRouteExtension._fromState,
    );

extension $ConsignmentApprovalDetailRouteExtension
    on ConsignmentApprovalDetailRoute {
  static ConsignmentApprovalDetailRoute _fromState(GoRouterState state) =>
      const ConsignmentApprovalDetailRoute();

  String get location => GoRouteData.$location(
        '/consignment-approval-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentContractDetailRoute => GoRouteData.$route(
      path: '/consignment-contract-detail',
      factory: $ConsignmentContractDetailRouteExtension._fromState,
    );

extension $ConsignmentContractDetailRouteExtension
    on ConsignmentContractDetailRoute {
  static ConsignmentContractDetailRoute _fromState(GoRouterState state) =>
      const ConsignmentContractDetailRoute();

  String get location => GoRouteData.$location(
        '/consignment-contract-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentRoute => GoRouteData.$route(
      path: '/consignment',
      factory: $ConsignmentRouteExtension._fromState,
    );

extension $ConsignmentRouteExtension on ConsignmentRoute {
  static ConsignmentRoute _fromState(GoRouterState state) =>
      const ConsignmentRoute();

  String get location => GoRouteData.$location(
        '/consignment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentFormRoute => GoRouteData.$route(
      path: '/consignment-form',
      factory: $ConsignmentFormRouteExtension._fromState,
    );

extension $ConsignmentFormRouteExtension on ConsignmentFormRoute {
  static ConsignmentFormRoute _fromState(GoRouterState state) =>
      ConsignmentFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/consignment-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentDetailRoute => GoRouteData.$route(
      path: '/consignment-detail',
      factory: $ConsignmentDetailRouteExtension._fromState,
    );

extension $ConsignmentDetailRouteExtension on ConsignmentDetailRoute {
  static ConsignmentDetailRoute _fromState(GoRouterState state) =>
      ConsignmentDetailRoute(
        isOrderApproval:
            _$boolConverter(state.uri.queryParameters['is-order-approval']!),
      );

  String get location => GoRouteData.$location(
        '/consignment-detail',
        queryParams: {
          'is-order-approval': isOrderApproval.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $convertToConsignmentInvoiceRoute => GoRouteData.$route(
      path: '/convert-to-consignment-invoice',
      factory: $ConvertToConsignmentInvoiceRouteExtension._fromState,
    );

extension $ConvertToConsignmentInvoiceRouteExtension
    on ConvertToConsignmentInvoiceRoute {
  static ConvertToConsignmentInvoiceRoute _fromState(GoRouterState state) =>
      ConvertToConsignmentInvoiceRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/convert-to-consignment-invoice',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentInvoiceDetailRoute => GoRouteData.$route(
      path: '/consignment-invoice-detail',
      factory: $ConsignmentInvoiceDetailRouteExtension._fromState,
    );

extension $ConsignmentInvoiceDetailRouteExtension
    on ConsignmentInvoiceDetailRoute {
  static ConsignmentInvoiceDetailRoute _fromState(GoRouterState state) =>
      const ConsignmentInvoiceDetailRoute();

  String get location => GoRouteData.$location(
        '/consignment-invoice-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeConsignmentPaymentReceiveRoute => GoRouteData.$route(
      path: '/make-consignment-payment-receive',
      factory: $MakeConsignmentPaymentReceiveRouteExtension._fromState,
    );

extension $MakeConsignmentPaymentReceiveRouteExtension
    on MakeConsignmentPaymentReceiveRoute {
  static MakeConsignmentPaymentReceiveRoute _fromState(GoRouterState state) =>
      const MakeConsignmentPaymentReceiveRoute();

  String get location => GoRouteData.$location(
        '/make-consignment-payment-receive',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentPaymentReceiveDetailRoute => GoRouteData.$route(
      path: '/consignment-payment-receive-detail',
      factory: $ConsignmentPaymentReceiveDetailRouteExtension._fromState,
    );

extension $ConsignmentPaymentReceiveDetailRouteExtension
    on ConsignmentPaymentReceiveDetailRoute {
  static ConsignmentPaymentReceiveDetailRoute _fromState(GoRouterState state) =>
      const ConsignmentPaymentReceiveDetailRoute();

  String get location => GoRouteData.$location(
        '/consignment-payment-receive-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleReturnRoute => GoRouteData.$route(
      path: '/secondary-sale-return',
      factory: $SecondarySaleReturnRouteExtension._fromState,
    );

extension $SecondarySaleReturnRouteExtension on SecondarySaleReturnRoute {
  static SecondarySaleReturnRoute _fromState(GoRouterState state) =>
      const SecondarySaleReturnRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale-return',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleReturnFormRoute => GoRouteData.$route(
      path: '/secondary-sales-return-form',
      factory: $SecondarySaleReturnFormRouteExtension._fromState,
    );

extension $SecondarySaleReturnFormRouteExtension
    on SecondarySaleReturnFormRoute {
  static SecondarySaleReturnFormRoute _fromState(GoRouterState state) =>
      SecondarySaleReturnFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/secondary-sales-return-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleReturnDetailRoute => GoRouteData.$route(
      path: '/secondary-sale-return-detail',
      factory: $SecondarySaleReturnDetailRouteExtension._fromState,
    );

extension $SecondarySaleReturnDetailRouteExtension
    on SecondarySaleReturnDetailRoute {
  static SecondarySaleReturnDetailRoute _fromState(GoRouterState state) =>
      const SecondarySaleReturnDetailRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale-return-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeSecondarySaleReturnPaymentRoute => GoRouteData.$route(
      path: '/make-secondary-sale-return-payment',
      factory: $MakeSecondarySaleReturnPaymentRouteExtension._fromState,
    );

extension $MakeSecondarySaleReturnPaymentRouteExtension
    on MakeSecondarySaleReturnPaymentRoute {
  static MakeSecondarySaleReturnPaymentRoute _fromState(GoRouterState state) =>
      const MakeSecondarySaleReturnPaymentRoute();

  String get location => GoRouteData.$location(
        '/make-secondary-sale-return-payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $secondarySaleReturnPaymentDetailRoute => GoRouteData.$route(
      path: '/secondary-sale-return-payment-detail',
      factory: $SecondarySaleReturnPaymentDetailRouteExtension._fromState,
    );

extension $SecondarySaleReturnPaymentDetailRouteExtension
    on SecondarySaleReturnPaymentDetailRoute {
  static SecondarySaleReturnPaymentDetailRoute _fromState(
          GoRouterState state) =>
      const SecondarySaleReturnPaymentDetailRoute();

  String get location => GoRouteData.$location(
        '/secondary-sale-return-payment-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentReturnRoute => GoRouteData.$route(
      path: '/consignment-return',
      factory: $ConsignmentReturnRouteExtension._fromState,
    );

extension $ConsignmentReturnRouteExtension on ConsignmentReturnRoute {
  static ConsignmentReturnRoute _fromState(GoRouterState state) =>
      const ConsignmentReturnRoute();

  String get location => GoRouteData.$location(
        '/consignment-return',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentReturnFormRoute => GoRouteData.$route(
      path: '/consignment-return-form',
      factory: $ConsignmentReturnFormRouteExtension._fromState,
    );

extension $ConsignmentReturnFormRouteExtension on ConsignmentReturnFormRoute {
  static ConsignmentReturnFormRoute _fromState(GoRouterState state) =>
      ConsignmentReturnFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/consignment-return-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $consignmentReturnDetailRoute => GoRouteData.$route(
      path: '/consignment-return-detail',
      factory: $ConsignmentReturnDetailRouteExtension._fromState,
    );

extension $ConsignmentReturnDetailRouteExtension
    on ConsignmentReturnDetailRoute {
  static ConsignmentReturnDetailRoute _fromState(GoRouterState state) =>
      const ConsignmentReturnDetailRoute();

  String get location => GoRouteData.$location(
        '/consignment-return-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $expenseFormRoute => GoRouteData.$route(
      path: '/expense-form',
      factory: $ExpenseFormRouteExtension._fromState,
    );

extension $ExpenseFormRouteExtension on ExpenseFormRoute {
  static ExpenseFormRoute _fromState(GoRouterState state) => ExpenseFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/expense-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $expenseDetailRoute => GoRouteData.$route(
      path: '/expense-detail',
      factory: $ExpenseDetailRouteExtension._fromState,
    );

extension $ExpenseDetailRouteExtension on ExpenseDetailRoute {
  static ExpenseDetailRoute _fromState(GoRouterState state) =>
      ExpenseDetailRoute(
        id: state.uri.queryParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/expense-detail',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $allFilterRoute => GoRouteData.$route(
      path: '/all-filter',
      factory: $AllFilterRouteExtension._fromState,
    );

extension $AllFilterRouteExtension on AllFilterRoute {
  static AllFilterRoute _fromState(GoRouterState state) => AllFilterRoute(
        state.uri.queryParameters['title'],
      );

  String get location => GoRouteData.$location(
        '/all-filter',
        queryParams: {
          if (title != null) 'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $paymentHistoryDetailRoute => GoRouteData.$route(
      path: '/payment-history-detail',
      factory: $PaymentHistoryDetailRouteExtension._fromState,
    );

extension $PaymentHistoryDetailRouteExtension on PaymentHistoryDetailRoute {
  static PaymentHistoryDetailRoute _fromState(GoRouterState state) =>
      const PaymentHistoryDetailRoute();

  String get location => GoRouteData.$location(
        '/payment-history-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $deliveryNoteRoute => GoRouteData.$route(
      path: '/delivery-note',
      factory: $DeliveryNoteRouteExtension._fromState,
    );

extension $DeliveryNoteRouteExtension on DeliveryNoteRoute {
  static DeliveryNoteRoute _fromState(GoRouterState state) =>
      const DeliveryNoteRoute();

  String get location => GoRouteData.$location(
        '/delivery-note',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $deliveryNoteDetailRoute => GoRouteData.$route(
      path: '/delivery-note-detail',
      factory: $DeliveryNoteDetailRouteExtension._fromState,
    );

extension $DeliveryNoteDetailRouteExtension on DeliveryNoteDetailRoute {
  static DeliveryNoteDetailRoute _fromState(GoRouterState state) =>
      DeliveryNoteDetailRoute();

  String get location => GoRouteData.$location(
        '/delivery-note-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signToDeliveryNoteRoute => GoRouteData.$route(
      path: '/delivery-note-sign',
      factory: $SignToDeliveryNoteRouteExtension._fromState,
    );

extension $SignToDeliveryNoteRouteExtension on SignToDeliveryNoteRoute {
  static SignToDeliveryNoteRoute _fromState(GoRouterState state) =>
      const SignToDeliveryNoteRoute();

  String get location => GoRouteData.$location(
        '/delivery-note-sign',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $deliveryNoteProductListRoute => GoRouteData.$route(
      path: '/delivery-note--product-list',
      factory: $DeliveryNoteProductListRouteExtension._fromState,
    );

extension $DeliveryNoteProductListRouteExtension
    on DeliveryNoteProductListRoute {
  static DeliveryNoteProductListRoute _fromState(GoRouterState state) =>
      DeliveryNoteProductListRoute();

  String get location => GoRouteData.$location(
        '/delivery-note--product-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $deliveryNoteProductDetailRoute => GoRouteData.$route(
      path: '/delivery-note--product-detail',
      factory: $DeliveryNoteProductDetailRouteExtension._fromState,
    );

extension $DeliveryNoteProductDetailRouteExtension
    on DeliveryNoteProductDetailRoute {
  static DeliveryNoteProductDetailRoute _fromState(GoRouterState state) =>
      DeliveryNoteProductDetailRoute();

  String get location => GoRouteData.$location(
        '/delivery-note--product-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $salePromotionDetailRoute => GoRouteData.$route(
      path: '/sale-promotion-detail',
      factory: $SalePromotionDetailRouteExtension._fromState,
    );

extension $SalePromotionDetailRouteExtension on SalePromotionDetailRoute {
  static SalePromotionDetailRoute _fromState(GoRouterState state) =>
      SalePromotionDetailRoute(
        int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/sale-promotion-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $marketingPromotionPlanRoute => GoRouteData.$route(
      path: '/marketingpromotionplan',
      factory: $MarketingPromotionPlanRouteExtension._fromState,
    );

extension $MarketingPromotionPlanRouteExtension on MarketingPromotionPlanRoute {
  static MarketingPromotionPlanRoute _fromState(GoRouterState state) =>
      const MarketingPromotionPlanRoute();

  String get location => GoRouteData.$location(
        '/marketingpromotionplan',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $marketingPromotionPlanDetailRoute => GoRouteData.$route(
      path: '/marketingpromotionplan-detail',
      factory: $MarketingPromotionPlanDetailRouteExtension._fromState,
    );

extension $MarketingPromotionPlanDetailRouteExtension
    on MarketingPromotionPlanDetailRoute {
  static MarketingPromotionPlanDetailRoute _fromState(GoRouterState state) =>
      MarketingPromotionPlanDetailRoute(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/marketingpromotionplan-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $goodRequisitionDetailRoute => GoRouteData.$route(
      path: '/goodrequisition-detail',
      factory: $GoodRequisitionDetailRouteExtension._fromState,
    );

extension $GoodRequisitionDetailRouteExtension on GoodRequisitionDetailRoute {
  static GoodRequisitionDetailRoute _fromState(GoRouterState state) =>
      GoodRequisitionDetailRoute(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/goodrequisition-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $promotionProductDetailRoute => GoRouteData.$route(
      path: '/promotion-product-detail',
      factory: $PromotionProductDetailRouteExtension._fromState,
    );

extension $PromotionProductDetailRouteExtension on PromotionProductDetailRoute {
  static PromotionProductDetailRoute _fromState(GoRouterState state) =>
      const PromotionProductDetailRoute();

  String get location => GoRouteData.$location(
        '/promotion-product-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $goodRequisitionFormRoute => GoRouteData.$route(
      path: '/goodrequisition-form',
      factory: $GoodRequisitionFormRouteExtension._fromState,
    );

extension $GoodRequisitionFormRouteExtension on GoodRequisitionFormRoute {
  static GoodRequisitionFormRoute _fromState(GoRouterState state) =>
      const GoodRequisitionFormRoute();

  String get location => GoRouteData.$location(
        '/goodrequisition-form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $invoiceDetailRoute => GoRouteData.$route(
      path: '/invoice-detail',
      factory: $InvoiceDetailRouteExtension._fromState,
    );

extension $InvoiceDetailRouteExtension on InvoiceDetailRoute {
  static InvoiceDetailRoute _fromState(GoRouterState state) =>
      InvoiceDetailRoute(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/invoice-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $receiptDetailRoute => GoRouteData.$route(
      path: '/receipt-detail',
      factory: $ReceiptDetailRouteExtension._fromState,
    );

extension $ReceiptDetailRouteExtension on ReceiptDetailRoute {
  static ReceiptDetailRoute _fromState(GoRouterState state) =>
      ReceiptDetailRoute(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/receipt-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $invoiceFormRoute => GoRouteData.$route(
      path: '/invoice-form',
      factory: $InvoiceFormRouteExtension._fromState,
    );

extension $InvoiceFormRouteExtension on InvoiceFormRoute {
  static InvoiceFormRoute _fromState(GoRouterState state) => InvoiceFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/invoice-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $invoiceProductFormRoute => GoRouteData.$route(
      path: '/invoice-product-form',
      factory: $InvoiceProductFormRouteExtension._fromState,
    );

extension $InvoiceProductFormRouteExtension on InvoiceProductFormRoute {
  static InvoiceProductFormRoute _fromState(GoRouterState state) =>
      const InvoiceProductFormRoute();

  String get location => GoRouteData.$location(
        '/invoice-product-form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $invoiceGiftItemFormRoute => GoRouteData.$route(
      path: '/invoice-gift-item-form',
      factory: $InvoiceGiftItemFormRouteExtension._fromState,
    );

extension $InvoiceGiftItemFormRouteExtension on InvoiceGiftItemFormRoute {
  static InvoiceGiftItemFormRoute _fromState(GoRouterState state) =>
      const InvoiceGiftItemFormRoute();

  String get location => GoRouteData.$location(
        '/invoice-gift-item-form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makePaymentReceiveRoute => GoRouteData.$route(
      path: '/make-payment-receive',
      factory: $MakePaymentReceiveRouteExtension._fromState,
    );

extension $MakePaymentReceiveRouteExtension on MakePaymentReceiveRoute {
  static MakePaymentReceiveRoute _fromState(GoRouterState state) =>
      const MakePaymentReceiveRoute();

  String get location => GoRouteData.$location(
        '/make-payment-receive',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $notFoundRoute => GoRouteData.$route(
      path: '/404',
      factory: $NotFoundRouteExtension._fromState,
    );

extension $NotFoundRouteExtension on NotFoundRoute {
  static NotFoundRoute _fromState(GoRouterState state) => const NotFoundRoute();

  String get location => GoRouteData.$location(
        '/404',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $noPermissionRoute => GoRouteData.$route(
      path: '/no-permission',
      factory: $NoPermissionRouteExtension._fromState,
    );

extension $NoPermissionRouteExtension on NoPermissionRoute {
  static NoPermissionRoute _fromState(GoRouterState state) =>
      const NoPermissionRoute();

  String get location => GoRouteData.$location(
        '/no-permission',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $pinCodeRoute => GoRouteData.$route(
      path: '/pin-code',
      factory: $PinCodeRouteExtension._fromState,
    );

extension $PinCodeRouteExtension on PinCodeRoute {
  static PinCodeRoute _fromState(GoRouterState state) => PinCodeRoute(
        hasOperation:
            _$boolConverter(state.uri.queryParameters['has-operation']!),
        isOldPinPrompt: _$convertMapValue('is-old-pin-prompt',
                state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/pin-code',
        queryParams: {
          'has-operation': hasOperation.toString(),
          if (isOldPinPrompt != false)
            'is-old-pin-prompt': isOldPinPrompt.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

RouteBase get $marketingPromotionReturnRoute => GoRouteData.$route(
      path: '/marketing-promotion-return',
      factory: $MarketingPromotionReturnRouteExtension._fromState,
    );

extension $MarketingPromotionReturnRouteExtension
    on MarketingPromotionReturnRoute {
  static MarketingPromotionReturnRoute _fromState(GoRouterState state) =>
      const MarketingPromotionReturnRoute();

  String get location => GoRouteData.$location(
        '/marketing-promotion-return',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $returnProductFormRoute => GoRouteData.$route(
      path: '/return-product-form',
      factory: $ReturnProductFormRouteExtension._fromState,
    );

extension $ReturnProductFormRouteExtension on ReturnProductFormRoute {
  static ReturnProductFormRoute _fromState(GoRouterState state) =>
      const ReturnProductFormRoute();

  String get location => GoRouteData.$location(
        '/return-product-form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $returnGiftItemFormRoute => GoRouteData.$route(
      path: '/return-gift-item-form',
      factory: $ReturnGiftItemFormRouteExtension._fromState,
    );

extension $ReturnGiftItemFormRouteExtension on ReturnGiftItemFormRoute {
  static ReturnGiftItemFormRoute _fromState(GoRouterState state) =>
      const ReturnGiftItemFormRoute();

  String get location => GoRouteData.$location(
        '/return-gift-item-form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $marketingPromotionReturnFormRoute => GoRouteData.$route(
      path: '/marketing-promotion-return-form',
      factory: $MarketingPromotionReturnFormRouteExtension._fromState,
    );

extension $MarketingPromotionReturnFormRouteExtension
    on MarketingPromotionReturnFormRoute {
  static MarketingPromotionReturnFormRoute _fromState(GoRouterState state) =>
      MarketingPromotionReturnFormRoute(
        isEdit: _$boolConverter(state.uri.queryParameters['is-edit']!),
      );

  String get location => GoRouteData.$location(
        '/marketing-promotion-return-form',
        queryParams: {
          'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $marketingPromotionReturnDetailRoute => GoRouteData.$route(
      path: '/marketing-promotion-return-detail',
      factory: $MarketingPromotionReturnDetailRouteExtension._fromState,
    );

extension $MarketingPromotionReturnDetailRouteExtension
    on MarketingPromotionReturnDetailRoute {
  static MarketingPromotionReturnDetailRoute _fromState(GoRouterState state) =>
      MarketingPromotionReturnDetailRoute(
        int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/marketing-promotion-return-detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $makeReturnPaymentRoute => GoRouteData.$route(
      path: '/make-return-payment',
      factory: $MakeReturnPaymentRouteExtension._fromState,
    );

extension $MakeReturnPaymentRouteExtension on MakeReturnPaymentRoute {
  static MakeReturnPaymentRoute _fromState(GoRouterState state) =>
      const MakeReturnPaymentRoute();

  String get location => GoRouteData.$location(
        '/make-return-payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $marketingPromotionReturnPaymentDetailRoute => GoRouteData.$route(
      path: '/return-payment-detail',
      factory: $MarketingPromotionReturnPaymentDetailRouteExtension._fromState,
    );

extension $MarketingPromotionReturnPaymentDetailRouteExtension
    on MarketingPromotionReturnPaymentDetailRoute {
  static MarketingPromotionReturnPaymentDetailRoute _fromState(
          GoRouterState state) =>
      const MarketingPromotionReturnPaymentDetailRoute();

  String get location => GoRouteData.$location(
        '/return-payment-detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'a2f50aacca1ce505ec01196177d5f296a0c2dcec';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
