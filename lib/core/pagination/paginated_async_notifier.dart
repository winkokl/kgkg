import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class PagingAsyncNotifier<T extends PaginatedData> extends AutoDisposeAsyncNotifier<T> {
  Future<void> loadNext();
}

abstract class PaginatedAsyncNotifier<T extends PagingDataItem> extends PagingAsyncNotifier<PaginatedData<T>> {
  Future<PaginatedData<T>> fetchNext(int page);

  @override
  Future<void> loadNext() async {
    final value = state.valueOrNull;

    if (value == null) {
      return;
    }

    if (state.unwrapPrevious().hasError) {
      state = AsyncValue.data(value);
      return;
    }

    if (value.hasMore) {
      state = AsyncLoading<PaginatedData<T>>().copyWithPrevious(state);

      state = await state.guardX(
        () async {
          final next = await fetchNext(value.page + 1);
          return value.copyWith(
            items: [...value.items, ...next.items],
            page: value.page + 1,
            hasMore: next.hasMore,
          );
        },
      );
    }
  }

  // create
  void createItem(T val) {
    final previousValue = state.requireValue;

    state = AsyncValue.data(previousValue.copyWith(
      items: [...previousValue.items, val],
    ));
  }

  // update
  void updateItem(T val) {
    final previousValue = state.requireValue;

    state = AsyncValue.data(previousValue.copyWith(items: [
      for (final v in previousValue.items)
        if (v.id == val.id) val else v,
    ]));
  }

  // delete
  void deleteItem(T val) {
    final previousValue = state.requireValue;

    state = AsyncValue.data(previousValue.copyWith(items: [
      for (final v in previousValue.items)
        if (v.id != val.id) v,
    ]));
  }
}
