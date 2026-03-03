import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'township_dto.freezed.dart';
part 'township_dto.g.dart';

@freezed
class TownshipDTO with _$TownshipDTO {
  const TownshipDTO._();
  const factory TownshipDTO({
    @JsonKey(name: 'townshipid') @Default(-1) int id,
    @JsonKey(name: 'townshipname') @Default("") String name,
  }) = _TownshipDTO;

  factory TownshipDTO.fromJson(Map<String, dynamic> json) => _$TownshipDTOFromJson(json);

  Township toDomain() => Township(id: id, name: name);
}
