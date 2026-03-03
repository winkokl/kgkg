// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'good_requisition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodRequisitionDTOImpl _$$GoodRequisitionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodRequisitionDTOImpl(
      marketingPromotionPlanName:
          json['marketing_promotion_plan_name'] as String? ?? '',
      marketingPromotionPlanCode:
          json['marketing_promotion_plan_code'] as String? ?? '',
      marketingPromotionPlanDto: json['marketing_promotion_plan'] == null
          ? const MarketingPromotionPlanDTO()
          : MarketingPromotionPlanDTO.fromJson(
              json['marketing_promotion_plan'] as Map<String, dynamic>),
      goodRequisitionDate: json['good_requisition_date'] as String? ?? '',
      requestDate: json['request_date'] as String? ?? '',
      customerName: json['customer_name'] as String? ?? '',
      businessUnit: json['business_unit'] as String? ?? '',
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      marketingPromotionName: json['marketing_promotion_name'] as String? ?? '',
      businessUnitName: json['business_unit_name'] as String? ?? '',
      customerFirstName: json['customer_first_name'] as String? ?? '',
      startDate: json['start_date'] as String? ?? '',
      endDate: json['end_date'] as String? ?? '',
      bonusDuration: (json['bonus_duration'] as num?)?.toInt() ?? 0,
      cashbackDuration: (json['cashback_duration'] as num?)?.toInt() ?? 0,
      productDtos: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  PromotionProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      giftItemDtos: (json['gift_items'] as List<dynamic>?)
              ?.map((e) => GiftItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$GoodRequisitionDTOImplToJson(
        _$GoodRequisitionDTOImpl instance) =>
    <String, dynamic>{
      'marketing_promotion_plan_name': instance.marketingPromotionPlanName,
      'marketing_promotion_plan_code': instance.marketingPromotionPlanCode,
      'good_requisition_date': instance.goodRequisitionDate,
      'customer_name': instance.customerName,
      'business_unit': instance.businessUnit,
      'customer_id': instance.customerId,
      'business_unit_id': instance.businessUnitId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'products': instance.productDtos.map((e) => e.toJson()).toList(),
      'gift_items': instance.giftItemDtos.map((e) => e.toJson()).toList(),
    };
