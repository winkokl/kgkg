import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type.freezed.dart';

@freezed
class PaymentType with _$PaymentType {
  const factory PaymentType({
    @Default(-1) int id,
    @Default("") String name,
  }) = _PaymentType;
}
