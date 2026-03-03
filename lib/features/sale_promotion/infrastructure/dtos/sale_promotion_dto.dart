import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/customer_channel_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/promotion_detail.dto.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/promotion_region_dto.dart';
part 'sale_promotion_dto.freezed.dart';
part 'sale_promotion_dto.g.dart';

@freezed
class SalePromotionDTO with _$SalePromotionDTO {
  const SalePromotionDTO._();
  const factory SalePromotionDTO({
    @JsonKey(name: "sale_promotion_id") @Default(-1) int salePromotionId,
    @JsonKey(name: "promotion_id") @Default("") String promotionId,
    @JsonKey(name: "promotion_name") @Default("") String promotionName,
    @JsonKey(name: "customer_channel") @Default([]) List<CustomerChannelDTO> customerChannel,
    @JsonKey(name: "start_date") @Default("") String startDate,
    @JsonKey(name: "end_date") @Default("") String endDate,
    @JsonKey(name: "region") @Default([]) List<PromotionRegionDTO> region,
    @JsonKey(name: "details") @Default([]) List<PromotionDetailDTO> details,
  }) = _SalePromotionDTO;

  factory SalePromotionDTO.fromJson(Map<String, dynamic> json) => _$SalePromotionDTOFromJson(json);

  SalePromotion toDomain() {
    return SalePromotion(
      id: salePromotionId,
      promotionId: promotionId,
      promotionName: promotionName,
      customerChannel: customerChannel.map((e) => e.toDomain()).toList(),
      startDate: startDate,
      endDate: endDate,
      region: region.map((e) => e.toDomain()).toList(),
      details: details.map((e) => e.toDomain()).toList(),
    );
  }
}
