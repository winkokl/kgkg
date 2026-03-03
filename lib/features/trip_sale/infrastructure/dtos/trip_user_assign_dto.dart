import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_name_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_user_assign_dto.freezed.dart';
part 'trip_user_assign_dto.g.dart';

@freezed
class TripUserAssignDTO with _$TripUserAssignDTO {
  const TripUserAssignDTO._();
  const factory TripUserAssignDTO({
    @JsonKey(name: "user_id") @Default(-1) int id,
    @JsonKey(name: "username") @Default("") String userName,
    @JsonKey(name: "first_name") @Default("") String firstName,
    @JsonKey(name: "last_name") @Default("") String lastName,
    @JsonKey(name: "phone_number") @Default("") String phoneNumber,
    @JsonKey(name: "user_role_name") @Default("") String role,
    @Default("") String description,
    @JsonKey(name: "way_list") @Default([]) List<TripNameDTO> tripdtos,
  }) = _TripUserAssignDTO;

  factory TripUserAssignDTO.fromJson(Map<String, dynamic> json) => _$TripUserAssignDTOFromJson(json);

  TripUserAssign toDomain() {
    return TripUserAssign(
      id: id,
      description: description,
      role: role,
      phoneNumber: phoneNumber,
      trips: tripdtos.map((e) => e.toDomain()).toList(),
      userName: userName,
      name: "$firstName $lastName",
    );
  }
}
