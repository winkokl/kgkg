// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_unit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessUnitDTO _$BusinessUnitDTOFromJson(Map<String, dynamic> json) {
  return _BusinessUnitDTO.fromJson(json);
}

/// @nodoc
mixin _$BusinessUnitDTO {
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_code', includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_ref_code')
  String? get buRefId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  String get customerCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  String get customerTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'division_id', includeIfNull: false)
  int? get divisionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_name', includeToJson: false)
  String get divisionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id', includeIfNull: false)
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name', includeToJson: false)
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'township_id', includeIfNull: false)
  int? get townshipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'township_name', includeToJson: false)
  String get townshipName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_way_id')
  dynamic get wayId => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_name', includeToJson: false)
  String get wayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_type', includeToJson: false)
  int get createdType => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address', includeToJson: false)
  String get buAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'credit_limit') @Default(0) double creditLimit,
// @JsonKey(name: 'credit_type_id') @Default(-1) int creditTypeId,
// @JsonKey(name: 'credit_type_name', includeToJson: false) @Default("") String creditTypeName,
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessUnitDTOCopyWith<BusinessUnitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessUnitDTOCopyWith<$Res> {
  factory $BusinessUnitDTOCopyWith(
          BusinessUnitDTO value, $Res Function(BusinessUnitDTO) then) =
      _$BusinessUnitDTOCopyWithImpl<$Res, BusinessUnitDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'business_unit_id', includeIfNull: false) int? id,
      @JsonKey(name: 'business_unit_name') String name,
      @JsonKey(name: 'business_unit_code', includeToJson: false) String code,
      @JsonKey(name: 'business_ref_code') String? buRefId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      String customerCategoryName,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      String customerTypeName,
      @JsonKey(name: 'division_id', includeIfNull: false) int? divisionId,
      @JsonKey(name: 'state_name', includeToJson: false) String divisionName,
      @JsonKey(name: 'city_id', includeIfNull: false) int? cityId,
      @JsonKey(name: 'city_name', includeToJson: false) String cityName,
      @JsonKey(name: 'township_id', includeIfNull: false) int? townshipId,
      @JsonKey(name: 'township_name', includeToJson: false) String townshipName,
      @JsonKey(name: 'region_way_id') dynamic wayId,
      @JsonKey(name: 'way_name', includeToJson: false) String wayName,
      @JsonKey(name: 'created_type', includeToJson: false) int createdType,
      @JsonKey(name: 'business_unit_address') String address,
      @JsonKey(name: 'address', includeToJson: false) String buAddress,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String description});
}

/// @nodoc
class _$BusinessUnitDTOCopyWithImpl<$Res, $Val extends BusinessUnitDTO>
    implements $BusinessUnitDTOCopyWith<$Res> {
  _$BusinessUnitDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? code = null,
    Object? buRefId = freezed,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerCategoryName = null,
    Object? customerTypeName = null,
    Object? divisionId = freezed,
    Object? divisionName = null,
    Object? cityId = freezed,
    Object? cityName = null,
    Object? townshipId = freezed,
    Object? townshipName = null,
    Object? wayId = freezed,
    Object? wayName = null,
    Object? createdType = null,
    Object? address = null,
    Object? buAddress = null,
    Object? phoneNumber = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategoryName: null == customerCategoryName
          ? _value.customerCategoryName
          : customerCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeName: null == customerTypeName
          ? _value.customerTypeName
          : customerTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: freezed == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipId: freezed == townshipId
          ? _value.townshipId
          : townshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: freezed == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      createdType: null == createdType
          ? _value.createdType
          : createdType // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessUnitDTOImplCopyWith<$Res>
    implements $BusinessUnitDTOCopyWith<$Res> {
  factory _$$BusinessUnitDTOImplCopyWith(_$BusinessUnitDTOImpl value,
          $Res Function(_$BusinessUnitDTOImpl) then) =
      __$$BusinessUnitDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'business_unit_id', includeIfNull: false) int? id,
      @JsonKey(name: 'business_unit_name') String name,
      @JsonKey(name: 'business_unit_code', includeToJson: false) String code,
      @JsonKey(name: 'business_ref_code') String? buRefId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      String customerCategoryName,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      String customerTypeName,
      @JsonKey(name: 'division_id', includeIfNull: false) int? divisionId,
      @JsonKey(name: 'state_name', includeToJson: false) String divisionName,
      @JsonKey(name: 'city_id', includeIfNull: false) int? cityId,
      @JsonKey(name: 'city_name', includeToJson: false) String cityName,
      @JsonKey(name: 'township_id', includeIfNull: false) int? townshipId,
      @JsonKey(name: 'township_name', includeToJson: false) String townshipName,
      @JsonKey(name: 'region_way_id') dynamic wayId,
      @JsonKey(name: 'way_name', includeToJson: false) String wayName,
      @JsonKey(name: 'created_type', includeToJson: false) int createdType,
      @JsonKey(name: 'business_unit_address') String address,
      @JsonKey(name: 'address', includeToJson: false) String buAddress,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String description});
}

