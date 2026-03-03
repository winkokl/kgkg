import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_name_dto.freezed.dart';
part 'trip_name_dto.g.dart';

@freezed
class TripNameDTO with _$TripNameDTO {
  const TripNameDTO._();
  const factory TripNameDTO({
    @JsonKey(name: "trip_id") @Default(-1) int id,
    @JsonKey(name: "trip_name") @Default("") String name,
  }) = _TripNameDTO;

  factory TripNameDTO.fromJson(Map<String, dynamic> json) => _$TripNameDTOFromJson(json);

  TripName toDomain() => TripName(id: id, name: name);
}
