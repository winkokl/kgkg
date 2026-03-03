import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/info_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/sku_dto.dart';
part 'promotion_detail.dto.freezed.dart';
part 'promotion_detail.dto.g.dart';

@freezed
class PromotionDetailDTO with _$PromotionDetailDTO {
  const PromotionDetailDTO._();
  const factory PromotionDetailDTO({
    @JsonKey(name: "range_type") @Default("") String rangeType,
    @JsonKey(name: "sale_promotion_id") @Default("") String salePromotionId,
    @JsonKey(name: "sale_promotion_detail_id") @Default(-1) int salePromotionDetailId,
    @JsonKey(name: "promotion_name") @Default("") String promotionName,
    @JsonKey(name: "product_id") @Default(-1) int productId,
    @JsonKey(name: "sku") @Default([]) List<SkuDTO> sku,
    @JsonKey(name: "info") @Default([]) List<InfoDTO> info,
  }) = _PromotionDetailDTO;

  factory PromotionDetailDTO.fromJson(Map<String, dynamic> json) => _$PromotionDetailDTOFromJson(json);

  factory PromotionDetailDTO.fromDomain(PromotionDetail promotionDetail) {
    return PromotionDetailDTO(
      rangeType: promotionDetail.rangeType.name,
      salePromotionId: promotionDetail.salePromotionId,
      salePromotionDetailId: promotionDetail.salePromotionDetailId,
      promotionName: promotionDetail.promotionName,
      productId: promotionDetail.productId,
      sku: promotionDetail.sku.map((e) => SkuDTO.fromDomain(e)).toList(),
      info: promotionDetail.info.map((e) => InfoDTO.fromDomain(e)).toList(),
    );
  }

  PromotionDetail toDomain() {
    return PromotionDetail(
      rangeType: SaleRangeType.fromName(rangeType),
      salePromotionId: salePromotionId,
      salePromotionDetailId: salePromotionDetailId,
      promotionName: promotionName,
      productId: productId,
      sku: sku.map((e) => e.toDomain()).toList(),
      info: info.map((e) => e.toDomain()).toList(),
    );
  }
}