/// @nodoc
class __$$BusinessUnitDTOImplCopyWithImpl<$Res>
    extends _$BusinessUnitDTOCopyWithImpl<$Res, _$BusinessUnitDTOImpl>
    implements _$$BusinessUnitDTOImplCopyWith<$Res> {
  __$$BusinessUnitDTOImplCopyWithImpl(
      _$BusinessUnitDTOImpl _value, $Res Function(_$BusinessUnitDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? code = null,
    Object? buRefId = freezed,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerCategoryName = null,
    Object? customerTypeName = null,
    Object? divisionId = freezed,
    Object? divisionName = null,
    Object? cityId = freezed,
    Object? cityName = null,
    Object? townshipId = freezed,
    Object? townshipName = null,
    Object? wayId = freezed,
    Object? wayName = null,
    Object? createdType = null,
    Object? address = null,
    Object? buAddress = null,
    Object? phoneNumber = null,
    Object? description = null,
  }) {
    return _then(_$BusinessUnitDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategoryName: null == customerCategoryName
          ? _value.customerCategoryName
          : customerCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeName: null == customerTypeName
          ? _value.customerTypeName
          : customerTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: freezed == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipId: freezed == townshipId
          ? _value.townshipId
          : townshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: freezed == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      createdType: null == createdType
          ? _value.createdType
          : createdType // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessUnitDTOImpl extends _BusinessUnitDTO {
  const _$BusinessUnitDTOImpl(
      {@JsonKey(name: 'business_unit_id', includeIfNull: false) this.id = -1,
      @JsonKey(name: 'business_unit_name') this.name = "",
      @JsonKey(name: 'business_unit_code', includeToJson: false) this.code = "",
      @JsonKey(name: 'business_ref_code') this.buRefId,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = "",
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      this.customerCategoryName = "",
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      this.customerTypeName = "",
      @JsonKey(name: 'division_id', includeIfNull: false) this.divisionId = -1,
      @JsonKey(name: 'state_name', includeToJson: false) this.divisionName = "",
      @JsonKey(name: 'city_id', includeIfNull: false) this.cityId = -1,
      @JsonKey(name: 'city_name', includeToJson: false) this.cityName = "",
      @JsonKey(name: 'township_id', includeIfNull: false) this.townshipId = -1,
      @JsonKey(name: 'township_name', includeToJson: false)
      this.townshipName = "",
      @JsonKey(name: 'region_way_id') this.wayId = "",
      @JsonKey(name: 'way_name', includeToJson: false) this.wayName = "",
      @JsonKey(name: 'created_type', includeToJson: false) this.createdType = 0,
      @JsonKey(name: 'business_unit_address') this.address = "",
      @JsonKey(name: 'address', includeToJson: false) this.buAddress = "",
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      this.description = ""})
      : super._();

  factory _$BusinessUnitDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessUnitDTOImplFromJson(json);

  @override
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  final int? id;
  @override
  @JsonKey(name: 'business_unit_name')
  final String name;
  @override
  @JsonKey(name: 'business_unit_code', includeToJson: false)
  final String code;
  @override
  @JsonKey(name: 'business_ref_code')
  final String? buRefId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  final String customerName;
  @override
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  final String customerCategoryName;
  @override
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  final String customerTypeName;
  @override
  @JsonKey(name: 'division_id', includeIfNull: false)
  final int? divisionId;
  @override
  @JsonKey(name: 'state_name', includeToJson: false)
  final String divisionName;
  @override
  @JsonKey(name: 'city_id', includeIfNull: false)
  final int? cityId;
  @override
  @JsonKey(name: 'city_name', includeToJson: false)
  final String cityName;
  @override
  @JsonKey(name: 'township_id', includeIfNull: false)
  final int? townshipId;
  @override
  @JsonKey(name: 'township_name', includeToJson: false)
  final String townshipName;
  @override
  @JsonKey(name: 'region_way_id')
  final dynamic wayId;
  @override
  @JsonKey(name: 'way_name', includeToJson: false)
  final String wayName;
  @override
  @JsonKey(name: 'created_type', includeToJson: false)
  final int createdType;
  @override
  @JsonKey(name: 'business_unit_address')
  final String address;
  @override
  @JsonKey(name: 'address', includeToJson: false)
  final String buAddress;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
// @JsonKey(name: 'credit_limit') @Default(0) double creditLimit,
// @JsonKey(name: 'credit_type_id') @Default(-1) int creditTypeId,
// @JsonKey(name: 'credit_type_name', includeToJson: false) @Default("") String creditTypeName,
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'BusinessUnitDTO(id: $id, name: $name, code: $code, buRefId: $buRefId, customerId: $customerId, customerName: $customerName, customerCategoryName: $customerCategoryName, customerTypeName: $customerTypeName, divisionId: $divisionId, divisionName: $divisionName, cityId: $cityId, cityName: $cityName, townshipId: $townshipId, townshipName: $townshipName, wayId: $wayId, wayName: $wayName, createdType: $createdType, address: $address, buAddress: $buAddress, phoneNumber: $phoneNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessUnitDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.buRefId, buRefId) || other.buRefId == buRefId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerCategoryName, customerCategoryName) ||
                other.customerCategoryName == customerCategoryName) &&
            (identical(other.customerTypeName, customerTypeName) ||
                other.customerTypeName == customerTypeName) &&
            (identical(other.divisionId, divisionId) ||
                other.divisionId == divisionId) &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.townshipId, townshipId) ||
                other.townshipId == townshipId) &&
            (identical(other.townshipName, townshipName) ||
                other.townshipName == townshipName) &&
            const DeepCollectionEquality().equals(other.wayId, wayId) &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.createdType, createdType) ||
                other.createdType == createdType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.buAddress, buAddress) ||
                other.buAddress == buAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        code,
        buRefId,
        customerId,
        customerName,
        customerCategoryName,
        customerTypeName,
        divisionId,
        divisionName,
        cityId,
        cityName,
        townshipId,
        townshipName,
        const DeepCollectionEquality().hash(wayId),
        wayName,
        createdType,
        address,
        buAddress,
        phoneNumber,
        description
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessUnitDTOImplCopyWith<_$BusinessUnitDTOImpl> get copyWith =>
      __$$BusinessUnitDTOImplCopyWithImpl<_$BusinessUnitDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessUnitDTOImplToJson(
      this,
    );
  }
}

