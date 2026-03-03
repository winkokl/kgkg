// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_user_assign_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripUserAssignDTOImpl _$$TripUserAssignDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripUserAssignDTOImpl(
      id: (json['user_id'] as num?)?.toInt() ?? -1,
      userName: json['username'] as String? ?? "",
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      role: json['user_role_name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      tripdtos: (json['way_list'] as List<dynamic>?)
              ?.map((e) => TripNameDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TripUserAssignDTOImplToJson(
        _$TripUserAssignDTOImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'username': instance.userName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'user_role_name': instance.role,
      'description': instance.description,
      'way_list': instance.tripdtos.map((e) => e.toJson()).toList(),
    };
