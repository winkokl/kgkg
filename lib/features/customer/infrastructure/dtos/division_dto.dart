import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/city_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_dto.freezed.dart';
part 'division_dto.g.dart';

@freezed
class DivisionDTO with _$DivisionDTO {
  const DivisionDTO._();
  const factory DivisionDTO({
    @JsonKey(name: "stateid") @Default(-1) int id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "cities") @Default([]) List<CityDTO> cityDTO,
  }) = _DivisionDTO;

  factory DivisionDTO.fromJson(Map<String, dynamic> json) => _$DivisionDTOFromJson(json);

  Division toDomain() => Division(
        id: id,
        name: name,
        cities: cityDTO.map((e) => e.toDomain()).toList(),
      );
}