abstract class _BusinessUnitDTO extends BusinessUnitDTO {
  const factory _BusinessUnitDTO(
      {@JsonKey(name: 'business_unit_id', includeIfNull: false) final int? id,
      @JsonKey(name: 'business_unit_name') final String name,
      @JsonKey(name: 'business_unit_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'business_ref_code') final String? buRefId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'customer_category_name', includeToJson: false)
      final String customerCategoryName,
      @JsonKey(name: 'customer_type_name', includeToJson: false)
      final String customerTypeName,
      @JsonKey(name: 'division_id', includeIfNull: false) final int? divisionId,
      @JsonKey(name: 'state_name', includeToJson: false)
      final String divisionName,
      @JsonKey(name: 'city_id', includeIfNull: false) final int? cityId,
      @JsonKey(name: 'city_name', includeToJson: false) final String cityName,
      @JsonKey(name: 'township_id', includeIfNull: false) final int? townshipId,
      @JsonKey(name: 'township_name', includeToJson: false)
      final String townshipName,
      @JsonKey(name: 'region_way_id') final dynamic wayId,
      @JsonKey(name: 'way_name', includeToJson: false) final String wayName,
      @JsonKey(name: 'created_type', includeToJson: false)
      final int createdType,
      @JsonKey(name: 'business_unit_address') final String address,
      @JsonKey(name: 'address', includeToJson: false) final String buAddress,
      @JsonKey(name: 'phone_number') final String phoneNumber,
      final String description}) = _$BusinessUnitDTOImpl;
  const _BusinessUnitDTO._() : super._();

  factory _BusinessUnitDTO.fromJson(Map<String, dynamic> json) =
      _$BusinessUnitDTOImpl.fromJson;

  @override
  @JsonKey(name: 'business_unit_id', includeIfNull: false)
  int? get id;
  @override
  @JsonKey(name: 'business_unit_name')
  String get name;
  @override
  @JsonKey(name: 'business_unit_code', includeToJson: false)
  String get code;
  @override
  @JsonKey(name: 'business_ref_code')
  String? get buRefId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName;
  @override
  @JsonKey(name: 'customer_category_name', includeToJson: false)
  String get customerCategoryName;
  @override
  @JsonKey(name: 'customer_type_name', includeToJson: false)
  String get customerTypeName;
  @override
  @JsonKey(name: 'division_id', includeIfNull: false)
  int? get divisionId;
  @override
  @JsonKey(name: 'state_name', includeToJson: false)
  String get divisionName;
  @override
  @JsonKey(name: 'city_id', includeIfNull: false)
  int? get cityId;
  @override
  @JsonKey(name: 'city_name', includeToJson: false)
  String get cityName;
  @override
  @JsonKey(name: 'township_id', includeIfNull: false)
  int? get townshipId;
  @override
  @JsonKey(name: 'township_name', includeToJson: false)
  String get townshipName;
  @override
  @JsonKey(name: 'region_way_id')
  dynamic get wayId;
  @override
  @JsonKey(name: 'way_name', includeToJson: false)
  String get wayName;
  @override
  @JsonKey(name: 'created_type', includeToJson: false)
  int get createdType;
  @override
  @JsonKey(name: 'business_unit_address')
  String get address;
  @override
  @JsonKey(name: 'address', includeToJson: false)
  String get buAddress;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override // @JsonKey(name: 'credit_limit') @Default(0) double creditLimit,
// @JsonKey(name: 'credit_type_id') @Default(-1) int creditTypeId,
// @JsonKey(name: 'credit_type_name', includeToJson: false) @Default("") String creditTypeName,
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BusinessUnitDTOImplCopyWith<_$BusinessUnitDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
