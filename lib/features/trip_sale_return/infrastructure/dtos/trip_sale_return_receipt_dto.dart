import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sale_return_receipt_dto.freezed.dart';
part 'trip_sale_return_receipt_dto.g.dart';

@freezed
class TripSaleReturnReceiptDTO with _$TripSaleReturnReceiptDTO {
  const TripSaleReturnReceiptDTO._();
  const factory TripSaleReturnReceiptDTO({
    @JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'payment_made_date') @Default("") String paymentMadeDate,
    @JsonKey(name: 'payment_made_amount') @Default(0) double paymentMadeAmount,
    @JsonKey(name: 'trip_sale_return_id') @Default(-1) int tripSalesReturnId,
    @JsonKey(name: 'return_date', includeToJson: false) @Default("") String returnDate,
    @JsonKey(name: 'trip_sale_return_code', includeToJson: false) @Default("") String code,
    @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false) @Default("") String invoiceCode,
    @Default("") String remark,
    @Default("") String description,
    @JsonKey(name: "total_return_amount", includeToJson: false) @Default(0) double totalReturnAmount,
    @JsonKey(name: 'balance') @Default(0) double balance,
    @JsonKey(name: 'signature', includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
  }) = _TripSaleReturnReceiptDTO;

  factory TripSaleReturnReceiptDTO.fromJson(Map<String, dynamic> json) => _$TripSaleReturnReceiptDTOFromJson(json);

  factory TripSaleReturnReceiptDTO.fromDomain(TripSaleReturnReceipt tripSaleReturnReceipt) {
    return TripSaleReturnReceiptDTO(
      tripSalesReturnId: tripSaleReturnReceipt.tripSaleReturnId,
      paymentMadeAmount: tripSaleReturnReceipt.paidAmount,
      paymentMadeDate: tripSaleReturnReceipt.paymentDate,
      description: tripSaleReturnReceipt.description,
      balance: tripSaleReturnReceipt.balance,
      remark: tripSaleReturnReceipt.remark,
      paymentMethodId: tripSaleReturnReceipt.paymentMethod.id,
    );
  }

  TripSaleReturnReceipt toDomain() {
    return TripSaleReturnReceipt(
      id: id,
      tripSaleReturnId: tripSalesReturnId,
      code: code,
      returnDate: returnDate,
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
