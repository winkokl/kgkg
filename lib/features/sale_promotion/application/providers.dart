// ignore_for_file: notifier_extends
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/repos/sale_promotion_repository.dart';

part 'providers.g.dart';

/* Secondary Sale List
----------------------------------------------------------------
*/
@riverpod
class PaginatedSalePromotionNotifier extends PaginatedAsyncNotifier<SalePromotion> {
  @override
  Future<PaginatedData<SalePromotion>> build() async {
    final deliverynoteRepo = ref.watch(salePromotionRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await deliverynoteRepo.getSalePromotions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SalePromotion>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await deliverynoteRepo.getSalePromotions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SalePromotion>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SalePromotion>> fetchNext(int page) async {
    final deliverynoteRepo = ref.watch(salePromotionRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await deliverynoteRepo.getSalePromotions(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SalePromotion>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<SalePromotion> salePromotionById(SalePromotionByIdRef ref, int id) async {
  return await ref.watch(salePromotionRepositoryProvider).getSalePromotionById(id);
}

@riverpod
FutureOr<List<SalePromotion>> salePromotionsByCusChannelWay(SalePromotionsByCusChannelWayRef ref, int cusId, int wayId, String startDate) async {
  return ref.guardXFetch(() async => await ref.watch(salePromotionRepositoryProvider).getSalePromotionsByCusChannelWay(cusId, wayId, startDate));
}

@riverpod
FutureOr<SalePromotion> salePromotionsByCusChannelWayById(SalePromotionsByCusChannelWayByIdRef ref, int id) async {
  return ref.guardXFetch(() async => await ref.watch(salePromotionRepositoryProvider).getSalePromotionsByCusChannelWayById(id));
}
