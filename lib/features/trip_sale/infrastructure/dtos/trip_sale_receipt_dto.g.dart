// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleReceiptDTOImpl _$$TripSaleReceiptDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripSaleReceiptDTOImpl(
      id: (json['trip_sale_payment_receive_id'] as num?)?.toInt() ?? -1,
      invoiceCode: json['trip_sale_invoice_code'] as String? ?? '',
      code: json['payment_receive_code'] as String? ?? '',
      tripSalesInvoiceId: (json['trip_sale_invoice_id'] as num?)?.toInt() ?? -1,
      paymentReceiveAmount:
          (json['payment_receive_amount'] as num?)?.toDouble() ?? 0,
      paymentReceiveDate: json['payment_receive_date'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      paymentMethodName: json['payment_method_name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      signUrl: json['signature'] as String? ?? "",
      businessUnitName: json['business_unit_name'] as String? ?? '',
    );

Map<String, dynamic> _$$TripSaleReceiptDTOImplToJson(
        _$TripSaleReceiptDTOImpl instance) =>
    <String, dynamic>{
      'trip_sale_invoice_id': instance.tripSalesInvoiceId,
      'payment_receive_amount': instance.paymentReceiveAmount,
      'payment_receive_date': instance.paymentReceiveDate,
      'balance': instance.balance,
      'payment_method_id': instance.paymentMethodId,
      'description': instance.description,
    };
