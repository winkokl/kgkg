import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pyament_type_dto.freezed.dart';
part 'pyament_type_dto.g.dart';

@freezed
class PaymentTypeDTO with _$PaymentTypeDTO {
  const PaymentTypeDTO._();
  factory PaymentTypeDTO({
    @JsonKey(name: 'payment_type_id') @Default(-1) int id,
    @JsonKey(name: 'payment_type_name') @Default("") String name,
  }) = _PaymentTypeDTO;

  factory PaymentTypeDTO.fromJson(Map<String, dynamic> json) => _$PaymentTypeDTOFromJson(json);

  PaymentType toDomain() => PaymentType(id: id, name: name);
}
