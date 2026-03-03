// ignore_for_file: notifier_extends
import 'package:fpdart/fpdart.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
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
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt_dto.dart';
part 'providers.g.dart';

@riverpod
class PaginatedMarketingPromotionPlanNotifier extends PaginatedAsyncNotifier<MarketingPromotionPlan> {
  @override
  Future<PaginatedData<MarketingPromotionPlan>> build() async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getMarketingPromotionPlans(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<MarketingPromotionPlan>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getMarketingPromotionPlans(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<MarketingPromotionPlan>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<MarketingPromotionPlan>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getMarketingPromotionPlans(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<MarketingPromotionPlan>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<MarketingPromotionPlan>> getMarketingPromotionPlans({
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
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => MarketingPromotionPlanDTO.fromJson(e).toDomain()).toList();
  }
}

@riverpod
FutureOr<MarketingPromotionPlan> marketingPromotionPlanById(MarketingPromotionPlanByIdRef ref, int id) async {
  return ref.guardXFetch(() async {
    final res = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/edit/$id',
        );
    return MarketingPromotionPlanDTO.fromJson(res['data']).toDomain();
  });
}

@riverpod
class MarketingPromotionNotifier extends _$MarketingPromotionNotifier {
  @override
  FutureOr<Option<MarketingPromotionPlan>> build() => const None();

  Future<void> getById(int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(dioClientProvider).get(
            '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/edit/$id',
          );
      return Some(MarketingPromotionPlanDTO.fromJson(res['data']).toDomain());
    });
  }
}

@riverpod
class PaginatedGoodRequisitionNotifier extends PaginatedAsyncNotifier<GoodRequisition> {
  @override
  Future<PaginatedData<GoodRequisition>> build() async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getGoodRequisitions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<GoodRequisition>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getGoodRequisitions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<GoodRequisition>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<GoodRequisition>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getGoodRequisitions(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<GoodRequisition>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<GoodRequisition>> getGoodRequisitions({
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
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/good-requisition',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => GoodRequisitionDTO.fromJson(e).toDomain()).toList();
  }
}

@riverpod
FutureOr<GoodRequisition> goodRequisitionById(GoodRequisitionByIdRef ref, int id) async {
  return ref.guardXFetch(() async {
    final res = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/good-requisition/$id',
        );
    return GoodRequisitionDTO.fromJson(res['data']).toDomain();
  });
}

@riverpod
class PaginatedInvoiceNotifier extends PaginatedAsyncNotifier<Invoice> {
  @override
  Future<PaginatedData<Invoice>> build() async {
    final query = ref.watch(searchQueryNotifierProvider('cinv'));
    final filter = ref.watch(filterApplyProvider('cinv'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Invoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Invoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Invoice>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider('cinv'));
    final filter = ref.watch(filterApplyProvider('cinv'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getInvoices(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Invoice>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<Invoice>> getInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final queryParams = {
      "invoice_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allfilter != null) {
      queryParams.addEntries(AllFilterDTO.fromDomain(allfilter).toJson().entries);
    }

    final response = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/invoices',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => InvoiceDTO.fromJson(e).toDomain()).toList();
  }
}

@riverpod
FutureOr<Invoice> invoiceById(InvoiceByIdRef ref, int id) async {
  return ref.guardXFetch(() async {
    final res = await ref.watch(dioClientProvider).get(
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/invoices/$id',
        );
    return InvoiceDTO.fromJson(res['data']).toDomain();
  });
}

@riverpod
class PaginatedReceiptNotifier extends PaginatedAsyncNotifier<Receipt> {
  @override
  Future<PaginatedData<Receipt>> build() async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await getReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Receipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await getReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Receipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Receipt>> fetchNext(int page) async {
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await getReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Receipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }

  Future<List<Receipt>> getReceipts({
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
          '${ApiBase.baseUrl}/mobile/marketing-promotion-plan/payment-receives',
          cancelToken: cancelToken,
          queryParam: queryParams,
        );
    return (response['data'] as List).map((e) => ReceiptDTO.fromJson(e).toDomain()).toList();
  }
}
