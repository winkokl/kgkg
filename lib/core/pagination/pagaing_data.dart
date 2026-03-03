import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagaing_data.freezed.dart';

@freezed
class PaginatedData<T extends PagingDataItem> with _$PaginatedData<T> {
  const factory PaginatedData({
    required List<T> items,
    required int page,
    required bool hasMore,
  }) = _PaginatedData<T>;
}
