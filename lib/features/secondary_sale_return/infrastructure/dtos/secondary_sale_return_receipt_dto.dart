import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_return_receipt_dto.freezed.dart';
part 'secondary_sale_return_receipt_dto.g.dart';

@freezed
class SecondarySaleReturnReceiptDTO with _$SecondarySaleReturnReceiptDTO {
  const SecondarySaleReturnReceiptDTO._();
  const factory SecondarySaleReturnReceiptDTO({
    @JsonKey(name: 'secondary_sales_return_payment_made_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'payment_made_date') @Default("") String paymentMadeDate,
    @JsonKey(name: 'payment_made_amount') @Default(0) double paymentMadeAmount,
    @JsonKey(name: 'secondary_sales_return_id', includeToJson: false) @Default(-1) int secondarySalesReturnId,
    @JsonKey(name: 'secondary_sales_invoice_id') @Default(-1) int secondarySaleInvoiceId,
    @JsonKey(name: "customer_id") @Default(-1) int customerId,
    @JsonKey(name: "customer_first_name", includeToJson: false) @Default("") String customerFirstName,
    @JsonKey(name: 'return_date') @Default("") String returnDate,
    @JsonKey(name: 'secondary_sales_return_code', includeToJson: false) @Default("") String code,
    @JsonKey(name: 'secondary_sales_invoice_code', includeToJson: false) @Default("") String invoiceCode,
    @JsonKey(name: 'product_detail') @Default([]) List<ProductDTO> productDtos,
    @Default("") String remark,
    @Default("") String description,
    @JsonKey(name: 'other_charges') @Default(0) dynamic otherChargesAmount,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: "grand_total_amount") @Default(0) double grandtotal,
    @JsonKey(name: 'return_deduct_method') @Default("") String returnDeductMethod,
    @JsonKey(name: 'return_deduct_amount') @Default(0) double returnDeductAmount,
    @JsonKey(name: 'total_return_amount') @Default(0) double totalReturnAmount,
    @JsonKey(name: 'balance') @Default(0) double balance,
    @JsonKey(name: 'signature', includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
  }) = _SecondarySaleReturnReceiptDTO;

  factory SecondarySaleReturnReceiptDTO.fromJson(Map<String, dynamic> json) => _$SecondarySaleReturnReceiptDTOFromJson(json);

  factory SecondarySaleReturnReceiptDTO.fromDomain(SecondarySaleReturnReceipt secondarySaleReturnReceipt) {
    return SecondarySaleReturnReceiptDTO(
      secondarySalesReturnId: secondarySaleReturnReceipt.secondarySaleReturnId,
      paymentMadeAmount: secondarySaleReturnReceipt.paidAmount,
      paymentMadeDate: secondarySaleReturnReceipt.paymentDate,
      secondarySaleInvoiceId: secondarySaleReturnReceipt.secondarySaleInvoice.id,
      customerId: secondarySaleReturnReceipt.secondarySaleInvoice.customer.id,
      returnDate: secondarySaleReturnReceipt.returnDate,
      code: secondarySaleReturnReceipt.code,
      productDtos: secondarySaleReturnReceipt.products.map((e) => ProductDTO.fromDomain(e, false, true)).toList(),
      description: secondarySaleReturnReceipt.description,
      balance: secondarySaleReturnReceipt.balance,
      grandtotal: secondarySaleReturnReceipt.grandtotal,
      otherChargesAmount: secondarySaleReturnReceipt.otherChargesAmount,
      subtotal: secondarySaleReturnReceipt.subtotal,
      returnDeductMethod: secondarySaleReturnReceipt.returnDeductType.name,
      returnDeductAmount: secondarySaleReturnReceipt.returnDeductAmount,
      totalReturnAmount: secondarySaleReturnReceipt.totalReturnAmount,
      remark: secondarySaleReturnReceipt.remark,
      paymentMethodId: secondarySaleReturnReceipt.paymentMethod.id,
    );
  }

  SecondarySaleReturnReceipt toDomain() {
    return SecondarySaleReturnReceipt(
      id: id,
      secondarySaleReturnId: secondarySalesReturnId,
      code: code,
      returnDate: returnDate,
      grandtotal: grandtotal,
      balance: balance,
      totalReturnAmount: totalReturnAmount,
      paymentDate: paymentMadeDate,
      paidAmount: paymentMadeAmount,
      signUrl: signUrl,
      description: description,
      paymentMethod: PaymentMethod(id: paymentMethodId, name: paymentMethodName),
    );
  }
}
