// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_promotion_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketingPromotionReturnDTOImpl _$$MarketingPromotionReturnDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingPromotionReturnDTOImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      code: json['code'] as String? ?? '',
      returnDate: json['return_date'] as String? ?? '',
      marketingPromotionPlanId:
          (json['marketing_promotion_plan_id'] as num?)?.toInt() ?? -1,
      marketingPromotionId:
          (json['marketing_promotion_id'] as num?)?.toInt() ?? -1,
      description: json['description'] as String? ?? '',
      subTotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total'] as num?)?.toDouble() ?? 0,
      returnDeduct: (json['return_deduct'] as num?)?.toDouble() ?? 0,
      deductAmount: (json['deduct_amount'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paidAmount: (json['paid_amount'] as num?)?.toDouble() ?? 0,
      returnStatus: json['return_status'] as String? ?? '',
      marketingPromotionName: json['marketing_promotion_name'] as String? ?? '',
      marketingPromotionPlanCode:
          json['marketing_promotion_plan_code'] as String? ?? '',
      customerName: json['customer_name'] as String? ?? '',
      businessUnitName: json['business_unit_name'] as String? ?? '',
      productDtos: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  PromotionProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      giftItemDtos: (json['gifts'] as List<dynamic>?)
              ?.map((e) => GiftItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MarketingPromotionReturnDTOImplToJson(
        _$MarketingPromotionReturnDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'return_date': instance.returnDate,
      'marketing_promotion_plan_id': instance.marketingPromotionPlanId,
      'marketing_promotion_id': instance.marketingPromotionId,
      'description': instance.description,
      'sub_total': instance.subTotal,
      'other_charges': instance.otherCharges,
      'grand_total': instance.grandTotal,
      'return_deduct': instance.returnDeduct,
      'deduct_amount': instance.deductAmount,
      'total': instance.total,
      'balance': instance.balance,
      'paid_amount': instance.paidAmount,
      'return_status': instance.returnStatus,
      'marketing_promotion_name': instance.marketingPromotionName,
      'marketing_promotion_plan_code': instance.marketingPromotionPlanCode,
      'customer_name': instance.customerName,
      'business_unit_name': instance.businessUnitName,
      'products': instance.productDtos.map((e) => e.toJson()).toList(),
      'gifts': instance.giftItemDtos.map((e) => e.toJson()).toList(),
    };
