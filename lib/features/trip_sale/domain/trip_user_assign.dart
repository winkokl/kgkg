import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_user_assign.freezed.dart';

@freezed
class TripUserAssign with _$TripUserAssign implements PagingDataItem {
  const factory TripUserAssign({
    @Default(-1) int id,
    @Default("") String userName,
    @Default("") String name,
    @Default("") String phoneNumber,
    @Default("") String role,
    @Default("") String description,
    @Default([]) List<TripName> trips,
  }) = _TripUserAssign;
}
