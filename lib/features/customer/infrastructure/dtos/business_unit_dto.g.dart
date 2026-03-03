// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_unit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessUnitDTOImpl _$$BusinessUnitDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessUnitDTOImpl(
      id: (json['business_unit_id'] as num?)?.toInt() ?? -1,
      name: json['business_unit_name'] as String? ?? "",
      code: json['business_unit_code'] as String? ?? "",
      buRefId: json['business_ref_code'] as String?,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      customerName: json['customer_first_name'] as String? ?? "",
      customerCategoryName: json['customer_category_name'] as String? ?? "",
      customerTypeName: json['customer_type_name'] as String? ?? "",
      divisionId: (json['division_id'] as num?)?.toInt() ?? -1,
      divisionName: json['state_name'] as String? ?? "",
      cityId: (json['city_id'] as num?)?.toInt() ?? -1,
      cityName: json['city_name'] as String? ?? "",
      townshipId: (json['township_id'] as num?)?.toInt() ?? -1,
      townshipName: json['township_name'] as String? ?? "",
      wayId: json['region_way_id'] ?? "",
      wayName: json['way_name'] as String? ?? "",
      createdType: (json['created_type'] as num?)?.toInt() ?? 0,
      address: json['business_unit_address'] as String? ?? "",
      buAddress: json['address'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? '',
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$BusinessUnitDTOImplToJson(
    _$BusinessUnitDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('business_unit_id', instance.id);
  val['business_unit_name'] = instance.name;
  val['business_ref_code'] = instance.buRefId;
  val['customer_id'] = instance.customerId;
  writeNotNull('division_id', instance.divisionId);
  writeNotNull('city_id', instance.cityId);
  writeNotNull('township_id', instance.townshipId);
  val['region_way_id'] = instance.wayId;
  val['business_unit_address'] = instance.address;
  val['phone_number'] = instance.phoneNumber;
  val['description'] = instance.description;
  return val;
}
