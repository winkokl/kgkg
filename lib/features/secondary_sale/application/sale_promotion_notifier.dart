import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/repos/sale_promotion_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sale_promotion_notifier.g.dart';

@riverpod
class SalePromotionNotifier extends _$SalePromotionNotifier {
  @override
  FutureOr<Option<SalePromotion>> build() => const None();

  Future<void> getById(int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(salePromotionRepositoryProvider).getSalePromotionsByCusChannelWayById(id);
      return Some(res);
    });
  }

  Future<void> getByIdfortrip(int id) async {
    state = const AsyncValue.loading();

    final res = await ref.watch(salePromotionRepositoryProvider).getSalePromotionsByCusChannelWayById(id);
    state = AsyncValue.data(Some(res));
  }
}
