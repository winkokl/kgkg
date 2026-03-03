import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_print_format.freezed.dart';

@freezed
class PaymentPrintFormat with _$PaymentPrintFormat {
  factory PaymentPrintFormat({
    @Default("") String receiveID,
    @Default("") String receiveDate,
    @Default("") String invoiceID,
    @Default("") String paymentMethod,
    @Default(0) double paymentAmount,
  }) = _PaymentPrintFormat;
}
