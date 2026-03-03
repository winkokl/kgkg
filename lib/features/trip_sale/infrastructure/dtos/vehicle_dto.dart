import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/vehicle.dart';

part 'vehicle_dto.freezed.dart';
part 'vehicle_dto.g.dart';

@freezed
class VehicleDTO with _$VehicleDTO {
  const VehicleDTO._();
  factory VehicleDTO({
    @JsonKey(name: "vehicle_id") @Default(-1) int id,
    @JsonKey(name: "vehicle_name") @Default("") String name,
  }) = _VehicleDTO;

  factory VehicleDTO.fromJson(Map<String, dynamic> json) => _$VehicleDTOFromJson(json);

  Vehicle toDomain() {
    return Vehicle(id: id, name: name);
  }
}
