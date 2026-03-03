// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceDTOImpl _$$InvoiceDTOImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceDTOImpl(
      id: (json['marketing_promotion_invoice_id'] as num?)?.toInt() ?? -1,
      promotionName: json['marketing_promotion_name'] as String? ?? '',
      code: json['marketing_promotion_invoice_code'] as String? ?? '',
      planId: (json['marketing_promotion_plan_id'] as num?)?.toInt() ?? -1,
      planCode: json['marketing_promotion_plan_code'] as String? ?? '',
      invoiceDate: json['invoice_date'] as String? ?? '',
      dueDate: json['due_date'] as String? ?? '',
      warehouseId: (json['warehouse_id'] as num?)?.toInt(),
      subTotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt(),
      paymentTermsId: (json['payment_terms_id'] as num?)?.toInt(),
      creditTypeId: (json['credit_type_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      customerName: json['customer_name'] as String? ?? '',
      deleteReason: json['delete_reason'] as String?,
      status: json['status'] as String? ?? '',
      remark: json['remark'] as String?,
      description: json['description'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt(),
      businessUnitName: json['business_unit_name'] as String? ?? '',
      invoiceStatus: json['invoice_status'] as String? ?? '',
      bonus: (json['bonus'] as num?)?.toDouble() ?? 0,
      bonusType: json['bonus_type'] as String? ?? '',
      bonusAmt: (json['bonus_amt'] as num?)?.toDouble() ?? 0,
      bonusAmount: (json['bonus_amount'] as num?)?.toDouble() ?? 0,
      cashback: (json['cashback'] as num?)?.toDouble() ?? 0,
      cashbackType: json['cashback_type'] as String? ?? '',
      cashbackAmt: (json['cashback_amt'] as num?)?.toDouble() ?? 0,
      cashbackAmount: (json['cashback_amount'] as num?)?.toDouble() ?? 0,
      paymentReceivedHistoryDto: (json['payment_receives'] as List<dynamic>?)
              ?.map((e) => ReceiptDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      marketingGoodRequisitionId:
          (json['marketing_good_requisition_id'] as num?)?.toInt() ?? -1,
      marketingPromotionPlanDto: json['marketing_promotion_plan'] == null
          ? const MarketingPromotionPlanDTO()
          : MarketingPromotionPlanDTO.fromJson(
              json['marketing_promotion_plan'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$$InvoiceDTOImplToJson(_$InvoiceDTOImpl instance) =>
    <String, dynamic>{
      'marketing_promotion_invoice_id': instance.id,
      'marketing_promotion_name': instance.promotionName,
      'marketing_promotion_invoice_code': instance.code,
      'marketing_promotion_plan_id': instance.planId,
      'marketing_promotion_plan_code': instance.planCode,
      'invoice_date': instance.invoiceDate,
      'due_date': instance.dueDate,
      'warehouse_id': instance.warehouseId,
      'sub_total': instance.subTotal,
      'discount_amount': instance.discountAmount,
      'discount_type': instance.discountType,
      'tax_amount': instance.taxAmount,
      'tax_type': instance.taxType,
      'other_charges': instance.otherCharges,
      'grand_total_amount': instance.grandTotal,
      'payment_type_id': instance.paymentTypeId,
      'payment_terms_id': instance.paymentTermsId,
      'credit_type_id': instance.creditTypeId,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'delete_reason': instance.deleteReason,
      'status': instance.status,
      'remark': instance.remark,
      'description': instance.description,
      'balance': instance.balance,
      'tax': instance.tax,
      'discount': instance.discount,
      'business_unit_id': instance.businessUnitId,
      'business_unit_name': instance.businessUnitName,
      'invoice_status': instance.invoiceStatus,
      'bonus': instance.bonus,
      'bonus_type': instance.bonusType,
      'bonus_amt': instance.bonusAmt,
      'bonus_amount': instance.bonusAmount,
      'cashback': instance.cashback,
      'cashback_type': instance.cashbackType,
      'cashback_amt': instance.cashbackAmt,
      'cashback_amount': instance.cashbackAmount,
      'marketing_good_requisition_id': instance.marketingGoodRequisitionId,
      'bonus_duration': instance.bonusDuration,
      'cashback_duration': instance.cashbackDuration,
      'products': instance.productDtos.map((e) => e.toJson()).toList(),
      'gift_items': instance.giftItemDtos.map((e) => e.toJson()).toList(),
    };
