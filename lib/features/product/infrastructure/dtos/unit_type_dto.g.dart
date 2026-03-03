// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitTypeDTOImpl _$$UnitTypeDTOImplFromJson(Map<String, dynamic> json) =>
    _$UnitTypeDTOImpl(
      id: json['unit_id'] ?? "",
      baseQty: json['base_qty'] ?? "",
      name: json['unit_name'] as String? ?? "",
    );

Map<String, dynamic> _$$UnitTypeDTOImplToJson(_$UnitTypeDTOImpl instance) =>
    <String, dynamic>{
      'unit_id': instance.id,
      'base_qty': instance.baseQty,
      'unit_name': instance.name,
    };
