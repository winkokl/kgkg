// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_reason_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReturnReasonDTOImpl _$$ReturnReasonDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ReturnReasonDTOImpl(
      id: (json['return_reason_id'] as num?)?.toInt() ?? -1,
      name: json['reason_name'] as String? ?? "",
    );

Map<String, dynamic> _$$ReturnReasonDTOImplToJson(
        _$ReturnReasonDTOImpl instance) =>
    <String, dynamic>{
      'return_reason_id': instance.id,
      'reason_name': instance.name,
    };
