// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentReceiptDTOImpl _$$ConsignmentReceiptDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsignmentReceiptDTOImpl(
      id: (json['consignment_payment_receive_id'] as num?)?.toInt() ?? -1,
      invoiceCode: json['consignment_invoice_code'] as String? ?? '',
      code: json['payment_receive_code'] as String? ?? '',
      consignmentsInvoiceId:
          (json['consignment_invoice_id'] as num?)?.toInt() ?? -1,
      paymentReceiveAmount:
          (json['payment_receive_amount'] as num?)?.toDouble() ?? 0,
      paymentReceiveDate: json['payment_receive_date'] as String? ?? '',
      customerName: json['customer_first_name'] as String? ?? '',
      businessUnitName: json['business_unit_name'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      signUrl: json['signature'] as String? ?? "",
      paymentMethodName: json['payment_method_name'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$ConsignmentReceiptDTOImplToJson(
        _$ConsignmentReceiptDTOImpl instance) =>
    <String, dynamic>{
      'consignment_invoice_id': instance.consignmentsInvoiceId,
      'payment_receive_amount': instance.paymentReceiveAmount,
      'payment_receive_date': instance.paymentReceiveDate,
      'balance': instance.balance,
      'payment_method_id': instance.paymentMethodId,
      'description': instance.description,
    };
