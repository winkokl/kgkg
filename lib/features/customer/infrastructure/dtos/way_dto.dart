import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';

part 'way_dto.freezed.dart';
part 'way_dto.g.dart';

@freezed
class WayDto with _$WayDto {
  const WayDto._();
  const factory WayDto({
    @JsonKey(name: 'way_id') @Default(-1) int id,
    @JsonKey(name: 'way_name') @Default("") String name,
  }) = _WayDto;

  factory WayDto.fromJson(Map<String, dynamic> json) => _$WayDtoFromJson(json);

  Way toDomain() => Way(id: id, name: name);
}
