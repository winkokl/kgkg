// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleDTOImpl _$$VehicleDTOImplFromJson(Map<String, dynamic> json) =>
    _$VehicleDTOImpl(
      id: (json['vehicle_id'] as num?)?.toInt() ?? -1,
      name: json['vehicle_name'] as String? ?? "",
    );

Map<String, dynamic> _$$VehicleDTOImplToJson(_$VehicleDTOImpl instance) =>
    <String, dynamic>{
      'vehicle_id': instance.id,
      'vehicle_name': instance.name,
    };
