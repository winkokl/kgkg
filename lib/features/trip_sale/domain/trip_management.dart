import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_management.freezed.dart';

@freezed
class TripManagement with _$TripManagement implements PagingDataItem {
  const factory TripManagement({
    @Default(-1) int id,
    @Default("") String code,
    @Default("") String tripName,
    @Default("") String allocationAccountName,
    @Default("") String description,
    @Default("") String remark,
    @Default("") String regionName,
    @Default("") String wayName,
    @Default("") String divisionName,
    @Default("") String cityName,
    @Default("") String townshipName,
    @Default([]) List<TripDetail> tripDetails,
    @Default([]) List<Warehouse> tripWarehouseList,
  }) = _TripManagement;
}
