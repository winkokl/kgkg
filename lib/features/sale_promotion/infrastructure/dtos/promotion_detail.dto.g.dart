// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_detail.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionDetailDTOImpl _$$PromotionDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionDetailDTOImpl(
      rangeType: json['range_type'] as String? ?? "",
      salePromotionId: json['sale_promotion_id'] as String? ?? "",
      salePromotionDetailId:
          (json['sale_promotion_detail_id'] as num?)?.toInt() ?? -1,
      promotionName: json['promotion_name'] as String? ?? "",
      productId: (json['product_id'] as num?)?.toInt() ?? -1,
      sku: (json['sku'] as List<dynamic>?)
              ?.map((e) => SkuDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      info: (json['info'] as List<dynamic>?)
              ?.map((e) => InfoDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PromotionDetailDTOImplToJson(
        _$PromotionDetailDTOImpl instance) =>
    <String, dynamic>{
      'range_type': instance.rangeType,
      'sale_promotion_id': instance.salePromotionId,
      'promotion_name': instance.promotionName,
      'product_id': instance.productId,
      'sku': instance.sku.map((e) => e.toJson()).toList(),
      'info': instance.info.map((e) => e.toJson()).toList(),
    };
