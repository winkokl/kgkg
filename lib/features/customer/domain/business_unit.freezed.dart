// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessUnit {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  String? get buRefId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerCategoryName => throw _privateConstructorUsedError;
  String get customerTypeName => throw _privateConstructorUsedError;
  int get divisionId => throw _privateConstructorUsedError;
  String get divisionName => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  int get townshipId => throw _privateConstructorUsedError;
  String get townshipName => throw _privateConstructorUsedError;
  int get wayId => throw _privateConstructorUsedError;
  int get createdType => throw _privateConstructorUsedError;
  String get wayName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get buAddress => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusinessUnitCopyWith<BusinessUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessUnitCopyWith<$Res> {
  factory $BusinessUnitCopyWith(
          BusinessUnit value, $Res Function(BusinessUnit) then) =
      _$BusinessUnitCopyWithImpl<$Res, BusinessUnit>;
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      int customerId,
      String? buRefId,
      String customerName,
      String customerCategoryName,
      String customerTypeName,
      int divisionId,
      String divisionName,
      int cityId,
      String cityName,
      int townshipId,
      String townshipName,
      int wayId,
      int createdType,
      String wayName,
      String address,
      String buAddress,
      String phoneNumber,
      String description});
}

/// @nodoc
class _$BusinessUnitCopyWithImpl<$Res, $Val extends BusinessUnit>
    implements $BusinessUnitCopyWith<$Res> {
  _$BusinessUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? customerId = null,
    Object? buRefId = freezed,
    Object? customerName = null,
    Object? customerCategoryName = null,
    Object? customerTypeName = null,
    Object? divisionId = null,
    Object? divisionName = null,
    Object? cityId = null,
    Object? cityName = null,
    Object? townshipId = null,
    Object? townshipName = null,
    Object? wayId = null,
    Object? createdType = null,
    Object? wayName = null,
    Object? address = null,
    Object? buAddress = null,
    Object? phoneNumber = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipId: null == townshipId
          ? _value.townshipId
          : townshipId // ignore: cast_nullable_to_non_nullable
              as int,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: null == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as int,
      createdType: null == createdType
          ? _value.createdType
          : createdType // ignore: cast_nullable_to_non_nullable
              as int,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$BusinessUnitImplCopyWith<$Res>
    implements $BusinessUnitCopyWith<$Res> {
  factory _$$BusinessUnitImplCopyWith(
          _$BusinessUnitImpl value, $Res Function(_$BusinessUnitImpl) then) =
      __$$BusinessUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      int customerId,
      String? buRefId,
      String customerName,
      String customerCategoryName,
      String customerTypeName,
      int divisionId,
      String divisionName,
      int cityId,
      String cityName,
      int townshipId,
      String townshipName,
      int wayId,
      int createdType,
      String wayName,
      String address,
      String buAddress,
      String phoneNumber,
      String description});
}

