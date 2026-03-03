import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'trip_sale_receipt_dto.freezed.dart';
part 'trip_sale_receipt_dto.g.dart';

@freezed
class TripSaleReceiptDTO with _$TripSaleReceiptDTO {
  const TripSaleReceiptDTO._();
  const factory TripSaleReceiptDTO({
    @JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "trip_sale_invoice_code", includeToJson: false) @Default('') String invoiceCode,
    @JsonKey(name: "payment_receive_code", includeToJson: false) @Default('') String code,
    @JsonKey(name: "trip_sale_invoice_id") @Default(-1) int tripSalesInvoiceId,
    @JsonKey(name: "payment_receive_amount") @Default(0) double paymentReceiveAmount,
    @JsonKey(name: "payment_receive_date") @Default('') String paymentReceiveDate,
    @JsonKey(name: "balance") @Default(0) double balance,
    @JsonKey(name: 'payment_method_id') @Default(-1) int paymentMethodId,
    @JsonKey(name: 'payment_method_name', includeToJson: false) @Default("") String paymentMethodName,
    @Default("") String description,
    @JsonKey(name: 'signature', includeToJson: false) @Default("") String signUrl,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,

    // @Default("") String remark,
    // @Default("") String description,
  }) = _TripSaleReceiptDTO;

  factory TripSaleReceiptDTO.fromJson(Map<String, dynamic> json) => _$TripSaleReceiptDTOFromJson(json);

  factory TripSaleReceiptDTO.fromDomain(TripSaleReceipt saleReceipt) {
    return TripSaleReceiptDTO(
      paymentReceiveAmount: saleReceipt.paymentReceiveAmount,
      paymentReceiveDate: saleReceipt.paymentReciveDate,
      tripSalesInvoiceId: saleReceipt.tripSaleInvoiceId,
      balance: saleReceipt.balance,
      paymentMethodId: saleReceipt.paymentMethod.id,
      description: saleReceipt.description,
    );
  }

  TripSaleReceipt toDomain() {
    return TripSaleReceipt(
      id: id,
      paymentReceiveAmount: paymentReceiveAmount,
      paymentReciveDate: DateFormat(dateFormattedString).format(DateTime.parse(paymentReceiveDate)),
      tripSaleInvoiceId: tripSalesInvoiceId,
      code: code,
      invoiceCode: invoiceCode,
      signUrl: signUrl,
      description: description,
      businessUnitName: businessUnitName,
      paymentMethod: PaymentMethod(id: paymentMethodId, name: paymentMethodName),
    );
  }
}
