// ignore_for_file: notifier_extends
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/return_receipt.dart';
part 'providers.g.dart';

@riverpod
class PaginatedMarketingPromotionReturnNotifier extends PaginatedAsyncNotifier<MarketingPromotionReturn> {
  @override
  Future<PaginatedData<MarketingPromotionReturn>> build() async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getMarketingPromotionReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<MarketingPromotionReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getMarketingPromotionReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<MarketingPromotionReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<MarketingPromotionReturn>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getMarketingPromotionReturns(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<MarketingPromotionReturn>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<MarketingPromotionReturn>> getMarketingPromotionReturns({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final queryParams = {
      "name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allfilter != null) {
      queryParams.addEntries(AllFilterDTO.fromDomain(allfilter).toJson().entries);
    }

    final response = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => MarketingPromotionReturnDTO.fromJson(e).toDomain()).toList();
  }
}

@riverpod
FutureOr<MarketingPromotionReturn> marketingPromotionReturnById(MarketingPromotionReturnByIdRef ref, int id) async {
  return ref.guardXFetch(() async {
    final res = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/edit/$id',
        );
    return MarketingPromotionReturnDTO.fromJson(res['data']).toDomain();
  });
}

@riverpod
class PaginatedReturnReceiptNotifier extends PaginatedAsyncNotifier<ReturnReceipt> {
  @override
  Future<PaginatedData<ReturnReceipt>> build() async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<ReturnReceipt>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getReturnReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<ReturnReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<ReturnReceipt>> getReturnReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final queryParams = {
      "code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allfilter != null) {
      queryParams.addEntries(AllFilterDTO.fromDomain(allfilter).toJson().entries);
    }

    final response = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan-return/make-payment',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => ReturnReceipt.fromJson(e)).toList();
  }
}
