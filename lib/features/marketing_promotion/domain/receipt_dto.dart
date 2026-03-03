import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'receipt_dto.freezed.dart';
part 'receipt_dto.g.dart';

@freezed
class ReceiptDTO with _$ReceiptDTO {
  const ReceiptDTO._();
  const factory ReceiptDTO({
    @JsonKey(name: "marketing_promotion_payment_receive_id", includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false) @Default('') String invoiceCode,
    @JsonKey(name: "payment_receive_code", includeToJson: false) @Default('') String code,
    @JsonKey(name: "marketing_promotion_invoice_id") @Default(-1) int invoiceId,
    @JsonKey(name: "payment_receive_amount") @Default(0) double paymentReceiveAmount,
    @JsonKey(name: "payment_receive_date") @Default('') String paymentReceiveDate,
    @JsonKey(name: "customer_first_name", includeToJson: false) @Default('') String customerName,
    @JsonKey(name: "business_unit_name", includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: "balance") @Default(0) double balance,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: "signature", includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
    @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false) MarketingPromotionInvoice? marketingPromotionInvoice,
    @Default("") String description,
  }) = _ReceiptDTO;

  factory ReceiptDTO.fromJson(Map<String, dynamic> json) => _$ReceiptDTOFromJson(json);

  factory ReceiptDTO.fromDomain(Receipt saleReceipt) {
    return ReceiptDTO(
      paymentReceiveAmount: saleReceipt.paymentReceiveAmount,
      paymentReceiveDate: saleReceipt.paymentReciveDate,
      invoiceId: saleReceipt.invoiceId,
      balance: saleReceipt.balance,
      description: saleReceipt.description,
      paymentMethodId: saleReceipt.paymentMethod.id,
    );
  }

  Receipt toDomain() {
    return Receipt(
      id: id,
      paymentReceiveAmount: paymentReceiveAmount,
      paymentReciveDate: paymentReceiveDate,
      invoiceId: invoiceId,
      code: code,
      invoiceCode: marketingPromotionInvoice?.invoiceCode ?? "",
      paymentMethod: PaymentMethod(id: paymentMethodId, name: paymentMethodName),
      customerName: customerName,
      businessUnitName: businessUnitName,
      signUrl: signUrl,
      description: description,
    );
  }
}

@freezed
class MarketingPromotionInvoice with _$MarketingPromotionInvoice {
  factory MarketingPromotionInvoice({
    @JsonKey(name: "invoice_code") @Default('') String invoiceCode,
  }) = _MarketingPromotionInvoice;

  factory MarketingPromotionInvoice.fromJson(Map<String, dynamic> data) => _$MarketingPromotionInvoiceFromJson(data);
}

@freezed
class InvoiceSummaryDTO with _$InvoiceSummaryDTO {
  const InvoiceSummaryDTO._();

  const factory InvoiceSummaryDTO({
    @JsonKey(name: "invoice_id") @Default(-1) int invoiceId,
    @JsonKey(name: "invoice_due_date") @Default('') String invoiceDueDate,
    @JsonKey(name: "received_date") @Default('') String receivedDate,
    @JsonKey(name: "invoice_total_amt") @Default(0) double invoiceTotalAmount,
    @JsonKey(name: "invoice_balance") @Default(0) double invoiceBalance,
    @JsonKey(name: "paid_amt") @Default(0) double paidAmount,
    @JsonKey(name: "invoice_code") @Default('') String invoiceCode,
    @JsonKey(name: "good_requisition_id") @Default(-1) int goodRequisitionId,
  }) = _InvoiceSummaryDTO;

  factory InvoiceSummaryDTO.fromJson(Map<String, dynamic> json) => _$InvoiceSummaryDTOFromJson(json);

  factory InvoiceSummaryDTO.fromDomain(Invoice invoice) {
    return InvoiceSummaryDTO(
      invoiceId: invoice.id,
      invoiceDueDate: invoice.dueDate,
      receivedDate: invoice.paymentReceiveDate,
      invoiceTotalAmount: invoice.grandTotal,
      invoiceBalance: invoice.balance,
      paidAmount: invoice.paidAmt,
      invoiceCode: invoice.code,
      goodRequisitionId: invoice.marketingGoodRequisitionId,
    );
  }
}
