// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_region_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionRegionDTOImpl _$$PromotionRegionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionRegionDTOImpl(
      promotionRegionId: (json['promotion_region_id'] as num?)?.toInt() ?? -1,
      promotionRegionName: json['promotion_region_name'] as String? ?? "",
      salePromotionRegionId:
          (json['sale_promotion_region_id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$PromotionRegionDTOImplToJson(
        _$PromotionRegionDTOImpl instance) =>
    <String, dynamic>{
      'promotion_region_id': instance.promotionRegionId,
      'promotion_region_name': instance.promotionRegionName,
      'sale_promotion_region_id': instance.salePromotionRegionId,
    };
