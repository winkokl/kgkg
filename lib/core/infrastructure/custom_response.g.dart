// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomResponseImpl _$$CustomResponseImplFromJson(Map<String, dynamic> json) =>
    _$CustomResponseImpl(
      json['success'] as bool?,
      json['status'] as String?,
      json['message'] as String?,
      json['data'],
    );

Map<String, dynamic> _$$CustomResponseImplToJson(
        _$CustomResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
