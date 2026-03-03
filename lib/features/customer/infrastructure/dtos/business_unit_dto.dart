import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';

part 'business_unit_dto.freezed.dart';
part 'business_unit_dto.g.dart';

@freezed
class BusinessUnitDTO with _$BusinessUnitDTO {
  const BusinessUnitDTO._();
  const factory BusinessUnitDTO({
    @JsonKey(name: 'business_unit_id', includeIfNull: false) @Default(-1) int? id,
    @JsonKey(name: 'business_unit_name') @Default("") String name,
    @JsonKey(name: 'business_unit_code', includeToJson: false) @Default("") String code,
    @JsonKey(name: 'business_ref_code') String? buRefId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default("") String customerName,
    @JsonKey(name: 'customer_category_name', includeToJson: false) @Default("") String customerCategoryName,
    @JsonKey(name: 'customer_type_name', includeToJson: false) @Default("") String customerTypeName,
    @JsonKey(name: 'division_id', includeIfNull: false) @Default(-1) int? divisionId,
    @JsonKey(name: 'state_name', includeToJson: false) @Default("") String divisionName,
    @JsonKey(name: 'city_id', includeIfNull: false) @Default(-1) int? cityId,
    @JsonKey(name: 'city_name', includeToJson: false) @Default("") String cityName,
    @JsonKey(name: 'township_id', includeIfNull: false) @Default(-1) int? townshipId,
    @JsonKey(name: 'township_name', includeToJson: false) @Default("") String townshipName,
    @JsonKey(name: 'region_way_id') @Default("") dynamic wayId,
    @JsonKey(name: 'way_name', includeToJson: false) @Default("") String wayName,
    @JsonKey(name: 'created_type', includeToJson: false) @Default(0) int createdType,
    @JsonKey(name: 'business_unit_address') @Default("") String address,
    @JsonKey(name: 'address', includeToJson: false) @Default("") String buAddress,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    // @JsonKey(name: 'credit_limit') @Default(0) double creditLimit,
    // @JsonKey(name: 'credit_type_id') @Default(-1) int creditTypeId,
    // @JsonKey(name: 'credit_type_name', includeToJson: false) @Default("") String creditTypeName,
    @Default("") String description,
  }) = _BusinessUnitDTO;

  factory BusinessUnitDTO.fromJson(Map<String, dynamic> json) => _$BusinessUnitDTOFromJson(json);

  factory BusinessUnitDTO.fromDomain(BusinessUnit bu) {
    return BusinessUnitDTO(
      id: bu.id == -1 ? null : bu.id,
      customerId: bu.customerId,
      buRefId: bu.buRefId,
      divisionId: bu.divisionId == -1 ? null : bu.divisionId,
      cityId: bu.cityId == -1 ? null : bu.cityId,
      townshipId: bu.townshipId == -1 ? null : bu.townshipId,
      wayId: bu.wayId,
      name: bu.name,
      address: bu.address,
      phoneNumber: bu.phoneNumber,
      description: bu.description,
      // creditLimit: bu.creditLimit,
      // creditTypeId: bu.creditType.id,
    );
  }

  BusinessUnit toDomain() => BusinessUnit(
        id: id ?? -1,
        name: name,
        code: code,
        buRefId: buRefId,
        customerId: customerId,
        customerName: customerName,
        customerCategoryName: customerCategoryName,
        customerTypeName: customerTypeName,
        divisionId: divisionId ?? -1,
        divisionName: divisionName,
        cityId: cityId ?? -1,
        cityName: cityName,
        townshipId: townshipId ?? -1,
        townshipName: townshipName,
        wayId: wayId.runtimeType == String ? int.tryParse(wayId) ?? 0 : wayId,
        wayName: wayName,
        address: address,
        buAddress: buAddress,
        phoneNumber: phoneNumber,
        description: description,
        createdType: createdType,
        // creditLimit: creditLimit,
        // creditType: CreditType(id: creditTypeId, name: creditTypeName),
      );
}
