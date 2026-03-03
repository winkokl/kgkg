import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_region.dart';
part 'promotion_region_dto.freezed.dart';
part 'promotion_region_dto.g.dart';

@freezed
class PromotionRegionDTO with _$PromotionRegionDTO {
  const PromotionRegionDTO._();
  const factory PromotionRegionDTO({
    @JsonKey(name: "promotion_region_id") @Default(-1) int promotionRegionId,
    @JsonKey(name: "promotion_region_name") @Default("") String promotionRegionName,
    @JsonKey(name: "sale_promotion_region_id") @Default(-1) int salePromotionRegionId,
  }) = _PromotionRegionDTO;

  factory PromotionRegionDTO.fromJson(Map<String, dynamic> json) => _$PromotionRegionDTOFromJson(json);

  PromotionRegion toDomain() {
    return PromotionRegion(
      promotionRegionId: promotionRegionId,
      promotionRegionName: promotionRegionName,
      salePromotionRegionId: salePromotionRegionId,
    );
  }
}
