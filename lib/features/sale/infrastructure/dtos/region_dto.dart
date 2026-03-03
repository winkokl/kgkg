import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_dto.freezed.dart';
part 'region_dto.g.dart';

@freezed
class RegionDTO with _$RegionDTO {
  const RegionDTO._();
  const factory RegionDTO({
    @JsonKey(name: "region_id") @Default(-1) int id,
    @JsonKey(name: "region_name") @Default("") String name,
    @JsonKey(name: "state_name") @Default("") String stateName,
    @JsonKey(name: "township_name") @Default("") String townshipName,
    @JsonKey(name: "city_name") @Default("") String cityName,
  }) = _RegionDTO;

  factory RegionDTO.fromJson(Map<String, dynamic> json) => _$RegionDTOFromJson(json);

  Region toDomain() => Region(
        id: id,
        name: name,
        cityName: cityName,
        stateName: stateName,
        townshipName: townshipName,
      );
}
