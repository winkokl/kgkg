import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/repos/customer_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
part 'async_customer_form_notifier.g.dart';

@riverpod
class AsyncCustomerFormNotifier extends _$AsyncCustomerFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createCustomer(Customer customer) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).createCustomer(customer);
      ref.invalidate(paginatedCustomerNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateCustomer(Customer customer) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).updateCustomer(customer);
      ref.invalidate(paginatedCustomerNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteCustomer(int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).deleteCustomer(id);
      ref.invalidate(paginatedCustomerNotifierProvider);
      return Some(res);
    });
  }

  Future<void> checkWayCustomerAvailablity(int userId) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      await ref.watch(customerRepositoryProvider).checkWayCustomerAvailablity(userId);
      return Some(CustomResponse.successResponse());
    });
  }

  Future<void> createBusinessUnit(BusinessUnit businessUnit) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).createBusinessUnit(businessUnit);
      ref.invalidate(paginatedBusinessUnitNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateBusinessUnit(BusinessUnit businessUnit) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).updateBusinessUnit(businessUnit);
      ref.invalidate(paginatedBusinessUnitNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteBusinessUnit(int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(customerRepositoryProvider).deleteBusinessUnit(id);
      ref.invalidate(paginatedBusinessUnitNotifierProvider);
      return Some(res);
    });
  }
}
