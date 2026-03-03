// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodDTOImpl _$$PaymentMethodDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodDTOImpl(
      id: (json['payment_method_id'] as num?)?.toInt() ?? -1,
      name: json['payment_method_name'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaymentMethodDTOImplToJson(
        _$PaymentMethodDTOImpl instance) =>
    <String, dynamic>{
      'payment_method_id': instance.id,
      'payment_method_name': instance.name,
      'status': instance.status,
    };
