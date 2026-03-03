// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_name_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripNameDTOImpl _$$TripNameDTOImplFromJson(Map<String, dynamic> json) =>
    _$TripNameDTOImpl(
      id: (json['trip_id'] as num?)?.toInt() ?? -1,
      name: json['trip_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TripNameDTOImplToJson(_$TripNameDTOImpl instance) =>
    <String, dynamic>{
      'trip_id': instance.id,
      'trip_name': instance.name,
    };
