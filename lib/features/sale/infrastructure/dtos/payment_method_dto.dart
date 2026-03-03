import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'payment_method_dto.freezed.dart';
part 'payment_method_dto.g.dart';

@freezed
class PaymentMethodDTO with _$PaymentMethodDTO {
  const PaymentMethodDTO._();
  factory PaymentMethodDTO({
    @JsonKey(name: 'payment_method_id') @Default(-1) int id,
    @JsonKey(name: 'payment_method_name') @Default("") String name,
    @JsonKey(name: 'status') @Default(0) int status,
  }) = _PaymentMethodDTO;

  factory PaymentMethodDTO.fromJson(Map<String, dynamic> json) => _$PaymentMethodDTOFromJson(json);

  PaymentMethod toDomain() => PaymentMethod(id: id, name: name, isActive: status == 0 ? false : true);
}
