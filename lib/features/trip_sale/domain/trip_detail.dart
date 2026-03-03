import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_detail.freezed.dart';

@freezed
class TripDetail with _$TripDetail {
  const factory TripDetail({
    @Default("") String wayName,
    @Default("") String regionName,
    @Default("") String cityName,
    @Default("") String stateName,
    @Default("") String townshipName,
  }) = _TripDetail;
}
