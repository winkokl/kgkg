import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_receipt_dto.freezed.dart';
part 'secondary_sale_receipt_dto.g.dart';

@freezed
class SecondarySaleReceiptDTO with _$SecondarySaleReceiptDTO {
  const SecondarySaleReceiptDTO._();
  const factory SecondarySaleReceiptDTO({
    @JsonKey(name: "secondary_sales_payment_receive_id", includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false) @Default('') String invoiceCode,
    @JsonKey(name: "payment_receive_code", includeToJson: false) @Default('') String code,
    @JsonKey(name: "secondary_sales_invoice_id") @Default(-1) int secondarySalesInvoiceId,
    @JsonKey(name: "payment_receive_amount") @Default(0) double paymentReceiveAmount,
    @JsonKey(name: "payment_receive_date") @Default('') String paymentReceiveDate,
    @JsonKey(name: "invoiceData") @Default([]) List<InvoiceDataDTO> invoiceDataDto,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
    @JsonKey(name: 'signature', includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'description') @Default("") String description,
    @JsonKey(name: 'first_issue_date', includeToJson: false) @Default("") String goodIssueDate,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
  }) = _SecondarySaleReceiptDTO;

  factory SecondarySaleReceiptDTO.fromJson(Map<String, dynamic> json) => _$SecondarySaleReceiptDTOFromJson(json);

  factory SecondarySaleReceiptDTO.fromDomain(SecondarySaleReceipt saleReceipt) {
    return SecondarySaleReceiptDTO(
      paymentReceiveAmount: saleReceipt.paymentReceiveAmount,
      paymentReceiveDate: saleReceipt.paymentReciveDate,
      secondarySalesInvoiceId: saleReceipt.secondarySaleInvoiceId,
      invoiceDataDto: [InvoiceDataDTO.fromDomain(saleReceipt.invoiceData)],
      paymentMethodId: saleReceipt.paymentMethod.id,
      description: saleReceipt.description,
    );
  }

  SecondarySaleReceipt toDomain() {
    return SecondarySaleReceipt(
      id: id,
      paymentReceiveAmount: paymentReceiveAmount,
      paymentReciveDate: prettierDateFormat(paymentReceiveDate),
      secondarySaleInvoiceId: secondarySalesInvoiceId,
      code: code,
      invoiceCode: invoiceCode,
      signUrl: signUrl,
      description: description,
      businessUnitName: businessUnitName,
      goodIssueDate: prettierDateFormat(goodIssueDate),
      paymentMethod: PaymentMethod(id: paymentMethodId, name: paymentMethodName),
    );
  }
}

@freezed
class InvoiceDataDTO with _$InvoiceDataDTO {
  const factory InvoiceDataDTO({
    @JsonKey(name: "warehouse_id") @Default(-1) int warehouseId,
    @JsonKey(name: "due_date") @Default('') String dueDate,
    @JsonKey(name: "payment_type_id") @Default(-1) int paymentTypeId,
    @JsonKey(name: "grand_total_amount") @Default(0) double grandTotalAmount,
    @JsonKey(name: "business_unit_id") @Default(-1) int businessUnitId,
    @JsonKey(name: "balance") @Default(0) double balance,
  }) = _InvoiceDataDTO;

  factory InvoiceDataDTO.fromJson(Map<String, dynamic> json) => _$InvoiceDataDTOFromJson(json);

  factory InvoiceDataDTO.fromDomain(InvoiceData invoiceData) {
    return InvoiceDataDTO(
      balance: invoiceData.balance,
      dueDate: invoiceData.dueDate,
      grandTotalAmount: invoiceData.grandTotalAmount,
      paymentTypeId: invoiceData.paymentTypeId,
      warehouseId: invoiceData.warehouseId,
      businessUnitId: invoiceData.businessUnitId,
    );
  }
}
