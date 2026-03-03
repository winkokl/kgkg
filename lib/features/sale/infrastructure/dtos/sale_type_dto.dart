import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';

part 'sale_type_dto.freezed.dart';
part 'sale_type_dto.g.dart';

@freezed
class SaleTypeDTO with _$SaleTypeDTO {
  const SaleTypeDTO._();
  const factory SaleTypeDTO({
    @JsonKey(name: "sale_type_id") @Default(-1) int id,
    @JsonKey(name: "sale_type_name") @Default("") String name,
  }) = _SaleTypeDTO;

  factory SaleTypeDTO.fromJson(Map<String, dynamic> json) => _$SaleTypeDTOFromJson(json);

  SaleType toDomain() => SaleType(id: id, name: name);
}
