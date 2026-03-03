import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_receipt.freezed.dart';

@freezed
class PaymentReceipt with _$PaymentReceipt {
  factory PaymentReceipt({
    @Default("") String code,
    @Default(0) double amount,
    @Default("") String date,
  }) = _PaymentReceipt;
}
