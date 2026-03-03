import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt_dto.dart';
part 'async_marketing_promotion_form_notifier.g.dart';

@riverpod
class AsyncMarketingPromotionFormNotifier extends _$AsyncMarketingPromotionFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> updateGoodRequisition(GoodRequisition goodrequisition) async {
    state = const AsyncValue.loading();
    final nonZeroCurrentQty = goodrequisition.products.where((element) => element.currentQty != 0).toList();
    final nonZeroCurrentQtyGift = goodrequisition.giftItems.where((element) => element.currentQty != 0).toList();
    final updatedGoodRequisition = goodrequisition.copyWith(
      products: nonZeroCurrentQty,
      giftItems: nonZeroCurrentQtyGift,
    );
    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/good-requisition/update/${goodrequisition.id}',
        data: GoodRequisitionDTO.fromDomain(updatedGoodRequisition).toJson(),
      );
      ref.invalidate(paginatedGoodRequisitionNotifierProvider);
      return Some(res);
    });
  }

  Future<void> convertToInvoice(Invoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.post('${ApiBase.baseUrl}/mobile/marketing-promotion-plan/invoice', data: InvoiceDTO.fromDomain(invoice).toJson());
      ref.invalidate(paginatedGoodRequisitionNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateInvoice(Invoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.patch('${ApiBase.baseUrl}/mobile/marketing-promotion-plan/invoices/update/${invoice.id}', data: InvoiceDTO.fromDomain(invoice).toJson());
      ref.invalidate(paginatedInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteInvoice(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.patch('${ApiBase.baseUrl}/mobile/marketing-promotion-plan/invoices/delete/$id', data: {'delete_reason': reason});
      ref.invalidate(paginatedInvoiceNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(Invoice invoice) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.post(
        '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/payment-receive',
        data: InvoiceSummaryDTO.fromDomain(invoice).toJson(),
      );
      ref.invalidate(paginatedInvoiceNotifierProvider);
      return Some(res);
    });
  }
}
