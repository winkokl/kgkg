// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'way_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WayDtoImpl _$$WayDtoImplFromJson(Map<String, dynamic> json) => _$WayDtoImpl(
      id: (json['way_id'] as num?)?.toInt() ?? -1,
      name: json['way_name'] as String? ?? "",
    );

Map<String, dynamic> _$$WayDtoImplToJson(_$WayDtoImpl instance) =>
    <String, dynamic>{
      'way_id': instance.id,
      'way_name': instance.name,
    };
