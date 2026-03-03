import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_detail_dto.freezed.dart';
part 'trip_detail_dto.g.dart';

@freezed
class TripDetailDTO with _$TripDetailDTO {
  const TripDetailDTO._();
  factory TripDetailDTO({
    @JsonKey(name: "way_name") @Default("") String wayName,
    @JsonKey(name: "region_name") @Default("") String regionName,
    @JsonKey(name: "city_name") @Default("") String cityName,
    @JsonKey(name: "state_name") @Default("") String stateName,
    @JsonKey(name: "township_name") @Default("") String townshipName,
  }) = _TripDetailDTO;

  factory TripDetailDTO.fromJson(Map<String, dynamic> json) => _$TripDetailDTOFromJson(json);

  TripDetail toDomain() {
    return TripDetail(
      cityName: cityName,
      stateName: stateName,
      regionName: regionName,
      wayName: wayName,
      townshipName: townshipName,
    );
  }
}
