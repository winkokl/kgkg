import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';

part 'trip_name.freezed.dart';

@freezed
class TripName with _$TripName implements PagingDataItem {
  const factory TripName({
    @Default(-1) int id,
    @Default("") String name,
  }) = _TripName;
}
