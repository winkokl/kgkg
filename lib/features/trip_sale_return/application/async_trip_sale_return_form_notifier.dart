import 'dart:io';

import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/repos/trip_sale_return_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_trip_sale_return_form_notifier.g.dart';

@riverpod
class AsyncTripSaleReturnFormNotifier extends _$AsyncTripSaleReturnFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createTripSaleReturn(TripSaleReturn tripsalereturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleReturnRepositoryProvider).createTripSaleReturn(tripsalereturn);
      ref.invalidate(paginatedTripSaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateTripSaleReturn(TripSaleReturn tripsalereturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleReturnRepositoryProvider).updateTripSaleReturn(tripsalereturn);
      ref.invalidate(paginatedTripSaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteTripSaleReturn(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleReturnRepositoryProvider).deleteTripSaleReturn(id, reason);
      ref.invalidate(paginatedTripSaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(File? attachment, File signFile, TripSaleReturnReceipt tripSaleReturnReceipt) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleReturnRepositoryProvider).makePaymentReceive(attachment, signFile, tripSaleReturnReceipt);
      ref.invalidate(paginatedTripSaleReturnReceiptNotifierProvider);
      ref.invalidate(paginatedTripSaleReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deletePayment(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleReturnRepositoryProvider).deletePayment(id, reason);
      ref.invalidate(paginatedTripSaleReturnReceiptNotifierProvider);
      return Some(res);
    });
  }
}
