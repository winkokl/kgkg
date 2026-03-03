// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_promotion_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketingPromotionPlanDTOImpl _$$MarketingPromotionPlanDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingPromotionPlanDTOImpl(
      id: (json['marketing_promotion_plan_id'] as num?)?.toInt() ?? -1,
      name: json['marketing_promotion_name'] as String? ?? '',
      name2: json['marketing_promotion_plan_name'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      productRule: (json['product_rule'] as num?)?.toInt() ?? 0,
      giftRule: (json['gift_rule'] as num?)?.toInt() ?? 0,
      bonusDuration: (json['bonus_duration'] as num?)?.toInt() ?? 0,
      cashbackDuration: (json['cashback_duration'] as num?)?.toInt() ?? 0,
      bonusReason: json['bonus_reason'] as String? ?? '',
      cashbackReason: json['cashback_reason'] as String? ?? '',
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      planCode: json['marketing_promotion_plan_code'] as String? ?? '',
      wayId: (json['way_id'] as num?)?.toInt() ?? -1,
      wayName: json['way_name'] as String? ?? '',
      customerName: json['customer_name'] as String? ?? '',
      businessUnitName: json['business_unit_name'] as String? ?? '',
      productDtos: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  PromotionProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      giftItemDtos: (json['gift_items'] as List<dynamic>?)
              ?.map((e) => GiftItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MarketingPromotionPlanDTOImplToJson(
        _$MarketingPromotionPlanDTOImpl instance) =>
    <String, dynamic>{
      'marketing_promotion_plan_id': instance.id,
      'marketing_promotion_name': instance.name,
      'marketing_promotion_plan_name': instance.name2,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'status': instance.status,
      'product_rule': instance.productRule,
      'gift_rule': instance.giftRule,
      'bonus_duration': instance.bonusDuration,
      'cashback_duration': instance.cashbackDuration,
      'bonus_reason': instance.bonusReason,
      'cashback_reason': instance.cashbackReason,
      'customer_id': instance.customerId,
      'business_unit_id': instance.businessUnitId,
      'marketing_promotion_plan_code': instance.planCode,
      'way_id': instance.wayId,
      'way_name': instance.wayName,
      'customer_name': instance.customerName,
      'business_unit_name': instance.businessUnitName,
      'products': instance.productDtos.map((e) => e.toJson()).toList(),
      'gift_items': instance.giftItemDtos.map((e) => e.toJson()).toList(),
    };
