import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';

part 'credit_type_dto.freezed.dart';
part 'credit_type_dto.g.dart';

@freezed
class CreditTypeDto with _$CreditTypeDto {
  const CreditTypeDto._();
  const factory CreditTypeDto({
    @JsonKey(name: 'credit_type_id') @Default(-1) int id,
    @JsonKey(name: 'credit_type_name') @Default("") String name,
  }) = _CreditTypeDto;

  factory CreditTypeDto.fromJson(Map<String, dynamic> json) => _$CreditTypeDtoFromJson(json);

  CreditType toDomain() => CreditType(id: id, name: name);
}
