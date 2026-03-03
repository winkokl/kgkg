import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_detail.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/vehicle.dart';

part 'trip_prposal.freezed.dart';

@freezed
class TripProposal with _$TripProposal implements PagingDataItem {
  const factory TripProposal({
    @Default(-1) int id,
    @Default("") String tripName,
    @Default("") String tripCode,
    @Default("") String description,
    @Default("") String proposalDate,
    @Default("") String attachment,
    @Default("") String reason,
    @Default("") String regionName,
    @Default([]) List<Warehouse> tripWarehouseDetails,
    @Default([]) List<Vehicle> tripVehicle,
    @Default([]) List<TripUserAssign> assigneeData,
    @Default([]) List<Product> productDetail,
    @Default([]) List<TripDetail> tripDetails,
  }) = _TripProposal;
}
