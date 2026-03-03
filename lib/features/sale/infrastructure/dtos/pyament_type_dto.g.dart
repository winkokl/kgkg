// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pyament_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTypeDTOImpl _$$PaymentTypeDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaymentTypeDTOImpl(
      id: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      name: json['payment_type_name'] as String? ?? "",
    );

Map<String, dynamic> _$$PaymentTypeDTOImplToJson(
        _$PaymentTypeDTOImpl instance) =>
    <String, dynamic>{
      'payment_type_id': instance.id,
      'payment_type_name': instance.name,
    };
