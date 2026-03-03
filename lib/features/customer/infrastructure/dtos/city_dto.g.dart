// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityDTOImpl _$$CityDTOImplFromJson(Map<String, dynamic> json) =>
    _$CityDTOImpl(
      id: (json['cityid'] as num?)?.toInt() ?? -1,
      name: json['cityname'] as String? ?? '',
      townshipDTO: (json['townships'] as List<dynamic>?)
              ?.map((e) => TownshipDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CityDTOImplToJson(_$CityDTOImpl instance) =>
    <String, dynamic>{
      'cityid': instance.id,
      'cityname': instance.name,
      'townships': instance.townshipDTO.map((e) => e.toJson()).toList(),
    };
