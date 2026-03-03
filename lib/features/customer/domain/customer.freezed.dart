// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Customer {
  int get id => throw _privateConstructorUsedError;
  int get consignmentContractId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get customerCode => throw _privateConstructorUsedError;
  String get dealingDate => throw _privateConstructorUsedError;
  String get phone1 => throw _privateConstructorUsedError;
  String? get phone2 => throw _privateConstructorUsedError;
  String? get phone3 => throw _privateConstructorUsedError;
  String? get phone4 => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get contactPersonFirstName => throw _privateConstructorUsedError;
  String get contactPersonLastName => throw _privateConstructorUsedError;
  String get contactPersonPhoneNumber => throw _privateConstructorUsedError;
  String get contactPersonEmail => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  Division get division => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  Township get township => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  CustomerCategory get customerCategory => throw _privateConstructorUsedError;
  CustomerType get customerType => throw _privateConstructorUsedError;
  double get creditLimit => throw _privateConstructorUsedError;
  CreditType get creditType => throw _privateConstructorUsedError;
  int? get regionWayId => throw _privateConstructorUsedError;
  String get regionWayName => throw _privateConstructorUsedError;
  int get businessUnitId => throw _privateConstructorUsedError;
  String? get buRefId => throw _privateConstructorUsedError;
  String? get businessUnitName => throw _privateConstructorUsedError;
  String get buAddress => throw _privateConstructorUsedError;
  double get consignmentLimit => throw _privateConstructorUsedError;
  VIPStatus get vipStatus => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<BusinessUnit> get businessUnits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {int id,
      int consignmentContractId,
      String name,
      String customerCode,
      String dealingDate,
      String phone1,
      String? phone2,
      String? phone3,
      String? phone4,
      String email,
      String contactPersonFirstName,
      String contactPersonLastName,
      String contactPersonPhoneNumber,
      String contactPersonEmail,
      Country country,
      Division division,
      City city,
      Township township,
      String address,
      CustomerCategory customerCategory,
      CustomerType customerType,
      double creditLimit,
      CreditType creditType,
      int? regionWayId,
      String regionWayName,
      int businessUnitId,
      String? buRefId,
      String? businessUnitName,
      String buAddress,
      double consignmentLimit,
      VIPStatus vipStatus,
      int status,
      String remark,
      String description,
      List<BusinessUnit> businessUnits});

  $CountryCopyWith<$Res> get country;
  $DivisionCopyWith<$Res> get division;
  $CityCopyWith<$Res> get city;
  $TownshipCopyWith<$Res> get township;
  $CustomerCategoryCopyWith<$Res> get customerCategory;
  $CustomerTypeCopyWith<$Res> get customerType;
  $CreditTypeCopyWith<$Res> get creditType;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? name = null,
    Object? customerCode = null,
    Object? dealingDate = null,
    Object? phone1 = null,
    Object? phone2 = freezed,
    Object? phone3 = freezed,
    Object? phone4 = freezed,
    Object? email = null,
    Object? contactPersonFirstName = null,
    Object? contactPersonLastName = null,
    Object? contactPersonPhoneNumber = null,
    Object? contactPersonEmail = null,
    Object? country = null,
    Object? division = null,
    Object? city = null,
    Object? township = null,
    Object? address = null,
    Object? customerCategory = null,
    Object? customerType = null,
    Object? creditLimit = null,
    Object? creditType = null,
    Object? regionWayId = freezed,
    Object? regionWayName = null,
    Object? businessUnitId = null,
    Object? buRefId = freezed,
    Object? businessUnitName = freezed,
    Object? buAddress = null,
    Object? consignmentLimit = null,
    Object? vipStatus = null,
    Object? status = null,
    Object? remark = null,
    Object? description = null,
    Object? businessUnits = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      customerCode: null == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String,
      dealingDate: null == dealingDate
          ? _value.dealingDate
          : dealingDate // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone3: freezed == phone3
          ? _value.phone3
          : phone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone4: freezed == phone4
          ? _value.phone4
          : phone4 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonFirstName: null == contactPersonFirstName
          ? _value.contactPersonFirstName
          : contactPersonFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonLastName: null == contactPersonLastName
          ? _value.contactPersonLastName
          : contactPersonLastName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonPhoneNumber: null == contactPersonPhoneNumber
          ? _value.contactPersonPhoneNumber
          : contactPersonPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonEmail: null == contactPersonEmail
          ? _value.contactPersonEmail
          : contactPersonEmail // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      township: null == township
          ? _value.township
          : township // ignore: cast_nullable_to_non_nullable
              as Township,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategory: null == customerCategory
          ? _value.customerCategory
          : customerCategory // ignore: cast_nullable_to_non_nullable
              as CustomerCategory,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      creditType: null == creditType
          ? _value.creditType
          : creditType // ignore: cast_nullable_to_non_nullable
              as CreditType,
      regionWayId: freezed == regionWayId
          ? _value.regionWayId
          : regionWayId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionWayName: null == regionWayName
          ? _value.regionWayName
          : regionWayName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessUnitName: freezed == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentLimit: null == consignmentLimit
          ? _value.consignmentLimit
          : consignmentLimit // ignore: cast_nullable_to_non_nullable
              as double,
      vipStatus: null == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as VIPStatus,
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
      businessUnits: null == businessUnits
          ? _value.businessUnits
          : businessUnits // ignore: cast_nullable_to_non_nullable
              as List<BusinessUnit>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res> get division {
    return $DivisionCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TownshipCopyWith<$Res> get township {
    return $TownshipCopyWith<$Res>(_value.township, (value) {
      return _then(_value.copyWith(township: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCategoryCopyWith<$Res> get customerCategory {
    return $CustomerCategoryCopyWith<$Res>(_value.customerCategory, (value) {
      return _then(_value.copyWith(customerCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerTypeCopyWith<$Res> get customerType {
    return $CustomerTypeCopyWith<$Res>(_value.customerType, (value) {
      return _then(_value.copyWith(customerType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditTypeCopyWith<$Res> get creditType {
    return $CreditTypeCopyWith<$Res>(_value.creditType, (value) {
      return _then(_value.copyWith(creditType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int consignmentContractId,
      String name,
      String customerCode,
      String dealingDate,
      String phone1,
      String? phone2,
      String? phone3,
      String? phone4,
      String email,
      String contactPersonFirstName,
      String contactPersonLastName,
      String contactPersonPhoneNumber,
      String contactPersonEmail,
      Country country,
      Division division,
      City city,
      Township township,
      String address,
      CustomerCategory customerCategory,
      CustomerType customerType,
      double creditLimit,
      CreditType creditType,
      int? regionWayId,
      String regionWayName,
      int businessUnitId,
      String? buRefId,
      String? businessUnitName,
      String buAddress,
      double consignmentLimit,
      VIPStatus vipStatus,
      int status,
      String remark,
      String description,
      List<BusinessUnit> businessUnits});

  @override
  $CountryCopyWith<$Res> get country;
  @override
  $DivisionCopyWith<$Res> get division;
  @override
  $CityCopyWith<$Res> get city;
  @override
  $TownshipCopyWith<$Res> get township;
  @override
  $CustomerCategoryCopyWith<$Res> get customerCategory;
  @override
  $CustomerTypeCopyWith<$Res> get customerType;
  @override
  $CreditTypeCopyWith<$Res> get creditType;
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? name = null,
    Object? customerCode = null,
    Object? dealingDate = null,
    Object? phone1 = null,
    Object? phone2 = freezed,
    Object? phone3 = freezed,
    Object? phone4 = freezed,
    Object? email = null,
    Object? contactPersonFirstName = null,
    Object? contactPersonLastName = null,
    Object? contactPersonPhoneNumber = null,
    Object? contactPersonEmail = null,
    Object? country = null,
    Object? division = null,
    Object? city = null,
    Object? township = null,
    Object? address = null,
    Object? customerCategory = null,
    Object? customerType = null,
    Object? creditLimit = null,
    Object? creditType = null,
    Object? regionWayId = freezed,
    Object? regionWayName = null,
    Object? businessUnitId = null,
    Object? buRefId = freezed,
    Object? businessUnitName = freezed,
    Object? buAddress = null,
    Object? consignmentLimit = null,
    Object? vipStatus = null,
    Object? status = null,
    Object? remark = null,
    Object? description = null,
    Object? businessUnits = null,
  }) {
    return _then(_$CustomerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      customerCode: null == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String,
      dealingDate: null == dealingDate
          ? _value.dealingDate
          : dealingDate // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone3: freezed == phone3
          ? _value.phone3
          : phone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone4: freezed == phone4
          ? _value.phone4
          : phone4 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonFirstName: null == contactPersonFirstName
          ? _value.contactPersonFirstName
          : contactPersonFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonLastName: null == contactPersonLastName
          ? _value.contactPersonLastName
          : contactPersonLastName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonPhoneNumber: null == contactPersonPhoneNumber
          ? _value.contactPersonPhoneNumber
          : contactPersonPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      contactPersonEmail: null == contactPersonEmail
          ? _value.contactPersonEmail
          : contactPersonEmail // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      township: null == township
          ? _value.township
          : township // ignore: cast_nullable_to_non_nullable
              as Township,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategory: null == customerCategory
          ? _value.customerCategory
          : customerCategory // ignore: cast_nullable_to_non_nullable
              as CustomerCategory,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      creditType: null == creditType
          ? _value.creditType
          : creditType // ignore: cast_nullable_to_non_nullable
              as CreditType,
      regionWayId: freezed == regionWayId
          ? _value.regionWayId
          : regionWayId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionWayName: null == regionWayName
          ? _value.regionWayName
          : regionWayName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      buRefId: freezed == buRefId
          ? _value.buRefId
          : buRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessUnitName: freezed == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String?,
      buAddress: null == buAddress
          ? _value.buAddress
          : buAddress // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentLimit: null == consignmentLimit
          ? _value.consignmentLimit
          : consignmentLimit // ignore: cast_nullable_to_non_nullable
              as double,
      vipStatus: null == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as VIPStatus,
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
      businessUnits: null == businessUnits
          ? _value._businessUnits
          : businessUnits // ignore: cast_nullable_to_non_nullable
              as List<BusinessUnit>,
    ));
  }
}

/// @nodoc

class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {this.id = -1,
      this.consignmentContractId = -1,
      this.name = "",
      this.customerCode = "",
      this.dealingDate = "",
      this.phone1 = "",
      this.phone2,
      this.phone3,
      this.phone4,
      this.email = "",
      this.contactPersonFirstName = "",
      this.contactPersonLastName = "",
      this.contactPersonPhoneNumber = "",
      this.contactPersonEmail = "",
      this.country = const Country(),
      this.division = const Division(),
      this.city = const City(),
      this.township = const Township(),
      this.address = "",
      this.customerCategory = const CustomerCategory(),
      this.customerType = const CustomerType(),
      this.creditLimit = 0,
      this.creditType = const CreditType(),
      this.regionWayId,
      this.regionWayName = "",
      this.businessUnitId = -1,
      this.buRefId,
      this.businessUnitName,
      this.buAddress = "",
      this.consignmentLimit = 0,
      this.vipStatus = VIPStatus.none,
      this.status = 0,
      this.remark = "",
      this.description = "",
      final List<BusinessUnit> businessUnits = const []})
      : _businessUnits = businessUnits;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int consignmentContractId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String customerCode;
  @override
  @JsonKey()
  final String dealingDate;
  @override
  @JsonKey()
  final String phone1;
  @override
  final String? phone2;
  @override
  final String? phone3;
  @override
  final String? phone4;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String contactPersonFirstName;
  @override
  @JsonKey()
  final String contactPersonLastName;
  @override
  @JsonKey()
  final String contactPersonPhoneNumber;
  @override
  @JsonKey()
  final String contactPersonEmail;
  @override
  @JsonKey()
  final Country country;
  @override
  @JsonKey()
  final Division division;
  @override
  @JsonKey()
  final City city;
  @override
  @JsonKey()
  final Township township;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final CustomerCategory customerCategory;
  @override
  @JsonKey()
  final CustomerType customerType;
  @override
  @JsonKey()
  final double creditLimit;
  @override
  @JsonKey()
  final CreditType creditType;
  @override
  final int? regionWayId;
  @override
  @JsonKey()
  final String regionWayName;
  @override
  @JsonKey()
  final int businessUnitId;
  @override
  final String? buRefId;
  @override
  final String? businessUnitName;
  @override
  @JsonKey()
  final String buAddress;
  @override
  @JsonKey()
  final double consignmentLimit;
  @override
  @JsonKey()
  final VIPStatus vipStatus;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  final List<BusinessUnit> _businessUnits;
  @override
  @JsonKey()
  List<BusinessUnit> get businessUnits {
    if (_businessUnits is EqualUnmodifiableListView) return _businessUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessUnits);
  }

  @override
  String toString() {
    return 'Customer(id: $id, consignmentContractId: $consignmentContractId, name: $name, customerCode: $customerCode, dealingDate: $dealingDate, phone1: $phone1, phone2: $phone2, phone3: $phone3, phone4: $phone4, email: $email, contactPersonFirstName: $contactPersonFirstName, contactPersonLastName: $contactPersonLastName, contactPersonPhoneNumber: $contactPersonPhoneNumber, contactPersonEmail: $contactPersonEmail, country: $country, division: $division, city: $city, township: $township, address: $address, customerCategory: $customerCategory, customerType: $customerType, creditLimit: $creditLimit, creditType: $creditType, regionWayId: $regionWayId, regionWayName: $regionWayName, businessUnitId: $businessUnitId, buRefId: $buRefId, businessUnitName: $businessUnitName, buAddress: $buAddress, consignmentLimit: $consignmentLimit, vipStatus: $vipStatus, status: $status, remark: $remark, description: $description, businessUnits: $businessUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.dealingDate, dealingDate) ||
                other.dealingDate == dealingDate) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.phone3, phone3) || other.phone3 == phone3) &&
            (identical(other.phone4, phone4) || other.phone4 == phone4) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contactPersonFirstName, contactPersonFirstName) ||
                other.contactPersonFirstName == contactPersonFirstName) &&
            (identical(other.contactPersonLastName, contactPersonLastName) ||
                other.contactPersonLastName == contactPersonLastName) &&
            (identical(
                    other.contactPersonPhoneNumber, contactPersonPhoneNumber) ||
                other.contactPersonPhoneNumber == contactPersonPhoneNumber) &&
            (identical(other.contactPersonEmail, contactPersonEmail) ||
                other.contactPersonEmail == contactPersonEmail) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.township, township) ||
                other.township == township) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerCategory, customerCategory) ||
                other.customerCategory == customerCategory) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.creditType, creditType) ||
                other.creditType == creditType) &&
            (identical(other.regionWayId, regionWayId) ||
                other.regionWayId == regionWayId) &&
            (identical(other.regionWayName, regionWayName) ||
                other.regionWayName == regionWayName) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.buRefId, buRefId) || other.buRefId == buRefId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.buAddress, buAddress) ||
                other.buAddress == buAddress) &&
            (identical(other.consignmentLimit, consignmentLimit) ||
                other.consignmentLimit == consignmentLimit) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._businessUnits, _businessUnits));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consignmentContractId,
        name,
        customerCode,
        dealingDate,
        phone1,
        phone2,
        phone3,
        phone4,
        email,
        contactPersonFirstName,
        contactPersonLastName,
        contactPersonPhoneNumber,
        contactPersonEmail,
        country,
        division,
        city,
        township,
        address,
        customerCategory,
        customerType,
        creditLimit,
        creditType,
        regionWayId,
        regionWayName,
        businessUnitId,
        buRefId,
        businessUnitName,
        buAddress,
        consignmentLimit,
        vipStatus,
        status,
        remark,
        description,
        const DeepCollectionEquality().hash(_businessUnits)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final int id,
      final int consignmentContractId,
      final String name,
      final String customerCode,
      final String dealingDate,
      final String phone1,
      final String? phone2,
      final String? phone3,
      final String? phone4,
      final String email,
      final String contactPersonFirstName,
      final String contactPersonLastName,
      final String contactPersonPhoneNumber,
      final String contactPersonEmail,
      final Country country,
      final Division division,
      final City city,
      final Township township,
      final String address,
      final CustomerCategory customerCategory,
      final CustomerType customerType,
      final double creditLimit,
      final CreditType creditType,
      final int? regionWayId,
      final String regionWayName,
      final int businessUnitId,
      final String? buRefId,
      final String? businessUnitName,
      final String buAddress,
      final double consignmentLimit,
      final VIPStatus vipStatus,
      final int status,
      final String remark,
      final String description,
      final List<BusinessUnit> businessUnits}) = _$CustomerImpl;

  @override
  int get id;
  @override
  int get consignmentContractId;
  @override
  String get name;
  @override
  String get customerCode;
  @override
  String get dealingDate;
  @override
  String get phone1;
  @override
  String? get phone2;
  @override
  String? get phone3;
  @override
  String? get phone4;
  @override
  String get email;
  @override
  String get contactPersonFirstName;
  @override
  String get contactPersonLastName;
  @override
  String get contactPersonPhoneNumber;
  @override
  String get contactPersonEmail;
  @override
  Country get country;
  @override
  Division get division;
  @override
  City get city;
  @override
  Township get township;
  @override
  String get address;
  @override
  CustomerCategory get customerCategory;
  @override
  CustomerType get customerType;
  @override
  double get creditLimit;
  @override
  CreditType get creditType;
  @override
  int? get regionWayId;
  @override
  String get regionWayName;
  @override
  int get businessUnitId;
  @override
  String? get buRefId;
  @override
  String? get businessUnitName;
  @override
  String get buAddress;
  @override
  double get consignmentLimit;
  @override
  VIPStatus get vipStatus;
  @override
  int get status;
  @override
  String get remark;
  @override
  String get description;
  @override
  List<BusinessUnit> get businessUnits;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
