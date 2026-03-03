// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_term_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTermDTOImpl _$$PaymentTermDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaymentTermDTOImpl(
      id: (json['payment_terms_id'] as num?)?.toInt() ?? -1,
      name: json['payment_terms'] as String? ?? "",
    );

Map<String, dynamic> _$$PaymentTermDTOImplToJson(
        _$PaymentTermDTOImpl instance) =>
    <String, dynamic>{
      'payment_terms_id': instance.id,
      'payment_terms': instance.name,
    };
