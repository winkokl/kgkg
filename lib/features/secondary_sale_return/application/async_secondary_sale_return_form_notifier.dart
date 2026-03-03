import 'dart:io';

import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/repos/secondary_sale_return_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_secondary_sale_return_form_notifier.g.dart';

@riverpod
class AsyncSecondarySaleReturnFormNotifier extends _$AsyncSecondarySaleReturnFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createSecondarySaleReturn(SecondarySaleReturn secondarysalereturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleReturnRepositoryProvider).createSecondarySaleReturn(secondarysalereturn);
      ref.invalidate(paginatedSecondarySaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateSecondarySaleReturn(SecondarySaleReturn secondarysalereturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleReturnRepositoryProvider).updateSecondarySaleReturn(secondarysalereturn);
      ref.invalidate(paginatedSecondarySaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteSecondarySaleReturn(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleReturnRepositoryProvider).deleteSecondarySaleReturn(id, reason);
      ref.invalidate(paginatedSecondarySaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(File? attachment, File signFile, SecondarySaleReturnReceipt secondarySaleReturnReceipt) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleReturnRepositoryProvider).makePaymentReceive(attachment, signFile, secondarySaleReturnReceipt);
      ref.invalidate(paginatedSecondarySaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deletePayment(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleReturnRepositoryProvider).deletePayment(id, reason);
      ref.invalidate(paginatedSecondarySaleReturnReceiptNotifierProvider);
      return Some(res);
    });
  }
}
