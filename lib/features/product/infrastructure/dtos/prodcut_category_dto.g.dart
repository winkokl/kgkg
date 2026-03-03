// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodcut_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCategoryDTOImpl _$$ProductCategoryDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryDTOImpl(
      id: (json['product_category_id'] as num?)?.toInt() ?? -1,
      name: json['product_category_name'] as String? ?? "",
      consignmentContractId: (json['consignment_contract_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductCategoryDTOImplToJson(
        _$ProductCategoryDTOImpl instance) =>
    <String, dynamic>{
      'product_category_id': instance.id,
      'product_category_name': instance.name,
      'consignment_contract_id': instance.consignmentContractId,
    };
