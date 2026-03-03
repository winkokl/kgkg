import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/make_payment_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return_dto.dart';
part 'async_marketing_promotion_return_form_notifier.g.dart';

@riverpod
class AsyncMarketingPromotionReturnFormNotifier extends _$AsyncMarketingPromotionReturnFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> create(MarketingPromotionReturn marketingPromotionReturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.post('${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/create', data: MarketingPromotionReturnDTO.fromDomain(marketingPromotionReturn).toJson());
      ref.invalidate(paginatedMarketingPromotionReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateReturn(MarketingPromotionReturn marketingPromotionReturn) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.patch('${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/update/${marketingPromotionReturn.id}', data: MarketingPromotionReturnDTO.fromDomain(marketingPromotionReturn).toJson());
      ref.invalidate(paginatedMarketingPromotionReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteMarketingPromotionReturn(int id, String reason) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.delete('${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/delete/$id', data: {'delete_reason': reason});
      ref.invalidate(paginatedMarketingPromotionReturnNotifierProvider);
      return Some(res);
    });
  }

  Future<void> makePaymentReceive(MakePaymentDTO makePaymentDTO) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final dioClient = ref.watch(dioClientProvider);
      final res = await dioClient.post(
        '${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/make-payment',
        data: makePaymentDTO.toJson(),
      );
      ref.invalidate(paginatedMarketingPromotionReturnNotifierProvider);
      return Some(res);
    });
  }
}
