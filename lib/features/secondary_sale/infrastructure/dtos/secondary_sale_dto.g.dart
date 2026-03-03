// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_sale_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondarySaleDTOImpl _$$SecondarySaleDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondarySaleDTOImpl(
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      date: json['sales_date'] as String? ?? '',
      deliveryDate: json['delivery_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      id: (json['secondary_sales_order_id'] as num?)?.toInt() ?? -1,
      code: json['secondary_sales_order_code'] as String? ?? '',
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      paymentTermsId: (json['payment_terms_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      saleTypeId: (json['sale_type_id'] as num?)?.toInt(),
      saleTypeName: json['sale_type_name'] as String? ?? '',
      businessUnitId: (json['business_unit_id'] as num?)?.toInt(),
      businessUnitName: json['business_unit_name'] as String? ?? '',
      deleteReason: json['delete_reason'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      procutDto: (json['product_detail'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderStatus: json['status'] as String? ?? "",
      rejectReason: json['reject_reason'] as String? ?? "",
      bonus: (json['bonus'] as num?)?.toDouble() ?? 0,
      cashBack: (json['cash_back'] as num?)?.toDouble() ?? 0,
      salePromotionId: (json['sale_promotion_id'] as num?)?.toInt(),
      salePromotionDTO: json['sale_promotion'] == null
          ? const SalePromotionDTO()
          : SalePromotionDTO.fromJson(
              json['sale_promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SecondarySaleDTOImplToJson(
        _$SecondarySaleDTOImpl instance) =>
    <String, dynamic>{
      'sales_date': instance.date,
      'delivery_date': instance.deliveryDate,
      'sub_total': instance.subtotal,
      'discount_amount': instance.discountAmount,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'tax_amount': instance.taxAmount,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'other_charges': instance.otherCharges,
      'grand_total_amount': instance.grandTotal,
      'payment_type_id': instance.paymentTypeId,
      'payment_terms_id': instance.paymentTermsId,
      'customer_id': instance.customerId,
      'sale_type_id': instance.saleTypeId,
      'business_unit_id': instance.businessUnitId,
      'remark': instance.remark,
      'description': instance.description,
      'product_detail': instance.procutDto.map((e) => e.toJson()).toList(),
      'bonus': instance.bonus,
      'cash_back': instance.cashBack,
      'sale_promotion_id': instance.salePromotionId,
    };
