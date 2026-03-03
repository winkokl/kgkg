import 'package:mgkaung_dms_mobile/auth/presentation/sign_in_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/navigation_transition.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/pin_code_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/splash_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_approval_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_contract_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/business_unit_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/business_unit_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/customer_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/customer_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/customer_screen.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/delivery_note_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/delivery_note_product_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/delivery_note_product_list_screen.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/delivery_note_screen.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/sign_to_delivery_note_screen.dart';
import 'package:mgkaung_dms_mobile/features/home/presentation/home_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/good_requisition_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/good_requisition_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/good_requisition_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/inovice_poduct_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/invoice_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/invoice_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/invoice_gift_item_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/make_payment_receive_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/marketing_promotion_plan_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/marketing_promotion_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/promotion_product_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/receipt_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/make_return_payment_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/marketing_promotion_return_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/marketing_promotion_return_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/marketing_promotion_return_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/return_gift_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/return_product_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/return_receipt_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/edit_product_screen.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/product_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/product_list_screen.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/select_product_screen.dart';
import 'package:mgkaung_dms_mobile/features/profile/presentation/change_password_screen.dart';
import 'package:mgkaung_dms_mobile/features/profile/presentation/profile_screen.dart';
import 'package:mgkaung_dms_mobile/features/profile/presentation/setting_screen.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/presentation/sale_promotion_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_proposal_detail.screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_request_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/trip_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/make_trip_sale_return_payment_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/trip_sale_return_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/trip_sale_return_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/trip_sale_return_payment_details_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/trip_sale_return_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';

import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/not_found_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/scaffold_with_nested_navigation.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/consignment_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/consignment_return_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/consignment_return_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/consignment_return_screen.dart';
import 'package:mgkaung_dms_mobile/features/core/screens/all_filter_screen.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/expense_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/expense_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/payment_history_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/secondary_sale_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/secondary_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/expense_screen.dart';
import 'package:mgkaung_dms_mobile/features/report/presentation/report_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_invoice_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_payment_receive_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/consignment_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/convert_to_consignment_invoice_screen.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/make_consignment_payment_receive_screen.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/sale_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/convert_to_secondary_sale_invoice_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/secondary_sale_invoice_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/make_secondary_sale_payment_receive_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/secondary_sale_payment_receive_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/secondary_sale_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/secondary_sale_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/make_secondary_sale_return_payment_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/secondary_sale_return_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/secondary_sale_return_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/secondary_sale_return_payment_details_screen.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/secondary_sale_return_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/convert_to_trip_sale_invoice_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/make_trip_sale_payment_receive_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_invoice_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_payment_receive_detail_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_sale_screen.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/trip_user_assign_detail_screen.dart';

part 'router.g.dart';

part 'routes/customer_routes.dart';
part 'routes/auth_routes.dart';
part 'routes/home_routes.dart';
part 'routes/product_routes.dart';
part 'routes/branches.dart';
part 'routes/secondary_sale_routes.dart';
part 'routes/trip_sale_routes.dart';
part 'routes/trip_sale_return_routes.dart';
part 'routes/consignment_routes.dart';
part 'routes/secondary_sale_return_routes.dart';
part 'routes/consignment_return_routes.dart';
part 'routes/expense_routes.dart';
part 'routes/filter_routes.dart';
part 'routes/payment_history_routes.dart';
part 'routes/report_routes.dart';
part 'routes/sale_routes.dart';
part 'routes/delivery_note_routes.dart';
part 'routes/sale_promotion_routes.dart';
part 'routes/marketing_promotion_routes.dart';
part 'routes/common_routes.dart';
part 'routes/marketing_promotion_return_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
// final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
// final reportNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'report');

@riverpod
// ignore: unsupported_provider_value
GoRouter goRouter(GoRouterRef ref) {
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());

  ref
    ..onDispose(isAuth.dispose)
    ..listen(
      authNotifierProvider.select((value) => value.whenData((value) => value.isAuth)),
      (_, next) {
        if (next.isLoading) return;
        isAuth.value = next;
      },
    );

  final router = GoRouter(
    initialLocation: const SplashRoute().location,
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    onException: (_, GoRouterState state, GoRouter router) {
      router.go('/404', extra: state.uri.toString());
    },
    redirect: (context, state) {
      final isSplash = state.matchedLocation == const SplashRoute().location;

      final isLoggingIn = state.matchedLocation == const SignInRoute().location;

      if (isAuth.value.unwrapPrevious().hasError) {
        return const SignInRoute().location;
      }

      if (isAuth.value.isLoading || !isAuth.value.hasValue) {
        return const SplashRoute().location;
      }

      final auth = isAuth.value.requireValue;

      if (isSplash) {
        return auth ? const HomeRoute().location : const SignInRoute().location;
      }
      if (isLoggingIn) {
        return auth ? const HomeRoute().location : null;
      }
      return auth ? null : const SignInRoute().location;
    },
    refreshListenable: isAuth,
    routes: $appRoutes,
  );

  ref.onDispose(router.dispose);

  return router;
}
