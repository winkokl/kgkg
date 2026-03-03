// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_sale_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondarySaleInvoiceDTOImpl _$$SecondarySaleInvoiceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondarySaleInvoiceDTOImpl(
      id: (json['secondary_sales_invoice_id'] as num?)?.toInt() ?? -1,
      code: json['secondary_sales_invoice_code'] as String? ?? "",
      saleOrderCode: json['secondary_sales_order_code'] as String? ?? '',
      invoiceDate: json['invoice_date'] as String? ?? "",
      deliveryDate: json['delivery_date'] as String? ?? "",
      dueDate: json['due_date'] as String? ?? "",
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      saleDate: json['sales_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      saleOrderId: (json['secondary_sales_order_id'] as num?)?.toInt() ?? -1,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt(),
      businessUnitName: json['business_unit_name'] as String? ?? '',
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      paymentTermsId: (json['payment_terms_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      deleteReason: json['delete_reason'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      procutDto: (json['product_detail'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentStatus: json['status'] as String? ?? '',
      paymentReceivedHistoryDto: (json['payment_receive_data']
                  as List<dynamic>?)
              ?.map((e) =>
                  SecondarySaleReceiptDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      salePromotionDTO: json['sale_promotion'] == null
          ? null
          : SalePromotionDTO.fromJson(
              json['sale_promotion'] as Map<String, dynamic>),
      salePromotionId: (json['sale_promotion_id'] as num?)?.toInt(),
      bonus: (json['bonus'] as num?)?.toDouble() ?? 0,
      cashBack: (json['cash_back'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SecondarySaleInvoiceDTOImplToJson(
        _$SecondarySaleInvoiceDTOImpl instance) =>
    <String, dynamic>{
      'invoice_date': instance.invoiceDate,
      'delivery_date': instance.deliveryDate,
      'due_date': instance.dueDate,
      'sales_date': instance.saleDate,
      'balance': instance.balance,
      'business_unit_id': instance.businessUnitId,
      'sub_total': instance.subtotal,
      'discount_amount': instance.discountAmount,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'tax_amount': instance.taxAmount,
      'tax_type': instance.taxType,
      'tax': instance.tax,
      'other_charges': instance.otherCharges,
      'grand_total_amount': instance.grandTotal,
      'payment_type_id': instance.paymentTypeId,
      'payment_terms_id': instance.paymentTermsId,
      'customer_id': instance.customerId,
      'remark': instance.remark,
      'description': instance.description,
      'product_detail': instance.procutDto.map((e) => e.toJson()).toList(),
      'sale_promotion_id': instance.salePromotionId,
      'bonus': instance.bonus,
      'cash_back': instance.cashBack,
    };
