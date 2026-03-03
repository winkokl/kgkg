// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerDTO {
  @JsonKey(name: 'customer_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_contract_id', includeToJson: false)
  int get consignmentContractId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_code', includeToJson: false)
  String get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealing_date')
  String get dealingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name')
  String get customerFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_last_name', includeToJson: false)
  String get customerLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone1')
  String get customerPhone1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone2', includeIfNull: false)
  String? get customerPhone2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone3', includeIfNull: false)
  String? get customerPhone3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone4', includeIfNull: false)
  String? get customerPhone4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_address')
  String get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_township_id', includeIfNull: false)
  int? get customerTownshipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_township_name', includeToJson: false)
  String get customerTownshipName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_city_id', includeIfNull: false)
  int? get customerCityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cus_city_name', includeToJson: false)
  String get customerCityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_division_id', includeIfNull: false)
  int? get customerDivisionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cus_state_name', includeToJson: false)
  String get customerDivisionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_country_id', includeToJson: false)
  int get customerCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_first_name')
  String get contactFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_last_name')
  String get contactLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_email')
  String get contactEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_phoneno')
  String get contactPhoneno => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_way_id', includeIfNull: false)
  int? get regionWayId => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_way_name', includeToJson: false)
  String get regionWayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  int? get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeIfNull: false)
  String? get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_ref_code', includeIfNull: false)
  String? get buRefId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_address')
  String get buAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_category_id')
  int get customerCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  String get customerCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type_id')
  int? get customerTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  String get customerTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  double get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_limit', includeToJson: false)
  double get consignmentLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_type_id')
  int get creditTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_type_name', includeToJson: false)
  String get creditTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  int get vipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  int get status => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "business_units", includeToJson: false)
  List<BusinessUnitDTO> get businessUnitDtos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDTOCopyWith<CustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDTOCopyWith<$Res> {
  factory $CustomerDTOCopyWith(
          CustomerDTO value, $Res Function(CustomerDTO) then) =
      _$CustomerDTOCopyWithImpl<$Res, CustomerDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_contract_id', includeToJson: false)
      int consignmentContractId,
      @JsonKey(name: 'customer_code', includeToJson: false) String customerCode,
      @JsonKey(name: 'dealing_date') String dealingDate,
      @JsonKey(name: 'customer_first_name') String customerFirstName,
      @JsonKey(name: 'customer_last_name', includeToJson: false)
      String customerLastName,
      @JsonKey(name: 'customer_phone1') String customerPhone1,
      @JsonKey(name: 'customer_phone2', includeIfNull: false)
      String? customerPhone2,
      @JsonKey(name: 'customer_phone3', includeIfNull: false)
      String? customerPhone3,
      @JsonKey(name: 'customer_phone4', includeIfNull: false)
      String? customerPhone4,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'customer_address') String customerAddress,
      @JsonKey(name: 'customer_township_id', includeIfNull: false)
      int? customerTownshipId,
      @JsonKey(name: 'customer_township_name', includeToJson: false)
      String customerTownshipName,
      @JsonKey(name: 'customer_city_id', includeIfNull: false)
      int? customerCityId,
      @JsonKey(name: 'cus_city_name', includeToJson: false)
      String customerCityName,
      @JsonKey(name: 'customer_division_id', includeIfNull: false)
      int? customerDivisionId,
      @JsonKey(name: 'cus_state_name', includeToJson: false)
      String customerDivisionName,
      @JsonKey(name: 'customer_country_id', includeToJson: false)
      int customerCountryId,
      @JsonKey(name: 'contact_first_name') String contactFirstName,
      @JsonKey(name: 'contact_last_name') String contactLastName,
      @JsonKey(name: 'contact_email') String contactEmail,
      @JsonKey(name: 'contact_phoneno') String contactPhoneno,
      @JsonKey(name: 'region_way_id', includeIfNull: false) int? regionWayId,
      @JsonKey(name: 'region_way_name', includeToJson: false)
      String regionWayName,
      @JsonKey(name: 'business_unit_id', includeIfNull: false)
      int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeIfNull: false)
      String? businessUnitName,
      @JsonKey(name: 'business_ref_code', includeIfNull: false) String? buRefId,
      @JsonKey(name: 'business_unit_address') String buAddress,
      @JsonKey(name: 'customer_category_id') int customerCategoryId,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      String customerCategoryName,
      @JsonKey(name: 'customer_type_id') int? customerTypeId,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      String customerTypeName,
      @JsonKey(name: 'credit_limit') double creditLimit,
      @JsonKey(name: 'consignment_limit', includeToJson: false)
      double consignmentLimit,
      @JsonKey(name: 'credit_type_id') int creditTypeId,
      @JsonKey(name: 'credit_type_name', includeToJson: false)
      String creditTypeName,
      @JsonKey(name: 'vip_status') int vipStatus,
      @JsonKey(name: 'status', includeToJson: false) int status,
      String remark,
      String description,
      @JsonKey(name: "business_units", includeToJson: false)
      List<BusinessUnitDTO> businessUnitDtos});
}

