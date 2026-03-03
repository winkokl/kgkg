// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_return_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleReturnReceiptDTOImpl _$$TripSaleReturnReceiptDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripSaleReturnReceiptDTOImpl(
      id: (json['trip_sale_return_payment_made_id'] as num?)?.toInt() ?? -1,
      paymentMadeDate: json['payment_made_date'] as String? ?? "",
      paymentMadeAmount: (json['payment_made_amount'] as num?)?.toDouble() ?? 0,
      tripSalesReturnId: (json['trip_sale_return_id'] as num?)?.toInt() ?? -1,
      returnDate: json['return_date'] as String? ?? "",
      code: json['trip_sale_return_code'] as String? ?? "",
      invoiceCode: json['trip_sale_invoice_code'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      description: json['description'] as String? ?? "",
      totalReturnAmount: (json['total_return_amount'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      signUrl: json['signature'] as String? ?? "",
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      paymentMethodName: json['payment_method_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TripSaleReturnReceiptDTOImplToJson(
        _$TripSaleReturnReceiptDTOImpl instance) =>
    <String, dynamic>{
      'payment_made_date': instance.paymentMadeDate,
      'payment_made_amount': instance.paymentMadeAmount,
      'trip_sale_return_id': instance.tripSalesReturnId,
      'remark': instance.remark,
      'description': instance.description,
      'balance': instance.balance,
      'payment_method_id': instance.paymentMethodId,
    };
