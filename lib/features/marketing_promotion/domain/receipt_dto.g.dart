// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptDTOImpl _$$ReceiptDTOImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDTOImpl(
      id: (json['marketing_promotion_payment_receive_id'] as num?)?.toInt() ??
          -1,
      invoiceCode: json['marketing_promotion_invoice_code'] as String? ?? '',
      code: json['payment_receive_code'] as String? ?? '',
      invoiceId:
          (json['marketing_promotion_invoice_id'] as num?)?.toInt() ?? -1,
      paymentReceiveAmount:
          (json['payment_receive_amount'] as num?)?.toDouble() ?? 0,
      paymentReceiveDate: json['payment_receive_date'] as String? ?? '',
      customerName: json['customer_first_name'] as String? ?? '',
      businessUnitName: json['business_unit_name'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      signUrl: json['signature'] as String? ?? "",
      paymentMethodName: json['payment_method_name'] as String? ?? "",
      marketingPromotionInvoice: json['marketing_promotion_invoice'] == null
          ? null
          : MarketingPromotionInvoice.fromJson(
              json['marketing_promotion_invoice'] as Map<String, dynamic>),
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$ReceiptDTOImplToJson(_$ReceiptDTOImpl instance) =>
    <String, dynamic>{
      'marketing_promotion_invoice_id': instance.invoiceId,
      'payment_receive_amount': instance.paymentReceiveAmount,
      'payment_receive_date': instance.paymentReceiveDate,
      'balance': instance.balance,
      'payment_method_id': instance.paymentMethodId,
      'description': instance.description,
    };

_$MarketingPromotionInvoiceImpl _$$MarketingPromotionInvoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingPromotionInvoiceImpl(
      invoiceCode: json['invoice_code'] as String? ?? '',
    );

Map<String, dynamic> _$$MarketingPromotionInvoiceImplToJson(
        _$MarketingPromotionInvoiceImpl instance) =>
    <String, dynamic>{
      'invoice_code': instance.invoiceCode,
    };

_$InvoiceSummaryDTOImpl _$$InvoiceSummaryDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceSummaryDTOImpl(
      invoiceId: (json['invoice_id'] as num?)?.toInt() ?? -1,
      invoiceDueDate: json['invoice_due_date'] as String? ?? '',
      receivedDate: json['received_date'] as String? ?? '',
      invoiceTotalAmount: (json['invoice_total_amt'] as num?)?.toDouble() ?? 0,
      invoiceBalance: (json['invoice_balance'] as num?)?.toDouble() ?? 0,
      paidAmount: (json['paid_amt'] as num?)?.toDouble() ?? 0,
      invoiceCode: json['invoice_code'] as String? ?? '',
      goodRequisitionId: (json['good_requisition_id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$InvoiceSummaryDTOImplToJson(
        _$InvoiceSummaryDTOImpl instance) =>
    <String, dynamic>{
      'invoice_id': instance.invoiceId,
      'invoice_due_date': instance.invoiceDueDate,
      'received_date': instance.receivedDate,
      'invoice_total_amt': instance.invoiceTotalAmount,
      'invoice_balance': instance.invoiceBalance,
      'paid_amt': instance.paidAmount,
      'invoice_code': instance.invoiceCode,
      'good_requisition_id': instance.goodRequisitionId,
    };
