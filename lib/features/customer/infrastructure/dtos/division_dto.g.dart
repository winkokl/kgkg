// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionDTOImpl _$$DivisionDTOImplFromJson(Map<String, dynamic> json) =>
    _$DivisionDTOImpl(
      id: (json['stateid'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      cityDTO: (json['cities'] as List<dynamic>?)
              ?.map((e) => CityDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DivisionDTOImplToJson(_$DivisionDTOImpl instance) =>
    <String, dynamic>{
      'stateid': instance.id,
      'name': instance.name,
      'cities': instance.cityDTO.map((e) => e.toJson()).toList(),
    };
