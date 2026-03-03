import 'dart:io';

import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/repos/secondary_sale_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_secondary_sale_form_notifier.g.dart';

@riverpod
class AsyncSecondarySaleFormNotifier extends _$AsyncSecondarySaleFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createSecondarySale(SecondarySale secondarysale) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).createSecondarySale(secondarysale);
      ref.invalidate(paginatedSecondarySaleNotifierProvider);
      ref.invalidate(paginatedSecondarySaleOrderApprovalNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateSecondarySale(SecondarySale secondarysale) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).updateSecondarySale(secondarysale);
      ref.invalidate(paginatedSecondarySaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteSecondarySale(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).deleteSecondarySale(id, reason);
      ref.invalidate(paginatedSecondarySaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> convertToInvoice(SecondarySaleInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).covertToInvoice(invoice);
      ref.invalidate(paginatedSecondarySaleNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateSecondarySaleInvoice(SecondarySaleInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).updateInvoice(invoice);
      ref.invalidate(paginatedSecondarySaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteInvoice(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).deleteInvoice(id, reason);
      ref.invalidate(paginatedSecondarySaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(File? attachment, File signFile, SecondarySaleReceipt secondarySaleReceipt) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).makePaymentReceive(attachment, signFile, secondarySaleReceipt);
      ref.invalidate(paginatedSecondarySaleInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deletePayment(int id, String reson) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(secondarySaleRepositoryProvider).deletePayment(id, reson);
      ref.invalidate(paginatedSecondarySaleReceiptNotifierProvider);
      return Some(res);
    });
  }
}
