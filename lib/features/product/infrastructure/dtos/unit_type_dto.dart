import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit_type.dart';

part 'unit_type_dto.freezed.dart';
part 'unit_type_dto.g.dart';

@freezed
class UnitTypeDTO with _$UnitTypeDTO {
  const UnitTypeDTO._();
  const factory UnitTypeDTO({
    @JsonKey(name: "unit_id") @Default("") dynamic id,
    @JsonKey(name: "base_qty") @Default("") dynamic baseQty,
    @JsonKey(name: "unit_name") @Default("") String name,
  }) = _UnitTypeDTO;

  factory UnitTypeDTO.fromJson(Map<String, dynamic> json) => _$UnitTypeDTOFromJson(json);

  UnitType toDomain() => UnitType(
        id: id.runtimeType == String ? int.tryParse(id) ?? -1 : id,
        baseQty: baseQty.runtimeType == String ? int.tryParse(baseQty) ?? 0 : baseQty,
        name: name,
      );
}
