// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_sale_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecondarySaleReceiptDTOImpl _$$SecondarySaleReceiptDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondarySaleReceiptDTOImpl(
      id: (json['secondary_sales_payment_receive_id'] as num?)?.toInt() ?? -1,
      invoiceCode: json['secondary_sales_invoice_code'] as String? ?? '',
      code: json['payment_receive_code'] as String? ?? '',
      secondarySalesInvoiceId:
          (json['secondary_sales_invoice_id'] as num?)?.toInt() ?? -1,
      paymentReceiveAmount:
          (json['payment_receive_amount'] as num?)?.toDouble() ?? 0,
      paymentReceiveDate: json['payment_receive_date'] as String? ?? '',
      invoiceDataDto: (json['invoiceData'] as List<dynamic>?)
              ?.map((e) => InvoiceDataDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      paymentMethodName: json['payment_method_name'] as String? ?? "",
      signUrl: json['signature'] as String? ?? "",
      description: json['description'] as String? ?? "",
      goodIssueDate: json['first_issue_date'] as String? ?? "",
      businessUnitName: json['business_unit_name'] as String? ?? '',
    );

Map<String, dynamic> _$$SecondarySaleReceiptDTOImplToJson(
        _$SecondarySaleReceiptDTOImpl instance) =>
    <String, dynamic>{
      'secondary_sales_invoice_id': instance.secondarySalesInvoiceId,
      'payment_receive_amount': instance.paymentReceiveAmount,
      'payment_receive_date': instance.paymentReceiveDate,
      'invoiceData': instance.invoiceDataDto.map((e) => e.toJson()).toList(),
      'payment_method_id': instance.paymentMethodId,
      'description': instance.description,
    };

_$InvoiceDataDTOImpl _$$InvoiceDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceDataDTOImpl(
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      dueDate: json['due_date'] as String? ?? '',
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      grandTotalAmount: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$InvoiceDataDTOImplToJson(
        _$InvoiceDataDTOImpl instance) =>
    <String, dynamic>{
      'warehouse_id': instance.warehouseId,
      'due_date': instance.dueDate,
      'payment_type_id': instance.paymentTypeId,
      'grand_total_amount': instance.grandTotalAmount,
      'business_unit_id': instance.businessUnitId,
      'balance': instance.balance,
    };
