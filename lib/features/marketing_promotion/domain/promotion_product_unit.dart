import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_product_unit.freezed.dart';
part 'promotion_product_unit.g.dart';

@freezed
class PromotionProductUnit with _$PromotionProductUnit {
  const PromotionProductUnit._();
  const factory PromotionProductUnit({
    @Default("") String label,
    dynamic value,
  }) = _PromotionProductUnit;

  factory PromotionProductUnit.fromJson(Map<String, dynamic> json) => _$PromotionProductUnitFromJson(json);

  PromotionProductUnit toDomain() {
    return PromotionProductUnit(
      label: label,
      value: value.toString(),
    );
  }
}