/// @nodoc
class __$$BusinessUnitImplCopyWithImpl<$Res>
    extends _$BusinessUnitCopyWithImpl<$Res, _$BusinessUnitImpl>
    implements _$$BusinessUnitImplCopyWith<$Res> {
  __$$BusinessUnitImplCopyWithImpl(
      _$BusinessUnitImpl _value, $Res Function(_$BusinessUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? customerId = null,
    Object? buRefId = freezed,
    Object? customerName = null,
    Object? customerCategoryName = null,
    Object? customerTypeName = null,
    Object? divisionId = null,
    Object? divisionName = null,
    Object? cityId = null,
    Object? cityName = null,
    Object? townshipId = null,
    Object? townshipName = null,
    Object? wayId = null,
    Object? createdType = null,
    Object? wayName = null,
    Object? address = null,
    Object? buAddress = null,
    Object? phoneNumber = null,
    Object? description = null,
  }) {
    return _then(_$BusinessUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipId: null == townshipId
          ? _value.townshipId
          : townshipId // ignore: cast_nullable_to_non_nullable
              as int,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: null == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as int,
      createdType: null == createdType
          ? _value.createdType
          : createdType // ignore: cast_nullable_to_non_nullable
              as int,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$BusinessUnitImpl implements _BusinessUnit {
  const _$BusinessUnitImpl(
      {this.id = -1,
      this.name = "",
      this.code = "",
      this.customerId = -1,
      this.buRefId,
      this.customerName = "",
      this.customerCategoryName = "",
      this.customerTypeName = "",
      this.divisionId = -1,
      this.divisionName = "",
      this.cityId = -1,
      this.cityName = "",
      this.townshipId = -1,
      this.townshipName = "",
      this.wayId = -1,
      this.createdType = 0,
      this.wayName = "",
      this.address = "",
      this.buAddress = "",
      this.phoneNumber = "",
      this.description = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int customerId;
  @override
  final String? buRefId;
  @override
  @JsonKey()
  final String customerName;
  @override
  @JsonKey()
  final String customerCategoryName;
  @override
  @JsonKey()
  final String customerTypeName;
  @override
  @JsonKey()
  final int divisionId;
  @override
  @JsonKey()
  final String divisionName;
  @override
  @JsonKey()
  final int cityId;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final int townshipId;
  @override
  @JsonKey()
  final String townshipName;
  @override
  @JsonKey()
  final int wayId;
  @override
  @JsonKey()
  final int createdType;
  @override
  @JsonKey()
  final String wayName;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String buAddress;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'BusinessUnit(id: $id, name: $name, code: $code, customerId: $customerId, buRefId: $buRefId, customerName: $customerName, customerCategoryName: $customerCategoryName, customerTypeName: $customerTypeName, divisionId: $divisionId, divisionName: $divisionName, cityId: $cityId, cityName: $cityName, townshipId: $townshipId, townshipName: $townshipName, wayId: $wayId, createdType: $createdType, wayName: $wayName, address: $address, buAddress: $buAddress, phoneNumber: $phoneNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.buRefId, buRefId) || other.buRefId == buRefId) &&
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
            (identical(other.wayId, wayId) || other.wayId == wayId) &&
            (identical(other.createdType, createdType) ||
                other.createdType == createdType) &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.buAddress, buAddress) ||
                other.buAddress == buAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        code,
        customerId,
        buRefId,
        customerName,
        customerCategoryName,
        customerTypeName,
        divisionId,
        divisionName,
        cityId,
        cityName,
        townshipId,
        townshipName,
        wayId,
        createdType,
        wayName,
        address,
        buAddress,
        phoneNumber,
        description
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessUnitImplCopyWith<_$BusinessUnitImpl> get copyWith =>
      __$$BusinessUnitImplCopyWithImpl<_$BusinessUnitImpl>(this, _$identity);
}

abstract class _BusinessUnit implements BusinessUnit {
  const factory _BusinessUnit(
      {final int id,
      final String name,
      final String code,
      final int customerId,
      final String? buRefId,
      final String customerName,
      final String customerCategoryName,
      final String customerTypeName,
      final int divisionId,
      final String divisionName,
      final int cityId,
      final String cityName,
      final int townshipId,
      final String townshipName,
      final int wayId,
      final int createdType,
      final String wayName,
      final String address,
      final String buAddress,
      final String phoneNumber,
      final String description}) = _$BusinessUnitImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  int get customerId;
  @override
  String? get buRefId;
  @override
  String get customerName;
  @override
  String get customerCategoryName;
  @override
  String get customerTypeName;
  @override
  int get divisionId;
  @override
  String get divisionName;
  @override
  int get cityId;
  @override
  String get cityName;
  @override
  int get townshipId;
  @override
  String get townshipName;
  @override
  int get wayId;
  @override
  int get createdType;
  @override
  String get wayName;
  @override
  String get address;
  @override
  String get buAddress;
  @override
  String get phoneNumber;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BusinessUnitImplCopyWith<_$BusinessUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
