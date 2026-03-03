// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleTypeDTOImpl _$$SaleTypeDTOImplFromJson(Map<String, dynamic> json) =>
    _$SaleTypeDTOImpl(
      id: (json['sale_type_id'] as num?)?.toInt() ?? -1,
      name: json['sale_type_name'] as String? ?? "",
    );

Map<String, dynamic> _$$SaleTypeDTOImplToJson(_$SaleTypeDTOImpl instance) =>
    <String, dynamic>{
      'sale_type_id': instance.id,
      'sale_type_name': instance.name,
    };
