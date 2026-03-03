import 'dart:io';

import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/repos/consignment_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_consignment_form_notifier.g.dart';

@riverpod
class AsyncConsignmentFormNotifier extends _$AsyncConsignmentFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> deleteConsignmentContract(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).deleteConsignmentContract(id, reason);
      ref.invalidate(paginatedConsignmentContractNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteConsignmentApproval(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).deleteConsignmentApproval(id, reason);
      ref.invalidate(paginatedConsignmentApprovalNotifierProvider);
      return Some(res);
    });
  }

  Future<void> createConsignment(Consignment consignment) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).createConsignment(consignment);
      ref.invalidate(paginatedConsignmentNotifierProvider);
      ref.invalidate(paginatedConsignmentApprovalNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateConsignment(Consignment consignment) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).updateConsignment(consignment);
      ref.invalidate(paginatedConsignmentNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteConsignment(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).deleteConsignment(id, reason);
      ref.invalidate(paginatedConsignmentNotifierProvider);
      return Some(res);
    });
  }

  Future<void> convertToInvoice(ConsignmentInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).covertToInvoice(invoice);
      ref.invalidate(paginatedConsignmentNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateConsignmentInvoice(ConsignmentInvoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).updateInvoice(invoice);
      ref.invalidate(paginatedConsignmentInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteInvoice(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).deleteInvoice(id, reason);
      ref.invalidate(paginatedConsignmentInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(File? attachment, File signFile, ConsignmentReceipt consignmentReceipt) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).makePaymentReceive(attachment, signFile, consignmentReceipt);
      ref.invalidate(paginatedConsignmentInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deletePayment(int id, String reson) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(consignmentRepositoryProvider).deletePayment(id, reson);
      ref.invalidate(paginatedConsignmentReceiptNotifierProvider);
      return Some(res);
    });
  }
}
