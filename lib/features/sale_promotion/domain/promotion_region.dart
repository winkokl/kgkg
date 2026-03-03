import 'package:freezed_annotation/freezed_annotation.dart';
part 'promotion_region.freezed.dart';

@freezed
class PromotionRegion with _$PromotionRegion {
  const factory PromotionRegion({
    @Default(-1) int salePromotionId,
    @Default(-1) int promotionRegionId,
    @Default("") String promotionRegionName,
    @Default(-1) int salePromotionRegionId,
  }) = _PromotionRegion;
}
