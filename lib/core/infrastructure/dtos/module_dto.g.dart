// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleDTOImpl _$$ModuleDTOImplFromJson(Map<String, dynamic> json) =>
    _$ModuleDTOImpl(
      name: json['module'] as String? ?? "",
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      subModuleDtos: (json['submodules'] as List<dynamic>?)
              ?.map((e) => SubModuleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ModuleDTOImplToJson(_$ModuleDTOImpl instance) =>
    <String, dynamic>{
      'module': instance.name,
      'actions': instance.actions,
      'submodules': instance.subModuleDtos.map((e) => e.toJson()).toList(),
    };
