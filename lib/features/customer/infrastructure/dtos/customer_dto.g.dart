// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDTOImpl _$$CustomerDTOImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDTOImpl(
      id: (json['customer_id'] as num?)?.toInt() ?? -1,
      consignmentContractId:
          (json['consignment_contract_id'] as num?)?.toInt() ?? -1,
      customerCode: json['customer_code'] as String? ?? '',
      dealingDate: json['dealing_date'] as String? ?? '',
      customerFirstName: json['customer_first_name'] as String? ?? '',
      customerLastName: json['customer_last_name'] as String? ?? '',
      customerPhone1: json['customer_phone1'] as String? ?? '',
      customerPhone2: json['customer_phone2'] as String?,
      customerPhone3: json['customer_phone3'] as String?,
      customerPhone4: json['customer_phone4'] as String?,
      customerEmail: json['customer_email'] as String? ?? '',
      customerAddress: json['customer_address'] as String? ?? '',
      customerTownshipId: (json['customer_township_id'] as num?)?.toInt() ?? -1,
      customerTownshipName: json['customer_township_name'] as String? ?? '',
      customerCityId: (json['customer_city_id'] as num?)?.toInt() ?? -1,
      customerCityName: json['cus_city_name'] as String? ?? '',
      customerDivisionId: (json['customer_division_id'] as num?)?.toInt() ?? -1,
      customerDivisionName: json['cus_state_name'] as String? ?? '',
      customerCountryId: (json['customer_country_id'] as num?)?.toInt() ?? -1,
      contactFirstName: json['contact_first_name'] as String? ?? '',
      contactLastName: json['contact_last_name'] as String? ?? '',
      contactEmail: json['contact_email'] as String? ?? '',
      contactPhoneno: json['contact_phoneno'] as String? ?? '',
      regionWayId: (json['region_way_id'] as num?)?.toInt() ?? -1,
      regionWayName: json['region_way_name'] as String? ?? "",
      businessUnitId: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      businessUnitName: json['business_unit_name'] as String?,
      buRefId: json['business_ref_code'] as String?,
      buAddress: json['business_unit_address'] as String? ?? '',
      customerCategoryId: (json['customer_category_id'] as num?)?.toInt() ?? -1,
      customerCategoryName: json['customer_category_name'] as String? ?? '',
      customerTypeId: (json['customer_type_id'] as num?)?.toInt(),
      customerTypeName: json['customer_type_name'] as String? ?? '',
      creditLimit: (json['credit_limit'] as num?)?.toDouble() ?? 0,
      consignmentLimit: (json['consignment_limit'] as num?)?.toDouble() ?? 0,
      creditTypeId: (json['credit_type_id'] as num?)?.toInt() ?? -1,
      creditTypeName: json['credit_type_name'] as String? ?? "",
      vipStatus: (json['vip_status'] as num?)?.toInt() ?? 2,
      status: (json['status'] as num?)?.toInt() ?? 0,
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      businessUnitDtos: (json['business_units'] as List<dynamic>?)
              ?.map((e) => BusinessUnitDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CustomerDTOImplToJson(_$CustomerDTOImpl instance) {
  final val = <String, dynamic>{
    'dealing_date': instance.dealingDate,
    'customer_first_name': instance.customerFirstName,
    'customer_phone1': instance.customerPhone1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_phone2', instance.customerPhone2);
  writeNotNull('customer_phone3', instance.customerPhone3);
  writeNotNull('customer_phone4', instance.customerPhone4);
  val['customer_email'] = instance.customerEmail;
  val['customer_address'] = instance.customerAddress;
  writeNotNull('customer_township_id', instance.customerTownshipId);
  writeNotNull('customer_city_id', instance.customerCityId);
  writeNotNull('customer_division_id', instance.customerDivisionId);
  val['contact_first_name'] = instance.contactFirstName;
  val['contact_last_name'] = instance.contactLastName;
  val['contact_email'] = instance.contactEmail;
  val['contact_phoneno'] = instance.contactPhoneno;
  writeNotNull('region_way_id', instance.regionWayId);
  writeNotNull('business_unit_id', instance.businessUnitId);
  writeNotNull('business_unit_name', instance.businessUnitName);
  writeNotNull('business_ref_code', instance.buRefId);
  val['business_unit_address'] = instance.buAddress;
  val['customer_category_id'] = instance.customerCategoryId;
  val['customer_type_id'] = instance.customerTypeId;
  val['credit_limit'] = instance.creditLimit;
  val['credit_type_id'] = instance.creditTypeId;
  val['vip_status'] = instance.vipStatus;
  val['remark'] = instance.remark;
  val['description'] = instance.description;
  return val;
}