/// @nodoc
class _$CustomerDTOCopyWithImpl<$Res, $Val extends CustomerDTO>
    implements $CustomerDTOCopyWith<$Res> {
  _$CustomerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? customerCode = null,
    Object? dealingDate = null,
    Object? customerFirstName = null,
    Object? customerLastName = null,
    Object? customerPhone1 = null,
    Object? customerPhone2 = freezed,
    Object? customerPhone3 = freezed,
    Object? customerPhone4 = freezed,
    Object? customerEmail = null,
    Object? customerAddress = null,
    Object? customerTownshipId = freezed,
    Object? customerTownshipName = null,
    Object? customerCityId = freezed,
    Object? customerCityName = null,
    Object? customerDivisionId = freezed,
    Object? customerDivisionName = null,
    Object? customerCountryId = null,
    Object? contactFirstName = null,
    Object? contactLastName = null,
    Object? contactEmail = null,
    Object? contactPhoneno = null,
    Object? regionWayId = freezed,
    Object? regionWayName = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = freezed,
    Object? buRefId = freezed,
    Object? buAddress = null,
    Object? customerCategoryId = null,
    Object? customerCategoryName = null,
    Object? customerTypeId = freezed,
    Object? customerTypeName = null,
    Object? creditLimit = null,
    Object? consignmentLimit = null,
    Object? creditTypeId = null,
    Object? creditTypeName = null,
    Object? vipStatus = null,
    Object? status = null,
    Object? remark = null,
    Object? description = null,
    Object? businessUnitDtos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCode: null == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String,
      dealingDate: null == dealingDate
          ? _value.dealingDate
          : dealingDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      customerLastName: null == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone1: null == customerPhone1
          ? _value.customerPhone1
          : customerPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone2: freezed == customerPhone2
          ? _value.customerPhone2
          : customerPhone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone3: freezed == customerPhone3
          ? _value.customerPhone3
          : customerPhone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone4: freezed == customerPhone4
          ? _value.customerPhone4
          : customerPhone4 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerTownshipId: freezed == customerTownshipId
          ? _value.customerTownshipId
          : customerTownshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerTownshipName: null == customerTownshipName
          ? _value.customerTownshipName
          : customerTownshipName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCityId: freezed == customerCityId
          ? _value.customerCityId
          : customerCityId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerCityName: null == customerCityName
          ? _value.customerCityName
          : customerCityName // ignore: cast_nullable_to_non_nullable
              as String,
      customerDivisionId: freezed == customerDivisionId
          ? _value.customerDivisionId
          : customerDivisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerDivisionName: null == customerDivisionName
          ? _value.customerDivisionName
          : customerDivisionName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCountryId: null == customerCountryId
          ? _value.customerCountryId
          : customerCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      contactFirstName: null == contactFirstName
          ? _value.contactFirstName
          : contactFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      contactLastName: null == contactLastName
          ? _value.contactLastName
          : contactLastName // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhoneno: null == contactPhoneno
          ? _value.contactPhoneno
          : contactPhoneno // ignore: cast_nullable_to_non_nullable
              as String,
      regionWayId: freezed == regionWayId
          ? _value.regionWayId
          : regionWayId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionWayName: null == regionWayName
          ? _value.regionWayName
          : regionWayName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: freezed == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategoryId: null == customerCategoryId
          ? _value.customerCategoryId
          : customerCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCategoryName: null == customerCategoryName
          ? _value.customerCategoryName
          : customerCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeId: freezed == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerTypeName: null == customerTypeName
          ? _value.customerTypeName
          : customerTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      consignmentLimit: null == consignmentLimit
          ? _value.consignmentLimit
          : consignmentLimit // ignore: cast_nullable_to_non_nullable
              as double,
      creditTypeId: null == creditTypeId
          ? _value.creditTypeId
          : creditTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      creditTypeName: null == creditTypeName
          ? _value.creditTypeName
          : creditTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      vipStatus: null == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitDtos: null == businessUnitDtos
          ? _value.businessUnitDtos
          : businessUnitDtos // ignore: cast_nullable_to_non_nullable
              as List<BusinessUnitDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDTOImplCopyWith<$Res>
    implements $CustomerDTOCopyWith<$Res> {
  factory _$$CustomerDTOImplCopyWith(
          _$CustomerDTOImpl value, $Res Function(_$CustomerDTOImpl) then) =
      __$$CustomerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_contract_id', includeToJson: false)
      int consignmentContractId,
      @JsonKey(name: 'customer_code', includeToJson: false) String customerCode,
      @JsonKey(name: 'dealing_date') String dealingDate,
      @JsonKey(name: 'customer_first_name') String customerFirstName,
      @JsonKey(name: 'customer_last_name', includeToJson: false)
      String customerLastName,
      @JsonKey(name: 'customer_phone1') String customerPhone1,
      @JsonKey(name: 'customer_phone2', includeIfNull: false)
      String? customerPhone2,
      @JsonKey(name: 'customer_phone3', includeIfNull: false)
      String? customerPhone3,
      @JsonKey(name: 'customer_phone4', includeIfNull: false)
      String? customerPhone4,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'customer_address') String customerAddress,
      @JsonKey(name: 'customer_township_id', includeIfNull: false)
      int? customerTownshipId,
      @JsonKey(name: 'customer_township_name', includeToJson: false)
      String customerTownshipName,
      @JsonKey(name: 'customer_city_id', includeIfNull: false)
      int? customerCityId,
      @JsonKey(name: 'cus_city_name', includeToJson: false)
      String customerCityName,
      @JsonKey(name: 'customer_division_id', includeIfNull: false)
      int? customerDivisionId,
      @JsonKey(name: 'cus_state_name', includeToJson: false)
      String customerDivisionName,
      @JsonKey(name: 'customer_country_id', includeToJson: false)
      int customerCountryId,
      @JsonKey(name: 'contact_first_name') String contactFirstName,
      @JsonKey(name: 'contact_last_name') String contactLastName,
      @JsonKey(name: 'contact_email') String contactEmail,
      @JsonKey(name: 'contact_phoneno') String contactPhoneno,
      @JsonKey(name: 'region_way_id', includeIfNull: false) int? regionWayId,
      @JsonKey(name: 'region_way_name', includeToJson: false)
      String regionWayName,
      @JsonKey(name: 'business_unit_id', includeIfNull: false)
      int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeIfNull: false)
      String? businessUnitName,
      @JsonKey(name: 'business_ref_code', includeIfNull: false) String? buRefId,
      @JsonKey(name: 'business_unit_address') String buAddress,
      @JsonKey(name: 'customer_category_id') int customerCategoryId,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      String customerCategoryName,
      @JsonKey(name: 'customer_type_id') int? customerTypeId,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      String customerTypeName,
      @JsonKey(name: 'credit_limit') double creditLimit,
      @JsonKey(name: 'consignment_limit', includeToJson: false)
      double consignmentLimit,
      @JsonKey(name: 'credit_type_id') int creditTypeId,
      @JsonKey(name: 'credit_type_name', includeToJson: false)
      String creditTypeName,
      @JsonKey(name: 'vip_status') int vipStatus,
      @JsonKey(name: 'status', includeToJson: false) int status,
      String remark,
      String description,
      @JsonKey(name: "business_units", includeToJson: false)
      List<BusinessUnitDTO> businessUnitDtos});
}

