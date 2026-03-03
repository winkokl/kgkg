// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_sale_return_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondarySaleReturnReceiptDTOImpl
    _$$SecondarySaleReturnReceiptDTOImplFromJson(Map<String, dynamic> json) =>
        _$SecondarySaleReturnReceiptDTOImpl(
          id: (json['secondary_sales_return_payment_made_id'] as num?)
                  ?.toInt() ??
              -1,
          paymentMadeDate: json['payment_made_date'] as String? ?? "",
          paymentMadeAmount:
              (json['payment_made_amount'] as num?)?.toDouble() ?? 0,
          secondarySalesReturnId:
              (json['secondary_sales_return_id'] as num?)?.toInt() ?? -1,
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
          totalReturnAmount:
              (json['total_return_amount'] as num?)?.toDouble() ?? 0,
          balance: (json['balance'] as num?)?.toDouble() ?? 0,
          signUrl: json['signature'] as String? ?? "",
          paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
          paymentMethodName: json['payment_method_name'] as String? ?? "",
        );

Map<String, dynamic> _$$SecondarySaleReturnReceiptDTOImplToJson(
        _$SecondarySaleReturnReceiptDTOImpl instance) =>
    <String, dynamic>{
      'payment_made_date': instance.paymentMadeDate,
      'payment_made_amount': instance.paymentMadeAmount,
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
      'payment_method_id': instance.paymentMethodId,
    };
