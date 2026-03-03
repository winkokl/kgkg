import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_return_dto.freezed.dart';
part 'secondary_sale_return_dto.g.dart';

@freezed
class SecondarySaleReturnDTO with _$SecondarySaleReturnDTO {
  const SecondarySaleReturnDTO._();
  const factory SecondarySaleReturnDTO({
    @JsonKey(name: 'secondary_sales_return_id', includeToJson: false) @Default(-1) int id,
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
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int paymentStatus,
    @JsonKey(name: 'return_reason_id') @Default(-1) int returnReasonId,
    @JsonKey(name: 'reason_name', includeToJson: false) @Default("") String returnReasonName,
  }) = _SecondarySaleReturnDTO;

  factory SecondarySaleReturnDTO.fromJson(Map<String, dynamic> json) => _$SecondarySaleReturnDTOFromJson(json);

  factory SecondarySaleReturnDTO.fromDomain(SecondarySaleReturn secondarySaleReturn) {
    return SecondarySaleReturnDTO(
      id: secondarySaleReturn.id,
      secondarySaleInvoiceId: secondarySaleReturn.secondarySaleInvoice.id,
      customerId: secondarySaleReturn.secondarySaleInvoice.customer.id,
      returnDate: secondarySaleReturn.returnDate,
      code: secondarySaleReturn.code,
      productDtos: secondarySaleReturn.products.map((e) => ProductDTO.fromDomain(e, false, true)).toList(),
      description: secondarySaleReturn.description,
      balance: secondarySaleReturn.totalReturnAmount,
      grandtotal: secondarySaleReturn.grandtotal,
      otherChargesAmount: secondarySaleReturn.otherChargesAmount,
      subtotal: secondarySaleReturn.subtotal,
      returnDeductMethod: secondarySaleReturn.returnDeductType.name,
      returnDeductAmount: secondarySaleReturn.returnDeductAmount,
      totalReturnAmount: secondarySaleReturn.totalReturnAmount,
      remark: secondarySaleReturn.remark,
      returnReasonId: secondarySaleReturn.returnReason.id,
    );
  }

  SecondarySaleReturn toDomain() {
    return SecondarySaleReturn(
      id: id,
      returnDate: returnDate,
      code: code,
      invoiceCode: invoiceCode,
      balance: balance,
      customer: Customer(id: customerId, name: customerFirstName),
      otherChargesAmount: otherChargesAmount.runtimeType == String ? double.parse(otherChargesAmount) : otherChargesAmount,
      returnDeductAmount: returnDeductAmount,
      totalReturnAmount: totalReturnAmount,
      returnDeductType: AmountOrPercentStatus.fromName(returnDeductMethod),
      secondarySaleInvoice: SecondarySaleInvoice(id: secondarySaleInvoiceId, code: invoiceCode, customer: Customer(id: customerId, name: customerFirstName)),
      products: productDtos.map((e) => e.toDomain()).toList(),
      paymentStatus: PaymentStatus.fromId(paymentStatus),
      remark: remark,
      description: description,
      subtotal: subtotal,
      grandtotal: grandtotal,
      returnReason: ReturnReason(id: returnReasonId, name: returnReasonName),
    );
  }
}

// "secondary_sales_invoice_id" :11,
// "customer_id":1,
// "return_date" : "2024-06-14",
// "remark" : "haha",
// "description" : "heheh",
// "sub_total" : 10000,
// "other_charges" : 10000,
// "grand_total_amount" : 100000,
// "return_deduct_method" : "%",
// "return_deduct_amount" : 10000,
// "total_return_amount" : 150000,
// "balance" : 150000,
// "product_detail" : [
//     {

//         "product_id": 16,
//         "unit_id": 1,
//         "sales_price": 5000,
//         "qty": 3,
//         "amount" : 5000,
//         "discount_amount": 10,
//         "discount_type": "%",
//         "tax_type": "%",
//         "tax_amount": 10,
//         "total_amount": 20000,
//         "return_qty" : 1,
//         "return_amount" : 10000
//     },
//      {

//         "product_id": 17,
//         "unit_id": 1,
//         "sales_price": 5000,
//         "qty": 3,
//         "amount" : 5000,
//         "discount_amount": 10,
//         "discount_type": "%",
//         "tax_type": "%",
//         "tax_amount": 10,
//         "total_amount": 30000,
//         "return_qty" : 1,
//         "return_amount" : 10000
//     }
// ]
