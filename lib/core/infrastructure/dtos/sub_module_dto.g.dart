// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_module_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubModuleDTOImpl _$$SubModuleDTOImplFromJson(Map<String, dynamic> json) =>
    _$SubModuleDTOImpl(
      name: json['name'] as String? ?? "",
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubModuleDTOImplToJson(_$SubModuleDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'actions': instance.actions,
    };
