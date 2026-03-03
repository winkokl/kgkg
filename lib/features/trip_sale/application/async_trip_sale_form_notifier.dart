import 'dart:io';

import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/repos/trip_sale_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_trip_sale_form_notifier.g.dart';

@riverpod
class AsyncTripSaleFormNotifier extends _$AsyncTripSaleFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> deleteTripSaleRequest(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deleteTripSaleRequest(id, reason);
      ref.invalidate(paginatedTripSaleRequestNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteTripManagement(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deleteTripManagement(id, reason);
      ref.invalidate(paginatedTripManagementNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteTripUserAssign(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deleteTripUserAssign(id, reason);
      ref.invalidate(paginatedTripUserAssignNotifierProvider);
      return Some(res);
    });
  }

  Future<void> createTripSale(TripSale tripsale) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).createTripSale(tripsale);
      ref.invalidate(paginatedTripSaleNotifierProvider);
      ref.invalidate(paginatedTripSaleRequestNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateTripSale(TripSale tripsale) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).updateTripSale(tripsale);
      ref.invalidate(paginatedTripSaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteTripSale(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deleteTripSale(id, reason);
      ref.invalidate(paginatedTripSaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> convertToInvoice(TripSaleInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).covertToInvoice(invoice);
      ref.invalidate(paginatedTripSaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateTripSaleInvoice(TripSaleInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).updateInvoice(invoice);
      ref.invalidate(paginatedTripSaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteInvoice(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deleteInvoice(id, reason);
      ref.invalidate(paginatedTripSaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(File? attachment, File signFile, TripSaleReceipt tripSaleReceipt) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).makePaymentReceive(attachment, signFile, tripSaleReceipt);
      ref.invalidate(paginatedTripSaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deletePayment(int id, String reson) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).deletePayment(id, reson);
      ref.invalidate(paginatedTripSaleReceiptNotifierProvider);
      return Some(res);
    });
  }
}
