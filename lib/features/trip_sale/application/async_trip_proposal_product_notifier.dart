import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/repos/trip_sale_repository.dart';
part 'async_trip_proposal_product_notifier.g.dart';

@riverpod
class AsyncTripProposalProductFormNotifier extends _$AsyncTripProposalProductFormNotifier {
  @override
  FutureOr<Option<List<Product>>> build() => const None();

  Future<void> getTripProposalProduct(int tripId, int warehouseId) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(tripSaleRepositoryProvider).getTripProposalProducts(tripId, warehouseId);
      return Some(res);
    });
  }
}
