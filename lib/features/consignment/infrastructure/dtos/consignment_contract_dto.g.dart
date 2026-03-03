// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentContractDTOImpl _$$ConsignmentContractDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsignmentContractDTOImpl(
      id: (json['consignment_contract_id'] as num?)?.toInt() ?? -1,
      code: json['consignment_contract_code'] as String? ?? "",
      date: json['start_date'] as String? ?? "",
      customerName: json['customer_first_name'] as String? ?? '',
      consignmentDuration: (json['consignment_duration'] as num?)?.toInt() ?? 0,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      businessUnitName: json['business_unit_name'] as String? ?? "",
      warehouseName: json['warehouse_name'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? 0,
      productCategoryDtos: (json['product_categories'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCategoryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String? ?? "",
      productDtos: (json['consignment_contract_details'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConsignmentContractDTOImplToJson(
        _$ConsignmentContractDTOImpl instance) =>
    <String, dynamic>{
      'consignment_contract_id': instance.id,
      'consignment_contract_code': instance.code,
      'start_date': instance.date,
      'customer_first_name': instance.customerName,
      'consignment_duration': instance.consignmentDuration,
      'business_unit_id': instance.businessUnitId,
      'business_unit_name': instance.businessUnitName,
      'warehouse_name': instance.warehouseName,
      'status': instance.status,
      'product_categories':
          instance.productCategoryDtos.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'consignment_contract_details':
          instance.productDtos.map((e) => e.toJson()).toList(),
    };
