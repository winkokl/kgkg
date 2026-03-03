import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/warehouse_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_management.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_detail_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_management_dto.freezed.dart';
part 'trip_management_dto.g.dart';

@freezed
class TripManagementDTO with _$TripManagementDTO {
  const TripManagementDTO._();
  const factory TripManagementDTO({
    @JsonKey(name: "trip_id") @Default(-1) int id,
    @JsonKey(name: "trip_code") @Default("") String code,
    @JsonKey(name: "trip_name") @Default("") String tripName,
    @JsonKey(name: "warehouse_name") @Default("") String allocationAccountName,
    @Default("") String description,
    @Default("") String remark,
    @Default("") String regionName,
    @Default("") String wayName,
    @Default("") String divisionName,
    @Default("") String cityName,
    @Default("") String townshipName,
    @JsonKey(name: "trip_warehouse_details") @Default([]) List<WarehouseDTO> tripWarehouseList,
    @JsonKey(name: "trip_details") @Default([]) List<TripDetailDTO> tripDetails,
  }) = _TripManagementDTO;

  factory TripManagementDTO.fromJson(Map<String, dynamic> json) => _$TripManagementDTOFromJson(json);

  TripManagement toDomain() {
    return TripManagement(
      id: id,
      code: code,
      allocationAccountName: allocationAccountName,
      description: description,
      cityName: cityName,
      wayName: wayName,
      tripName: tripName,
      townshipName: townshipName,
      divisionName: divisionName,
      regionName: regionName,
      tripWarehouseList: tripWarehouseList.map((e) => e.toDomain()).toList(),
      tripDetails: tripDetails.map((e) => e.toDomain()).toList(),
    );
  }
}
