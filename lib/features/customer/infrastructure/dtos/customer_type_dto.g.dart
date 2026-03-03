// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTypeDTOImpl _$$CustomerTypeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTypeDTOImpl(
      id: (json['customer_type_id'] as num?)?.toInt() ?? -1,
      name: json['customer_type_name'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CustomerTypeDTOImplToJson(
        _$CustomerTypeDTOImpl instance) =>
    <String, dynamic>{
      'customer_type_id': instance.id,
      'customer_type_name': instance.name,
      'status': instance.status,
    };
