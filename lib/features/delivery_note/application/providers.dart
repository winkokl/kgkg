// ignore_for_file: notifier_extends
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/infrastructure/repos/delivery_note_repository.dart';

part 'providers.g.dart';

/* Secondary Sale List
----------------------------------------------------------------
*/
@riverpod
class PaginatedDeliveryNoteNotifier extends PaginatedAsyncNotifier<DeliveryNote> {
  @override
  Future<PaginatedData<DeliveryNote>> build() async {
    final deliverynoteRepo = ref.watch(deliveryNoteRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await deliverynoteRepo.getDeliveryNotes(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<DeliveryNote>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await deliverynoteRepo.getDeliveryNotes(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<DeliveryNote>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<DeliveryNote>> fetchNext(int page) async {
    final deliverynoteRepo = ref.watch(deliveryNoteRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await deliverynoteRepo.getDeliveryNotes(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<DeliveryNote>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<DeliveryNote> deliveryNoteById(DeliveryNoteByIdRef ref, int id) async {
  return await ref.watch(deliveryNoteRepositoryProvider).getDeliveryNoteById(id);
}
