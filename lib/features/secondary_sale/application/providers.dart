// ignore_for_file: notifier_extends
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/promotion_eligible.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/repos/secondary_sale_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

/* Secondary Sale List
----------------------------------------------------------------
*/
@riverpod
class PaginatedSecondarySaleNotifier extends PaginatedAsyncNotifier<SecondarySale> {
  @override
  Future<PaginatedData<SecondarySale>> build() async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysaleRepo.getSecondarySales(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysaleRepo.getSecondarySales(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySale>> fetchNext(int page) async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysaleRepo.getSecondarySales(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySale>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedSecondarySaleOrderApprovalNotifier extends PaginatedAsyncNotifier<SecondarySale> {
  @override
  Future<PaginatedData<SecondarySale>> build() async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysaleRepo.getOrderApprovals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysaleRepo.getOrderApprovals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySale>> fetchNext(int page) async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysaleRepo.getOrderApprovals(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySale>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<SecondarySale> secondarySaleById(SecondarySaleByIdRef ref, int id) async {
  return await ref.watch(secondarySaleRepositoryProvider).getSecondarySaleById(id);
}

/* Secondary Sale Invoice List
----------------------------------------------------------------
*/
@riverpod
class PaginatedSecondarySaleInvoiceNotifier extends PaginatedAsyncNotifier<SecondarySaleInvoice> {
  @override
  Future<PaginatedData<SecondarySaleInvoice>> build() async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('ssinv'));
    final filter = ref.watch(filterApplyProvider('ssinv'));
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysaleRepo.getSecondarySaleInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysaleRepo.getSecondarySaleInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySaleInvoice>> fetchNext(int page) async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('ssinv'));
    final filter = ref.watch(filterApplyProvider('ssinv'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysaleRepo.getSecondarySaleInvoices(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySaleInvoice>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<SecondarySaleInvoice> secondarySaleInvoiceById(SecondarySaleInvoiceByIdRef ref, int id) async {
  return await ref.watch(secondarySaleRepositoryProvider).getSecondarySaleInvoiceById(id);
}

/* Secondary Sale Receipt List
----------------------------------------------------------------
*/
@riverpod
class PaginatedSecondarySaleReceiptNotifier extends PaginatedAsyncNotifier<SecondarySaleReceipt> {
  @override
  Future<PaginatedData<SecondarySaleReceipt>> build() async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysaleRepo.getSecondarySaleReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysaleRepo.getSecondarySaleReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySaleReceipt>> fetchNext(int page) async {
    final secondarysaleRepo = ref.watch(secondarySaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysaleRepo.getSecondarySaleReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySaleReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<SecondarySaleReceipt> paymentReceiveById(PaymentReceiveByIdRef ref, int id) async {
  return await ref.watch(secondarySaleRepositoryProvider).getPaymentReceiveById(id);
}

@riverpod
FutureOr<PromotionEligible> promotionEligible(PromotionEligibleRef ref, int invoiceId) async {
  return await ref.watch(secondarySaleRepositoryProvider).checkPromotionEligible(invoiceId);
}
