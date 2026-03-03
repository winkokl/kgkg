import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';

part 'return_reason_dto.freezed.dart';
part 'return_reason_dto.g.dart';

@freezed
class ReturnReasonDTO with _$ReturnReasonDTO {
  const ReturnReasonDTO._();
  factory ReturnReasonDTO({
    @JsonKey(name: 'return_reason_id') @Default(-1) int id,
    @JsonKey(name: 'reason_name') @Default("") String name,
  }) = _ReturnReasonDTO;

  factory ReturnReasonDTO.fromJson(Map<String, dynamic> json) => _$ReturnReasonDTOFromJson(json);

  ReturnReason toDomain() => ReturnReason(id: id, name: name);
}
