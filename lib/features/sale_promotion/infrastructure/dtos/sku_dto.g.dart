// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sku_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkuDTOImpl _$$SkuDTOImplFromJson(Map<String, dynamic> json) => _$SkuDTOImpl(
      label: json['label'] as String? ?? "",
      value: (json['value'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$SkuDTOImplToJson(_$SkuDTOImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
    };
