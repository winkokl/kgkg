// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'township_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TownshipDTOImpl _$$TownshipDTOImplFromJson(Map<String, dynamic> json) =>
    _$TownshipDTOImpl(
      id: (json['townshipid'] as num?)?.toInt() ?? -1,
      name: json['townshipname'] as String? ?? "",
    );

Map<String, dynamic> _$$TownshipDTOImplToJson(_$TownshipDTOImpl instance) =>
    <String, dynamic>{
      'townshipid': instance.id,
      'townshipname': instance.name,
    };
