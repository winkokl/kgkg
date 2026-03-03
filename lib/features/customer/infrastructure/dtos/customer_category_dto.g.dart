// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerCategoryDTOImpl _$$CustomerCategoryDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerCategoryDTOImpl(
      id: (json['customer_category_id'] as num?)?.toInt() ?? -1,
      name: json['customer_category_name'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CustomerCategoryDTOImplToJson(
        _$CustomerCategoryDTOImpl instance) =>
    <String, dynamic>{
      'customer_category_id': instance.id,
      'customer_category_name': instance.name,
      'status': instance.status,
    };
