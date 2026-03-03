// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseDTOImpl _$$WarehouseDTOImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseDTOImpl(
      id: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      name: json['warehouse_name'] as String? ?? "",
      mainWarehouseName: json['main_warehouse_name'] as String? ?? "",
    );

Map<String, dynamic> _$$WarehouseDTOImplToJson(_$WarehouseDTOImpl instance) =>
    <String, dynamic>{
      'warehouse_id': instance.id,
      'warehouse_name': instance.name,
      'main_warehouse_name': instance.mainWarehouseName,
    };
