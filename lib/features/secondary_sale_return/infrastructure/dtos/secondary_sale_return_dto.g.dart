// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_sale_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondarySaleReturnDTOImpl _$$SecondarySaleReturnDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondarySaleReturnDTOImpl(
      id: (json['secondary_sales_return_id'] as num?)?.toInt() ?? -1,
      secondarySaleInvoiceId:
          (json['secondary_sales_invoice_id'] as num?)?.toInt() ?? -1,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      customerFirstName: json['customer_first_name'] as String? ?? "",
      returnDate: json['return_date'] as String? ?? "",
      code: json['secondary_sales_return_code'] as String? ?? "",
      invoiceCode: json['secondary_sales_invoice_code'] as String? ?? "",
      productDtos: (json['product_detail'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remark: json['remark'] as String? ?? "",
      description: json['description'] as String? ?? "",
      otherChargesAmount: json['other_charges'] ?? 0,
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      grandtotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      returnDeductMethod: json['return_deduct_method'] as String? ?? "",
      returnDeductAmount:
          (json['return_deduct_amount'] as num?)?.toDouble() ?? 0,
      totalReturnAmount: (json['total_return_amount'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paymentStatus: (json['status'] as num?)?.toInt() ?? -1,
      returnReasonId: (json['return_reason_id'] as num?)?.toInt() ?? -1,
      returnReasonName: json['reason_name'] as String? ?? "",
    );

Map<String, dynamic> _$$SecondarySaleReturnDTOImplToJson(
        _$SecondarySaleReturnDTOImpl instance) =>
    <String, dynamic>{
      'secondary_sales_invoice_id': instance.secondarySaleInvoiceId,
      'customer_id': instance.customerId,
      'return_date': instance.returnDate,
      'product_detail': instance.productDtos.map((e) => e.toJson()).toList(),
      'remark': instance.remark,
      'description': instance.description,
      'other_charges': instance.otherChargesAmount,
      'sub_total': instance.subtotal,
      'grand_total_amount': instance.grandtotal,
      'return_deduct_method': instance.returnDeductMethod,
      'return_deduct_amount': instance.returnDeductAmount,
      'total_return_amount': instance.totalReturnAmount,
      'balance': instance.balance,
      'return_reason_id': instance.returnReasonId,
    };
