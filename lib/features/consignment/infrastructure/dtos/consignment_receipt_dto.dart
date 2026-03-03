import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'consignment_receipt_dto.freezed.dart';
part 'consignment_receipt_dto.g.dart';

@freezed
class ConsignmentReceiptDTO with _$ConsignmentReceiptDTO {
  const ConsignmentReceiptDTO._();
  const factory ConsignmentReceiptDTO({
    @JsonKey(name: "consignment_payment_receive_id", includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "consignment_invoice_code", includeToJson: false) @Default('') String invoiceCode,
    @JsonKey(name: "payment_receive_code", includeToJson: false) @Default('') String code,
    @JsonKey(name: "consignment_invoice_id") @Default(-1) int consignmentsInvoiceId,
    @JsonKey(name: "payment_receive_amount") @Default(0) double paymentReceiveAmount,
    @JsonKey(name: "payment_receive_date") @Default('') String paymentReceiveDate,
    @JsonKey(name: "customer_first_name", includeToJson: false) @Default('') String customerName,
    @JsonKey(name: "business_unit_name", includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: "balance") @Default(0) double balance,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: "signature", includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
    // @Default("") String remark,
    @Default("") String description,
  }) = _ConsignmentReceiptDTO;

  factory ConsignmentReceiptDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentReceiptDTOFromJson(json);

  factory ConsignmentReceiptDTO.fromDomain(ConsignmentReceipt saleReceipt) {
    return ConsignmentReceiptDTO(
      paymentReceiveAmount: saleReceipt.paymentReceiveAmount,
      paymentReceiveDate: saleReceipt.paymentReciveDate,
      consignmentsInvoiceId: saleReceipt.consignmentInvoiceId,
      balance: saleReceipt.balance,
      description: saleReceipt.description,
      paymentMethodId: saleReceipt.paymentMethod.id,
    );
  }

  ConsignmentReceipt toDomain() {
    return ConsignmentReceipt(
      id: id,
      paymentReceiveAmount: paymentReceiveAmount,
      paymentReciveDate: paymentReceiveDate,
      consignmentInvoiceId: consignmentsInvoiceId,
      code: code,
      invoiceCode: invoiceCode,
      paymentMethod: PaymentMethod(id: paymentMethodId, name: paymentMethodName),
      customerName: customerName,
      businessUnitName: businessUnitName,
      signUrl: signUrl,
      description: description,
    );
  }
}
