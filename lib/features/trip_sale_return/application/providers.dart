import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/repos/trip_sale_return_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
FutureOr<TripSaleReturn> tripSaleReturnById(TripSaleReturnByIdRef ref, int id) async {
  return await ref.watch(tripSaleReturnRepositoryProvider).getTripSaleReturnById(id);
}

@riverpod
class PaginatedTripSaleReturnNotifier extends PaginatedAsyncNotifier<TripSaleReturn> {
  @override
  Future<PaginatedData<TripSaleReturn>> build() async {
    final tripsalereturnRepo = ref.watch(tripSaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsalereturnRepo.getTripSaleReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsalereturnRepo.getTripSaleReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSaleReturn>> fetchNext(int page) async {
    final tripsalereturnRepo = ref.watch(tripSaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsalereturnRepo.getTripSaleReturns(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripSaleReturn>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedTripSaleReturnReceiptNotifier extends PaginatedAsyncNotifier<TripSaleReturnReceipt> {
  @override
  Future<PaginatedData<TripSaleReturnReceipt>> build() async {
    final tripsalereturnRepo = ref.watch(tripSaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsalereturnRepo.getTripSaleReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsalereturnRepo.getTripSaleReturnReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReturnReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSaleReturnReceipt>> fetchNext(int page) async {
    final tripsalereturnRepo = ref.watch(tripSaleReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsalereturnRepo.getTripSaleReturnReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripSaleReturnReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripSaleReturnReceipt> paymentReceiveById(PaymentReceiveByIdRef ref, int id) async {
  return await ref.watch(tripSaleReturnRepositoryProvider).getReturnPaymentReceiveById(id);
}
