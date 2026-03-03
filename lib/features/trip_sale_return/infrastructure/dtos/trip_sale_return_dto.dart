import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sale_return_dto.freezed.dart';
part 'trip_sale_return_dto.g.dart';

@freezed
class TripSaleReturnDTO with _$TripSaleReturnDTO {
  const TripSaleReturnDTO._();
  const factory TripSaleReturnDTO({
    @JsonKey(name: 'trip_sale_return_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'trip_sale_id') @Default(-1) int tripSaleId,
    @JsonKey(name: "customer_id", includeToJson: false) @Default(-1) int customerId,
    @JsonKey(name: "customer_first_name", includeToJson: false) @Default("") String customerFirstName,
    @JsonKey(name: 'return_date') @Default("") String returnDate,
    @JsonKey(name: 'type') @Default("") String type,
    @JsonKey(name: 'trip_sale_return_code', includeToJson: false) @Default("") String code,
    @JsonKey(name: 'trip_sale_request_code', includeToJson: false) @Default("") String tripSaleRequestCode,
    @JsonKey(name: 'trip_sale_request_id', includeToJson: false) @Default("") String tripSaleRequestId,
    @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false) @Default("") String invoiceCode,
    @JsonKey(name: 'products') @Default([]) List<ProductDTO> productDtos,
    @Default("") String remark,
    @Default("") String description,
    @JsonKey(name: 'other_charges') @Default(0) double otherChargesAmount,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: "grand_total_amount") @Default(0) double grandtotal,
    @JsonKey(name: 'return_deduct_method') @Default("") String returnDeductMethod,
    @JsonKey(name: 'return_deduct_amount') @Default(0) double returnDeductAmount,
    @JsonKey(name: 'total_return_amount') @Default(0) double totalReturnAmount,
    @JsonKey(name: 'balance', includeToJson: false) @Default(0) double balance,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int paymentStatus,
    @JsonKey(name: 'return_reason_id') @Default(-1) int returnReasonId,
    @JsonKey(name: 'reason_name', includeToJson: false) @Default("") String returnReasonName,
  }) = _TripSaleReturnDTO;

  factory TripSaleReturnDTO.fromJson(Map<String, dynamic> json) => _$TripSaleReturnDTOFromJson(json);

  factory TripSaleReturnDTO.fromDomain(TripSaleReturn tripSaleReturn) {
    return TripSaleReturnDTO(
      id: tripSaleReturn.id,
      tripSaleId: tripSaleReturn.tripSaleRequest.id == -1 ? tripSaleReturn.tripSaleInvoice.id : tripSaleReturn.tripSaleRequest.id,
      customerId: tripSaleReturn.tripSaleInvoice.customer.id,
      returnDate: tripSaleReturn.returnDate,
      code: tripSaleReturn.code,
      productDtos: tripSaleReturn.products.map((e) => ProductDTO.fromDomain(e, false, true)).toList(),
      description: tripSaleReturn.description,
      balance: tripSaleReturn.totalReturnAmount,
      grandtotal: tripSaleReturn.grandtotal,
      otherChargesAmount: tripSaleReturn.otherChargesAmount,
      subtotal: tripSaleReturn.subtotal,
      returnDeductMethod: tripSaleReturn.returnDeductType.name,
      returnDeductAmount: tripSaleReturn.returnDeductAmount,
      totalReturnAmount: tripSaleReturn.totalReturnAmount,
      remark: tripSaleReturn.remark,
      returnReasonId: tripSaleReturn.returnReason.id,
      type: tripSaleReturn.returnType.toString(),
    );
  }

  TripSaleReturn toDomain() {
    return TripSaleReturn(
      id: id,
      returnDate: returnDate,
      code: code,
      invoiceCode: invoiceCode,
      balance: balance,
      customer: Customer(id: customerId, name: customerFirstName),
      otherChargesAmount: otherChargesAmount,
      returnDeductAmount: returnDeductAmount,
      totalReturnAmount: totalReturnAmount,
      returnDeductType: AmountOrPercentStatus.fromName(returnDeductMethod),
      tripSaleInvoice: TripSaleInvoice(id: tripSaleId, code: invoiceCode, customer: Customer(id: customerId, name: customerFirstName)),
      tripSaleRequest: TripSaleRequest(id: tripSaleId, tripSaleRequestCode: tripSaleRequestCode),
      returnType: int.tryParse(type) ?? 1,
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
