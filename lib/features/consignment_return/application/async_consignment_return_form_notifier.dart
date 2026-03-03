import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/infrastructure/repos/consignment_return_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_consignment_return_form_notifier.g.dart';

@riverpod
class AsyncConsignmentReturnFormNotifier extends _$AsyncConsignmentReturnFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createConsignmentReturn(ConsignmentReturn consignmentreturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentReturnRepositoryProvider).createConsignmentReturn(consignmentreturn);
      ref.invalidate(paginatedConsignmentReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateConsignmentReturn(ConsignmentReturn consignmentreturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentReturnRepositoryProvider).updateConsignmentReturn(consignmentreturn);
      ref.invalidate(paginatedConsignmentReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteConsignmentReturn(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentReturnRepositoryProvider).deleteConsignmentReturn(id, reason);
      ref.invalidate(paginatedConsignmentReturnNotifierProvider);
      return Some(res);
    });
  }
}
