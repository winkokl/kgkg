import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_term.freezed.dart';

@freezed
class PaymentTerm with _$PaymentTerm {
  const factory PaymentTerm({
    @Default(-1) int id,
    @Default("") String name,
  }) = _PaymentTerm;
}
