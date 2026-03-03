import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/township_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDTO with _$CityDTO {
  const CityDTO._();
  const factory CityDTO({
    @JsonKey(name: 'cityid') @Default(-1) int id,
    @JsonKey(name: 'cityname') @Default('') String name,
    @JsonKey(name: 'townships') @Default([]) List<TownshipDTO> townshipDTO,
  }) = _CityDTO;

  factory CityDTO.fromJson(Map<String, dynamic> json) => _$CityDTOFromJson(json);

  City toDomain() => City(
        id: id,
        name: name,
        townships: townshipDTO.map((e) => e.toDomain()).toList(),
      );
}
