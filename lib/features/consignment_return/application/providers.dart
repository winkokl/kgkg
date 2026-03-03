import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/infrastructure/repos/consignment_return_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
FutureOr<ConsignmentReturn> consignmentReturnById(ConsignmentReturnByIdRef ref, int id) async {
  return await ref.watch(consignmentReturnRepositoryProvider).getConsignmentReturnById(id);
}

@riverpod
class PaginatedConsignmentReturnNotifier extends PaginatedAsyncNotifier<ConsignmentReturn> {
  @override
  Future<PaginatedData<ConsignmentReturn>> build() async {
    final consignmentreturnRepo = ref.watch(consignmentReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentreturnRepo.getConsignmentReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentreturnRepo.getConsignmentReturns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentReturn>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<ConsignmentReturn>> fetchNext(int page) async {
    final consignmentreturnRepo = ref.watch(consignmentReturnRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentreturnRepo.getConsignmentReturns(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<ConsignmentReturn>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}
