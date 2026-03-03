import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/repos/secondary_sale_return_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
FutureOr<SecondarySaleReturn> secondarySaleReturnById(SecondarySaleReturnByIdRef ref, int id) async {
  return await ref.watch(secondarySaleReturnRepositoryProvider).getSecondarySaleReturnById(id);
}

@riverpod
class PaginatedSecondarySaleReturnNotifier extends PaginatedAsyncNotifier<SecondarySaleReturn> {
  @override
  Future<PaginatedData<SecondarySaleReturn>> build() async {
    final secondarysalereturnRepo = ref.watch(secondarySaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysalereturnRepo.getSecondarySaleReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysalereturnRepo.getSecondarySaleReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySaleReturn>> fetchNext(int page) async {
    final secondarysalereturnRepo = ref.watch(secondarySaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysalereturnRepo.getSecondarySaleReturns(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySaleReturn>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedSecondarySaleReturnReceiptNotifier extends PaginatedAsyncNotifier<SecondarySaleReturnReceipt> {
  @override
  Future<PaginatedData<SecondarySaleReturnReceipt>> build() async {
    final secondarysalereturnRepo = ref.watch(secondarySaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await secondarysalereturnRepo.getSecondarySaleReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await secondarysalereturnRepo.getSecondarySaleReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<SecondarySaleReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<SecondarySaleReturnReceipt>> fetchNext(int page) async {
    final secondarysalereturnRepo = ref.watch(secondarySaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await secondarysalereturnRepo.getSecondarySaleReturnReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<SecondarySaleReturnReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<SecondarySaleReturnReceipt> paymentReceiveById(PaymentReceiveByIdRef ref, int id) async {
  return await ref.watch(secondarySaleReturnRepositoryProvider).getReturnPaymentReceiveById(id);
}
