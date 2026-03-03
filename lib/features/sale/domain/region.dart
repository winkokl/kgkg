import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';

@freezed
class Region with _$Region implements PagingDataItem {
  const factory Region({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String stateName,
    @Default("") String townshipName,
    @Default("") String cityName,
  }) = _Region;
}