/// @nodoc
class __$$CustomerDTOImplCopyWithImpl<$Res>
    extends _$CustomerDTOCopyWithImpl<$Res, _$CustomerDTOImpl>
    implements _$$CustomerDTOImplCopyWith<$Res> {
  __$$CustomerDTOImplCopyWithImpl(
      _$CustomerDTOImpl _value, $Res Function(_$CustomerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? customerCode = null,
    Object? dealingDate = null,
    Object? customerFirstName = null,
    Object? customerLastName = null,
    Object? customerPhone1 = null,
    Object? customerPhone2 = freezed,
    Object? customerPhone3 = freezed,
    Object? customerPhone4 = freezed,
    Object? customerEmail = null,
    Object? customerAddress = null,
    Object? customerTownshipId = freezed,
    Object? customerTownshipName = null,
    Object? customerCityId = freezed,
    Object? customerCityName = null,
    Object? customerDivisionId = freezed,
    Object? customerDivisionName = null,
    Object? customerCountryId = null,
    Object? contactFirstName = null,
    Object? contactLastName = null,
    Object? contactEmail = null,
    Object? contactPhoneno = null,
    Object? regionWayId = freezed,
    Object? regionWayName = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = freezed,
    Object? buRefId = freezed,
    Object? buAddress = null,
    Object? customerCategoryId = null,
    Object? customerCategoryName = null,
    Object? customerTypeId = freezed,
    Object? customerTypeName = null,
    Object? creditLimit = null,
    Object? consignmentLimit = null,
    Object? creditTypeId = null,
    Object? creditTypeName = null,
    Object? vipStatus = null,
    Object? status = null,
    Object? remark = null,
    Object? description = null,
    Object? businessUnitDtos = null,
  }) {
    return _then(_$CustomerDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCode: null == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String,
      dealingDate: null == dealingDate
          ? _value.dealingDate
          : dealingDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      customerLastName: null == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone1: null == customerPhone1
          ? _value.customerPhone1
          : customerPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone2: freezed == customerPhone2
          ? _value.customerPhone2
          : customerPhone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone3: freezed == customerPhone3
          ? _value.customerPhone3
          : customerPhone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone4: freezed == customerPhone4
          ? _value.customerPhone4
          : customerPhone4 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerTownshipId: freezed == customerTownshipId
          ? _value.customerTownshipId
          : customerTownshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerTownshipName: null == customerTownshipName
          ? _value.customerTownshipName
          : customerTownshipName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCityId: freezed == customerCityId
          ? _value.customerCityId
          : customerCityId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerCityName: null == customerCityName
          ? _value.customerCityName
          : customerCityName // ignore: cast_nullable_to_non_nullable
              as String,
      customerDivisionId: freezed == customerDivisionId
          ? _value.customerDivisionId
          : customerDivisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerDivisionName: null == customerDivisionName
          ? _value.customerDivisionName
          : customerDivisionName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCountryId: null == customerCountryId
          ? _value.customerCountryId
          : customerCountryId // ignore: cast_nullable_to_non_nullable
              as int,
      contactFirstName: null == contactFirstName
          ? _value.contactFirstName
          : contactFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      contactLastName: null == contactLastName
          ? _value.contactLastName
          : contactLastName // ignore: cast_nullable_to_non_nullable
              as String,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhoneno: null == contactPhoneno
          ? _value.contactPhoneno
          : contactPhoneno // ignore: cast_nullable_to_non_nullable
              as String,
      regionWayId: freezed == regionWayId
          ? _value.regionWayId
          : regionWayId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionWayName: null == regionWayName
          ? _value.regionWayName
          : regionWayName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: freezed == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategoryId: null == customerCategoryId
          ? _value.customerCategoryId
          : customerCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      customerCategoryName: null == customerCategoryName
          ? _value.customerCategoryName
          : customerCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeId: freezed == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerTypeName: null == customerTypeName
          ? _value.customerTypeName
          : customerTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      consignmentLimit: null == consignmentLimit
          ? _value.consignmentLimit
          : consignmentLimit // ignore: cast_nullable_to_non_nullable
              as double,
      creditTypeId: null == creditTypeId
          ? _value.creditTypeId
          : creditTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      creditTypeName: null == creditTypeName
          ? _value.creditTypeName
          : creditTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      vipStatus: null == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitDtos: null == businessUnitDtos
          ? _value._businessUnitDtos
          : businessUnitDtos // ignore: cast_nullable_to_non_nullable
              as List<BusinessUnitDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDTOImpl extends _CustomerDTO {
  _$CustomerDTOImpl(
      {@JsonKey(name: 'customer_id', includeToJson: false) this.id = -1,
      @JsonKey(name: 'consignment_contract_id', includeToJson: false)
      this.consignmentContractId = -1,
      @JsonKey(name: 'customer_code', includeToJson: false)
      this.customerCode = '',
      @JsonKey(name: 'dealing_date') this.dealingDate = '',
      @JsonKey(name: 'customer_first_name') this.customerFirstName = '',
      @JsonKey(name: 'customer_last_name', includeToJson: false)
      this.customerLastName = '',
      @JsonKey(name: 'customer_phone1') this.customerPhone1 = '',
      @JsonKey(name: 'customer_phone2', includeIfNull: false)
      this.customerPhone2,
      @JsonKey(name: 'customer_phone3', includeIfNull: false)
      this.customerPhone3,
      @JsonKey(name: 'customer_phone4', includeIfNull: false)
      this.customerPhone4,
      @JsonKey(name: 'customer_email') this.customerEmail = '',
      @JsonKey(name: 'customer_address') this.customerAddress = '',
      @JsonKey(name: 'customer_township_id', includeIfNull: false)
      this.customerTownshipId = -1,
      @JsonKey(name: 'customer_township_name', includeToJson: false)
      this.customerTownshipName = '',
      @JsonKey(name: 'customer_city_id', includeIfNull: false)
      this.customerCityId = -1,
      @JsonKey(name: 'cus_city_name', includeToJson: false)
      this.customerCityName = '',
      @JsonKey(name: 'customer_division_id', includeIfNull: false)
      this.customerDivisionId = -1,
      @JsonKey(name: 'cus_state_name', includeToJson: false)
      this.customerDivisionName = '',
      @JsonKey(name: 'customer_country_id', includeToJson: false)
      this.customerCountryId = -1,
      @JsonKey(name: 'contact_first_name') this.contactFirstName = '',
      @JsonKey(name: 'contact_last_name') this.contactLastName = '',
      @JsonKey(name: 'contact_email') this.contactEmail = '',
      @JsonKey(name: 'contact_phoneno') this.contactPhoneno = '',
      @JsonKey(name: 'region_way_id', includeIfNull: false)
      this.regionWayId = -1,
      @JsonKey(name: 'region_way_name', includeToJson: false)
      this.regionWayName = "",
      @JsonKey(name: 'business_unit_id', includeIfNull: false)
      this.businessUnitId = -1,
      @JsonKey(name: 'business_unit_name', includeIfNull: false)
      this.businessUnitName,
      @JsonKey(name: 'business_ref_code', includeIfNull: false) this.buRefId,
      @JsonKey(name: 'business_unit_address') this.buAddress = '',
      @JsonKey(name: 'customer_category_id') this.customerCategoryId = -1,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      this.customerCategoryName = '',
      @JsonKey(name: 'customer_type_id') this.customerTypeId,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      this.customerTypeName = '',
      @JsonKey(name: 'credit_limit') this.creditLimit = 0,
      @JsonKey(name: 'consignment_limit', includeToJson: false)
      this.consignmentLimit = 0,
      @JsonKey(name: 'credit_type_id') this.creditTypeId = -1,
      @JsonKey(name: 'credit_type_name', includeToJson: false)
      this.creditTypeName = "",
      @JsonKey(name: 'vip_status') this.vipStatus = 2,
      @JsonKey(name: 'status', includeToJson: false) this.status = 0,
      this.remark = '',
      this.description = '',
      @JsonKey(name: "business_units", includeToJson: false) final List<BusinessUnitDTO> businessUnitDtos = const []})
      : _businessUnitDtos = businessUnitDtos,
        super._();

  factory _$CustomerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDTOImplFromJson(json);

  @override
  @JsonKey(name: 'customer_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'consignment_contract_id', includeToJson: false)
  final int consignmentContractId;
  @override
  @JsonKey(name: 'customer_code', includeToJson: false)
  final String customerCode;
  @override
  @JsonKey(name: 'dealing_date')
  final String dealingDate;
  @override
  @JsonKey(name: 'customer_first_name')
  final String customerFirstName;
  @override
  @JsonKey(name: 'customer_last_name', includeToJson: false)
  final String customerLastName;
  @override
  @JsonKey(name: 'customer_phone1')
  final String customerPhone1;
  @override
  @JsonKey(name: 'customer_phone2', includeIfNull: false)
  final String? customerPhone2;
  @override
  @JsonKey(name: 'customer_phone3', includeIfNull: false)
  final String? customerPhone3;
  @override
  @JsonKey(name: 'customer_phone4', includeIfNull: false)
  final String? customerPhone4;
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;
  @override
  @JsonKey(name: 'customer_address')
  final String customerAddress;
  @override
  @JsonKey(name: 'customer_township_id', includeIfNull: false)
  final int? customerTownshipId;
  @override
  @JsonKey(name: 'customer_township_name', includeToJson: false)
  final String customerTownshipName;
  @override
  @JsonKey(name: 'customer_city_id', includeIfNull: false)
  final int? customerCityId;
  @override
  @JsonKey(name: 'cus_city_name', includeToJson: false)
  final String customerCityName;
  @override
  @JsonKey(name: 'customer_division_id', includeIfNull: false)
  final int? customerDivisionId;
  @override
  @JsonKey(name: 'cus_state_name', includeToJson: false)
  final String customerDivisionName;
  @override
  @JsonKey(name: 'customer_country_id', includeToJson: false)
  final int customerCountryId;
  @override
  @JsonKey(name: 'contact_first_name')
  final String contactFirstName;
  @override
  @JsonKey(name: 'contact_last_name')
  final String contactLastName;
  @override
  @JsonKey(name: 'contact_email')
  final String contactEmail;
  @override
  @JsonKey(name: 'contact_phoneno')
  final String contactPhoneno;
  @override
  @JsonKey(name: 'region_way_id', includeIfNull: false)
  final int? regionWayId;
  @override
  @JsonKey(name: 'region_way_name', includeToJson: false)
  final String regionWayName;
  @override
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  final int? businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeIfNull: false)
  final String? businessUnitName;
  @override
  @JsonKey(name: 'business_ref_code', includeIfNull: false)
  final String? buRefId;
  @override
  @JsonKey(name: 'business_unit_address')
  final String buAddress;
  @override
  @JsonKey(name: 'customer_category_id')
  final int customerCategoryId;
  @override
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  final String customerCategoryName;
  @override
  @JsonKey(name: 'customer_type_id')
  final int? customerTypeId;
  @override
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  final String customerTypeName;
  @override
  @JsonKey(name: 'credit_limit')
  final double creditLimit;
  @override
  @JsonKey(name: 'consignment_limit', includeToJson: false)
  final double consignmentLimit;
  @override
  @JsonKey(name: 'credit_type_id')
  final int creditTypeId;
  @override
  @JsonKey(name: 'credit_type_name', includeToJson: false)
  final String creditTypeName;
  @override
  @JsonKey(name: 'vip_status')
  final int vipStatus;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  final int status;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  final List<BusinessUnitDTO> _businessUnitDtos;
  @override
  @JsonKey(name: "business_units", includeToJson: false)
  List<BusinessUnitDTO> get businessUnitDtos {
    if (_businessUnitDtos is EqualUnmodifiableListView)
      return _businessUnitDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessUnitDtos);
  }

  @override
  String toString() {
    return 'CustomerDTO(id: $id, consignmentContractId: $consignmentContractId, customerCode: $customerCode, dealingDate: $dealingDate, customerFirstName: $customerFirstName, customerLastName: $customerLastName, customerPhone1: $customerPhone1, customerPhone2: $customerPhone2, customerPhone3: $customerPhone3, customerPhone4: $customerPhone4, customerEmail: $customerEmail, customerAddress: $customerAddress, customerTownshipId: $customerTownshipId, customerTownshipName: $customerTownshipName, customerCityId: $customerCityId, customerCityName: $customerCityName, customerDivisionId: $customerDivisionId, customerDivisionName: $customerDivisionName, customerCountryId: $customerCountryId, contactFirstName: $contactFirstName, contactLastName: $contactLastName, contactEmail: $contactEmail, contactPhoneno: $contactPhoneno, regionWayId: $regionWayId, regionWayName: $regionWayName, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, buRefId: $buRefId, buAddress: $buAddress, customerCategoryId: $customerCategoryId, customerCategoryName: $customerCategoryName, customerTypeId: $customerTypeId, customerTypeName: $customerTypeName, creditLimit: $creditLimit, consignmentLimit: $consignmentLimit, creditTypeId: $creditTypeId, creditTypeName: $creditTypeName, vipStatus: $vipStatus, status: $status, remark: $remark, description: $description, businessUnitDtos: $businessUnitDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.dealingDate, dealingDate) ||
                other.dealingDate == dealingDate) &&
            (identical(other.customerFirstName, customerFirstName) ||
                other.customerFirstName == customerFirstName) &&
            (identical(other.customerLastName, customerLastName) ||
                other.customerLastName == customerLastName) &&
            (identical(other.customerPhone1, customerPhone1) ||
                other.customerPhone1 == customerPhone1) &&
            (identical(other.customerPhone2, customerPhone2) ||
                other.customerPhone2 == customerPhone2) &&
            (identical(other.customerPhone3, customerPhone3) ||
                other.customerPhone3 == customerPhone3) &&
            (identical(other.customerPhone4, customerPhone4) ||
                other.customerPhone4 == customerPhone4) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.customerTownshipId, customerTownshipId) ||
                other.customerTownshipId == customerTownshipId) &&
            (identical(other.customerTownshipName, customerTownshipName) ||
                other.customerTownshipName == customerTownshipName) &&
            (identical(other.customerCityId, customerCityId) ||
                other.customerCityId == customerCityId) &&
            (identical(other.customerCityName, customerCityName) ||
                other.customerCityName == customerCityName) &&
            (identical(other.customerDivisionId, customerDivisionId) ||
                other.customerDivisionId == customerDivisionId) &&
            (identical(other.customerDivisionName, customerDivisionName) ||
                other.customerDivisionName == customerDivisionName) &&
            (identical(other.customerCountryId, customerCountryId) ||
                other.customerCountryId == customerCountryId) &&
            (identical(other.contactFirstName, contactFirstName) ||
                other.contactFirstName == contactFirstName) &&
            (identical(other.contactLastName, contactLastName) ||
                other.contactLastName == contactLastName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhoneno, contactPhoneno) ||
                other.contactPhoneno == contactPhoneno) &&
            (identical(other.regionWayId, regionWayId) ||
                other.regionWayId == regionWayId) &&
            (identical(other.regionWayName, regionWayName) ||
                other.regionWayName == regionWayName) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.buRefId, buRefId) || other.buRefId == buRefId) &&
            (identical(other.buAddress, buAddress) ||
                other.buAddress == buAddress) &&
            (identical(other.customerCategoryId, customerCategoryId) ||
                other.customerCategoryId == customerCategoryId) &&
            (identical(other.customerCategoryName, customerCategoryName) ||
                other.customerCategoryName == customerCategoryName) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId) &&
            (identical(other.customerTypeName, customerTypeName) ||
                other.customerTypeName == customerTypeName) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.consignmentLimit, consignmentLimit) ||
                other.consignmentLimit == consignmentLimit) &&
            (identical(other.creditTypeId, creditTypeId) ||
                other.creditTypeId == creditTypeId) &&
            (identical(other.creditTypeName, creditTypeName) ||
                other.creditTypeName == creditTypeName) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._businessUnitDtos, _businessUnitDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consignmentContractId,
        customerCode,
        dealingDate,
        customerFirstName,
        customerLastName,
        customerPhone1,
        customerPhone2,
        customerPhone3,
        customerPhone4,
        customerEmail,
        customerAddress,
        customerTownshipId,
        customerTownshipName,
        customerCityId,
        customerCityName,
        customerDivisionId,
        customerDivisionName,
        customerCountryId,
        contactFirstName,
        contactLastName,
        contactEmail,
        contactPhoneno,
        regionWayId,
        regionWayName,
        businessUnitId,
        businessUnitName,
        buRefId,
        buAddress,
        customerCategoryId,
        customerCategoryName,
        customerTypeId,
        customerTypeName,
        creditLimit,
        consignmentLimit,
        creditTypeId,
        creditTypeName,
        vipStatus,
        status,
        remark,
        description,
        const DeepCollectionEquality().hash(_businessUnitDtos)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDTOImplCopyWith<_$CustomerDTOImpl> get copyWith =>
      __$$CustomerDTOImplCopyWithImpl<_$CustomerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerDTO extends CustomerDTO {
  factory _CustomerDTO(
      {@JsonKey(name: 'customer_id', includeToJson: false) final int id,
      @JsonKey(name: 'consignment_contract_id', includeToJson: false)
      final int consignmentContractId,
      @JsonKey(name: 'customer_code', includeToJson: false)
      final String customerCode,
      @JsonKey(name: 'dealing_date') final String dealingDate,
      @JsonKey(name: 'customer_first_name') final String customerFirstName,
      @JsonKey(name: 'customer_last_name', includeToJson: false)
      final String customerLastName,
      @JsonKey(name: 'customer_phone1') final String customerPhone1,
      @JsonKey(name: 'customer_phone2', includeIfNull: false)
      final String? customerPhone2,
      @JsonKey(name: 'customer_phone3', includeIfNull: false)
      final String? customerPhone3,
      @JsonKey(name: 'customer_phone4', includeIfNull: false)
      final String? customerPhone4,
      @JsonKey(name: 'customer_email') final String customerEmail,
      @JsonKey(name: 'customer_address') final String customerAddress,
      @JsonKey(name: 'customer_township_id', includeIfNull: false)
      final int? customerTownshipId,
      @JsonKey(name: 'customer_township_name', includeToJson: false)
      final String customerTownshipName,
      @JsonKey(name: 'customer_city_id', includeIfNull: false)
      final int? customerCityId,
      @JsonKey(name: 'cus_city_name', includeToJson: false)
      final String customerCityName,
      @JsonKey(name: 'customer_division_id', includeIfNull: false)
      final int? customerDivisionId,
      @JsonKey(name: 'cus_state_name', includeToJson: false)
      final String customerDivisionName,
      @JsonKey(name: 'customer_country_id', includeToJson: false)
      final int customerCountryId,
      @JsonKey(name: 'contact_first_name') final String contactFirstName,
      @JsonKey(name: 'contact_last_name') final String contactLastName,
      @JsonKey(name: 'contact_email') final String contactEmail,
      @JsonKey(name: 'contact_phoneno') final String contactPhoneno,
      @JsonKey(name: 'region_way_id', includeIfNull: false)
      final int? regionWayId,
      @JsonKey(name: 'region_way_name', includeToJson: false)
      final String regionWayName,
      @JsonKey(name: 'business_unit_id', includeIfNull: false)
      final int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeIfNull: false)
      final String? businessUnitName,
      @JsonKey(name: 'business_ref_code', includeIfNull: false)
      final String? buRefId,
      @JsonKey(name: 'business_unit_address') final String buAddress,
      @JsonKey(name: 'customer_category_id') final int customerCategoryId,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      final String customerCategoryName,
      @JsonKey(name: 'customer_type_id') final int? customerTypeId,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      final String customerTypeName,
      @JsonKey(name: 'credit_limit') final double creditLimit,
      @JsonKey(name: 'consignment_limit', includeToJson: false)
      final double consignmentLimit,
      @JsonKey(name: 'credit_type_id') final int creditTypeId,
      @JsonKey(name: 'credit_type_name', includeToJson: false)
      final String creditTypeName,
      @JsonKey(name: 'vip_status') final int vipStatus,
      @JsonKey(name: 'status', includeToJson: false) final int status,
      final String remark,
      final String description,
      @JsonKey(name: "business_units", includeToJson: false)
      final List<BusinessUnitDTO> businessUnitDtos}) = _$CustomerDTOImpl;
  _CustomerDTO._() : super._();

  factory _CustomerDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerDTOImpl.fromJson;

  @override
  @JsonKey(name: 'customer_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'consignment_contract_id', includeToJson: false)
  int get consignmentContractId;
  @override
  @JsonKey(name: 'customer_code', includeToJson: false)
  String get customerCode;
  @override
  @JsonKey(name: 'dealing_date')
  String get dealingDate;
  @override
  @JsonKey(name: 'customer_first_name')
  String get customerFirstName;
  @override
  @JsonKey(name: 'customer_last_name', includeToJson: false)
  String get customerLastName;
  @override
  @JsonKey(name: 'customer_phone1')
  String get customerPhone1;
  @override
  @JsonKey(name: 'customer_phone2', includeIfNull: false)
  String? get customerPhone2;
  @override
  @JsonKey(name: 'customer_phone3', includeIfNull: false)
  String? get customerPhone3;
  @override
  @JsonKey(name: 'customer_phone4', includeIfNull: false)
  String? get customerPhone4;
  @override
  @JsonKey(name: 'customer_email')
  String get customerEmail;
  @override
  @JsonKey(name: 'customer_address')
  String get customerAddress;
  @override
  @JsonKey(name: 'customer_township_id', includeIfNull: false)
  int? get customerTownshipId;
  @override
  @JsonKey(name: 'customer_township_name', includeToJson: false)
  String get customerTownshipName;
  @override
  @JsonKey(name: 'customer_city_id', includeIfNull: false)
  int? get customerCityId;
  @override
  @JsonKey(name: 'cus_city_name', includeToJson: false)
  String get customerCityName;
  @override
  @JsonKey(name: 'customer_division_id', includeIfNull: false)
  int? get customerDivisionId;
  @override
  @JsonKey(name: 'cus_state_name', includeToJson: false)
  String get customerDivisionName;
  @override
  @JsonKey(name: 'customer_country_id', includeToJson: false)
  int get customerCountryId;
  @override
  @JsonKey(name: 'contact_first_name')
  String get contactFirstName;
  @override
  @JsonKey(name: 'contact_last_name')
  String get contactLastName;
  @override
  @JsonKey(name: 'contact_email')
  String get contactEmail;
  @override
  @JsonKey(name: 'contact_phoneno')
  String get contactPhoneno;
  @override
  @JsonKey(name: 'region_way_id', includeIfNull: false)
  int? get regionWayId;
  @override
  @JsonKey(name: 'region_way_name', includeToJson: false)
  String get regionWayName;
  @override
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  int? get businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeIfNull: false)
  String? get businessUnitName;
  @override
  @JsonKey(name: 'business_ref_code', includeIfNull: false)
  String? get buRefId;
  @override
  @JsonKey(name: 'business_unit_address')
  String get buAddress;
  @override
  @JsonKey(name: 'customer_category_id')
  int get customerCategoryId;
  @override
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  String get customerCategoryName;
  @override
  @JsonKey(name: 'customer_type_id')
  int? get customerTypeId;
  @override
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  String get customerTypeName;
  @override
  @JsonKey(name: 'credit_limit')
  double get creditLimit;
  @override
  @JsonKey(name: 'consignment_limit', includeToJson: false)
  double get consignmentLimit;
  @override
  @JsonKey(name: 'credit_type_id')
  int get creditTypeId;
  @override
  @JsonKey(name: 'credit_type_name', includeToJson: false)
  String get creditTypeName;
  @override
  @JsonKey(name: 'vip_status')
  int get vipStatus;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  int get status;
  @override
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(name: "business_units", includeToJson: false)
  List<BusinessUnitDTO> get businessUnitDtos;
  @override
  @JsonKey(ignore: true)
  _$$CustomerDTOImplCopyWith<_$CustomerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
