// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_promotion_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalePromotionDTOImpl _$$SalePromotionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SalePromotionDTOImpl(
      salePromotionId: (json['sale_promotion_id'] as num?)?.toInt() ?? -1,
      promotionId: json['promotion_id'] as String? ?? "",
      promotionName: json['promotion_name'] as String? ?? "",
      customerChannel: (json['customer_channel'] as List<dynamic>?)
              ?.map(
                  (e) => CustomerChannelDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      startDate: json['start_date'] as String? ?? "",
      endDate: json['end_date'] as String? ?? "",
      region: (json['region'] as List<dynamic>?)
              ?.map(
                  (e) => PromotionRegionDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      details: (json['details'] as List<dynamic>?)
              ?.map(
                  (e) => PromotionDetailDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SalePromotionDTOImplToJson(
        _$SalePromotionDTOImpl instance) =>
    <String, dynamic>{
      'sale_promotion_id': instance.salePromotionId,
      'promotion_id': instance.promotionId,
      'promotion_name': instance.promotionName,
      'customer_channel':
          instance.customerChannel.map((e) => e.toJson()).toList(),
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'region': instance.region.map((e) => e.toJson()).toList(),
      'details': instance.details.map((e) => e.toJson()).toList(),
    };
