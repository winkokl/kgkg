import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
part 'sku_dto.freezed.dart';
part 'sku_dto.g.dart';

@freezed
class SkuDTO with _$SkuDTO {
  const SkuDTO._();
  const factory SkuDTO({
    @JsonKey(name: "label") @Default("") String label,
    @JsonKey(name: "value") @Default(-1) int value,
  }) = _SkuDTO;

  factory SkuDTO.fromJson(Map<String, dynamic> json) => _$SkuDTOFromJson(json);

  factory SkuDTO.fromDomain(Sku sku) {
    return SkuDTO(label: sku.label, value: sku.value);
  }

  Sku toDomain() {
    return Sku(label: label, value: value);
  }
}
