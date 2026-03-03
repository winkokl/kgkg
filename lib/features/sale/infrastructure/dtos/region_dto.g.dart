// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionDTOImpl _$$RegionDTOImplFromJson(Map<String, dynamic> json) =>
    _$RegionDTOImpl(
      id: (json['region_id'] as num?)?.toInt() ?? -1,
      name: json['region_name'] as String? ?? "",
      stateName: json['state_name'] as String? ?? "",
      townshipName: json['township_name'] as String? ?? "",
      cityName: json['city_name'] as String? ?? "",
    );

Map<String, dynamic> _$$RegionDTOImplToJson(_$RegionDTOImpl instance) =>
    <String, dynamic>{
      'region_id': instance.id,
      'region_name': instance.name,
      'state_name': instance.stateName,
      'township_name': instance.townshipName,
      'city_name': instance.cityName,
    };
