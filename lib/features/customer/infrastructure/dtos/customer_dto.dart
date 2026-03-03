import 'package:mgkaung_dms_mobile/core/enums/vip_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/country.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/business_unit_dto.dart';

part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

@freezed
class CustomerDTO with _$CustomerDTO {
  const CustomerDTO._();
  factory CustomerDTO({
    @JsonKey(name: 'customer_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'consignment_contract_id', includeToJson: false) @Default(-1) int consignmentContractId,
    @JsonKey(name: 'customer_code', includeToJson: false) @Default('') String customerCode,
    @JsonKey(name: 'dealing_date') @Default('') String dealingDate,
    @JsonKey(name: 'customer_first_name') @Default('') String customerFirstName,
    @JsonKey(name: 'customer_last_name', includeToJson: false) @Default('') String customerLastName,
    @JsonKey(name: 'customer_phone1') @Default('') String customerPhone1,
    @JsonKey(name: 'customer_phone2', includeIfNull: false) String? customerPhone2,
    @JsonKey(name: 'customer_phone3', includeIfNull: false) String? customerPhone3,
    @JsonKey(name: 'customer_phone4', includeIfNull: false) String? customerPhone4,
    @JsonKey(name: 'customer_email') @Default('') String customerEmail,
    @JsonKey(name: 'customer_address') @Default('') String customerAddress,
    @JsonKey(name: 'customer_township_id', includeIfNull: false) @Default(-1) int? customerTownshipId,
    @JsonKey(name: 'customer_township_name', includeToJson: false) @Default('') String customerTownshipName,
    @JsonKey(name: 'customer_city_id', includeIfNull: false) @Default(-1) int? customerCityId,
    @JsonKey(name: 'cus_city_name', includeToJson: false) @Default('') String customerCityName,
    @JsonKey(name: 'customer_division_id', includeIfNull: false) @Default(-1) int? customerDivisionId,
    @JsonKey(name: 'cus_state_name', includeToJson: false) @Default('') String customerDivisionName,
    @JsonKey(name: 'customer_country_id', includeToJson: false) @Default(-1) int customerCountryId,
    @JsonKey(name: 'contact_first_name') @Default('') String contactFirstName,
    @JsonKey(name: 'contact_last_name') @Default('') String contactLastName,
    @JsonKey(name: 'contact_email') @Default('') String contactEmail,
    @JsonKey(name: 'contact_phoneno') @Default('') String contactPhoneno,
    @JsonKey(name: 'region_way_id', includeIfNull: false) @Default(-1) int? regionWayId,
    @JsonKey(name: 'region_way_name', includeToJson: false) @Default("") String regionWayName,
    @JsonKey(name: 'business_unit_id', includeIfNull: false) @Default(-1) int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeIfNull: false) String? businessUnitName,
    @JsonKey(name: 'business_ref_code', includeIfNull: false) String? buRefId,
    @JsonKey(name: 'business_unit_address') @Default('') String buAddress,
    @JsonKey(name: 'customer_category_id') @Default(-1) int customerCategoryId,
    @JsonKey(name: 'customer_category_name', includeToJson: false) @Default('') String customerCategoryName,
    @JsonKey(name: 'customer_type_id') int? customerTypeId,
    @JsonKey(name: 'customer_type_name', includeToJson: false) @Default('') String customerTypeName,
    @JsonKey(name: 'credit_limit') @Default(0) double creditLimit,
    @JsonKey(name: 'consignment_limit', includeToJson: false) @Default(0) double consignmentLimit,
    @JsonKey(name: 'credit_type_id') @Default(-1) int creditTypeId,
    @JsonKey(name: 'credit_type_name', includeToJson: false) @Default("") String creditTypeName,
    @JsonKey(name: 'vip_status') @Default(2) int vipStatus,
    @JsonKey(name: 'status', includeToJson: false) @Default(0) int status,
    @Default('') String remark,
    @Default('') String description,
    @JsonKey(name: "business_units", includeToJson: false) @Default([]) List<BusinessUnitDTO> businessUnitDtos,
  }) = _CustomerDTO;

  factory CustomerDTO.fromJson(Map<String, dynamic> json) => _$CustomerDTOFromJson(json);

  factory CustomerDTO.fromDomain(Customer customer) {
    return CustomerDTO(
      id: customer.id,
      customerCode: customer.customerCode,
      customerFirstName: customer.name,
      dealingDate: customer.dealingDate,
      customerTypeId: customer.customerType.id == -1 ? null : customer.customerType.id,
      customerPhone1: customer.phone1,
      customerPhone2: customer.phone2,
      customerPhone3: customer.phone3,
      customerPhone4: customer.phone4,
      customerEmail: customer.email,
      customerAddress: customer.address,
      customerTownshipId: customer.township.id == -1 ? null : customer.township.id,
      customerCityId: customer.city.id == -1 ? null : customer.city.id,
      customerDivisionId: customer.division.id == -1 ? null : customer.division.id,
      contactFirstName: customer.contactPersonFirstName,
      contactLastName: customer.contactPersonLastName,
      contactEmail: customer.contactPersonEmail,
      contactPhoneno: customer.contactPersonPhoneNumber,
      customerCategoryId: customer.customerCategory.id,
      creditLimit: customer.creditLimit,
      creditTypeId: customer.creditType.id,
      regionWayId: customer.regionWayId,
      businessUnitName: customer.businessUnitName,
      buRefId: customer.buRefId,
      consignmentLimit: customer.consignmentLimit,
      vipStatus: customer.vipStatus.id,
      remark: customer.remark,
      description: customer.description,
      buAddress: customer.buAddress,
      businessUnitId: customer.businessUnitId == -1 ? null : customer.businessUnitId,
    );
  }

  Customer toDomain() {
    return Customer(
      id: id,
      customerCode: customerCode,
      dealingDate: dealingDate,
      consignmentContractId: consignmentContractId,
      address: customerAddress,
      phone1: customerPhone1,
      phone2: customerPhone2,
      phone3: customerPhone3,
      phone4: customerPhone4,
      email: customerEmail,
      name: "$customerFirstName $customerLastName",
      division: Division(id: customerDivisionId ?? -1, name: customerDivisionName),
      city: City(id: customerCityId ?? -1, name: customerCityName),
      township: Township(id: customerTownshipId ?? -1, name: customerTownshipName),
      country: Country(id: customerCountryId, name: 'Myanmar'),
      contactPersonFirstName: contactFirstName,
      contactPersonLastName: contactLastName,
      contactPersonEmail: contactEmail,
      contactPersonPhoneNumber: contactPhoneno,
      creditLimit: creditLimit,
      creditType: CreditType(id: creditTypeId, name: creditTypeName),
      consignmentLimit: consignmentLimit,
      remark: remark,
      description: description,
      regionWayId: regionWayId,
      regionWayName: regionWayName,
      businessUnitName: businessUnitName,
      buRefId: buRefId,
      buAddress: buAddress,
      status: status,
      customerCategory: CustomerCategory(id: customerCategoryId, name: customerCategoryName),
      vipStatus: VIPStatus.fromId(vipStatus),
      businessUnits: businessUnitDtos.map((dto) => dto.toDomain()).toList(),
      customerType: CustomerType(id: customerTypeId ?? -1, name: customerTypeName),
    );
  }
}
