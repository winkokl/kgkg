import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_term_dto.freezed.dart';
part 'payment_term_dto.g.dart';

@freezed
class PaymentTermDTO with _$PaymentTermDTO {
  const PaymentTermDTO._();
  const factory PaymentTermDTO({
    @JsonKey(name: 'payment_terms_id') @Default(-1) int id,
    @JsonKey(name: 'payment_terms') @Default("") String name,
  }) = _PaymentTermDTO;

  factory PaymentTermDTO.fromJson(Map<String, dynamic> json) => _$PaymentTermDTOFromJson(json);

  PaymentTerm toDomain() => PaymentTerm(id: id, name: name);
}
