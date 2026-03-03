import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';

part 'way.freezed.dart';

@freezed
class Way with _$Way implements PagingDataItem {
  const factory Way({
    @Default(-1) int id,
    @Default("") String name,
  }) = _Way;
}
