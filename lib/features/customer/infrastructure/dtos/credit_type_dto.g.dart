// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditTypeDtoImpl _$$CreditTypeDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreditTypeDtoImpl(
      id: (json['credit_type_id'] as num?)?.toInt() ?? -1,
      name: json['credit_type_name'] as String? ?? "",
    );

Map<String, dynamic> _$$CreditTypeDtoImplToJson(_$CreditTypeDtoImpl instance) =>
    <String, dynamic>{
      'credit_type_id': instance.id,
      'credit_type_name': instance.name,
    };
