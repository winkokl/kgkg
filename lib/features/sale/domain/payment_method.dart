import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    @Default(-1) int id,
    @Default("") String name,
    @Default(false) bool isActive,
  }) = _PaymentMethod;
}
