// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripDetailDTOImpl _$$TripDetailDTOImplFromJson(Map<String, dynamic> json) =>
    _$TripDetailDTOImpl(
      wayName: json['way_name'] as String? ?? "",
      regionName: json['region_name'] as String? ?? "",
      cityName: json['city_name'] as String? ?? "",
      stateName: json['state_name'] as String? ?? "",
      townshipName: json['township_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TripDetailDTOImplToJson(_$TripDetailDTOImpl instance) =>
    <String, dynamic>{
      'way_name': instance.wayName,
      'region_name': instance.regionName,
      'city_name': instance.cityName,
      'state_name': instance.stateName,
      'township_name': instance.townshipName,
    };
