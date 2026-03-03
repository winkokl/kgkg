// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Consignment {
  int get id => throw _privateConstructorUsedError;
  int get consignmentContractId => throw _privateConstructorUsedError;
  String get consignmentContractCode => throw _privateConstructorUsedError;
  ConsignmentContract get consignmentContract =>
      throw _privateConstructorUsedError;
  int get consignmentTypeId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  BusinessUnit get businessUnit => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentTerm get paymentTerm => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get deleteReason => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get taxType => throw _privateConstructorUsedError;
  double get otherChargesAmount =>
      throw _privateConstructorUsedError; // @Default(Warehouse()) Warehouse warehouse,
  double get subtotal => throw _privateConstructorUsedError;
  double get grandtotal => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  ConsignmentMethod get consignmentMethod => throw _privateConstructorUsedError;
  String get rejectReason => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsignmentCopyWith<Consignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentCopyWith<$Res> {
  factory $ConsignmentCopyWith(
          Consignment value, $Res Function(Consignment) then) =
      _$ConsignmentCopyWithImpl<$Res, Consignment>;
  @useResult
  $Res call(
      {int id,
      int consignmentContractId,
      String consignmentContractCode,
      ConsignmentContract consignmentContract,
      int consignmentTypeId,
      String code,
      String date,
      Customer customer,
      BusinessUnit businessUnit,
      List<Product> products,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      OrderStatus orderStatus,
      ConsignmentMethod consignmentMethod,
      String rejectReason,
      Region region});

  $ConsignmentContractCopyWith<$Res> get consignmentContract;
  $CustomerCopyWith<$Res> get customer;
  $BusinessUnitCopyWith<$Res> get businessUnit;
  $PaymentTypeCopyWith<$Res> get paymentType;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$ConsignmentCopyWithImpl<$Res, $Val extends Consignment>
    implements $ConsignmentCopyWith<$Res> {
  _$ConsignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? consignmentContractCode = null,
    Object? consignmentContract = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? date = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? products = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? orderStatus = null,
    Object? consignmentMethod = null,
    Object? rejectReason = null,
    Object? region = null,
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
      consignmentContractCode: null == consignmentContractCode
          ? _value.consignmentContractCode
          : consignmentContractCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentContract: null == consignmentContract
          ? _value.consignmentContract
          : consignmentContract // ignore: cast_nullable_to_non_nullable
              as ConsignmentContract,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as BusinessUnit,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentTerm: null == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      otherChargesAmount: null == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsignmentContractCopyWith<$Res> get consignmentContract {
    return $ConsignmentContractCopyWith<$Res>(_value.consignmentContract,
        (value) {
      return _then(_value.copyWith(consignmentContract: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessUnitCopyWith<$Res> get businessUnit {
    return $BusinessUnitCopyWith<$Res>(_value.businessUnit, (value) {
      return _then(_value.copyWith(businessUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeCopyWith<$Res> get paymentType {
    return $PaymentTypeCopyWith<$Res>(_value.paymentType, (value) {
      return _then(_value.copyWith(paymentType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTermCopyWith<$Res> get paymentTerm {
    return $PaymentTermCopyWith<$Res>(_value.paymentTerm, (value) {
      return _then(_value.copyWith(paymentTerm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsignmentImplCopyWith<$Res>
    implements $ConsignmentCopyWith<$Res> {
  factory _$$ConsignmentImplCopyWith(
          _$ConsignmentImpl value, $Res Function(_$ConsignmentImpl) then) =
      __$$ConsignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int consignmentContractId,
      String consignmentContractCode,
      ConsignmentContract consignmentContract,
      int consignmentTypeId,
      String code,
      String date,
      Customer customer,
      BusinessUnit businessUnit,
      List<Product> products,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      OrderStatus orderStatus,
      ConsignmentMethod consignmentMethod,
      String rejectReason,
      Region region});

  @override
  $ConsignmentContractCopyWith<$Res> get consignmentContract;
  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $BusinessUnitCopyWith<$Res> get businessUnit;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$ConsignmentImplCopyWithImpl<$Res>
    extends _$ConsignmentCopyWithImpl<$Res, _$ConsignmentImpl>
    implements _$$ConsignmentImplCopyWith<$Res> {
  __$$ConsignmentImplCopyWithImpl(
      _$ConsignmentImpl _value, $Res Function(_$ConsignmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? consignmentContractCode = null,
    Object? consignmentContract = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? date = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? products = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? orderStatus = null,
    Object? consignmentMethod = null,
    Object? rejectReason = null,
    Object? region = null,
  }) {
    return _then(_$ConsignmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractCode: null == consignmentContractCode
          ? _value.consignmentContractCode
          : consignmentContractCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentContract: null == consignmentContract
          ? _value.consignmentContract
          : consignmentContract // ignore: cast_nullable_to_non_nullable
              as ConsignmentContract,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as BusinessUnit,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentTerm: null == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      otherChargesAmount: null == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
    ));
  }
}

/// @nodoc

class _$ConsignmentImpl implements _Consignment {
  const _$ConsignmentImpl(
      {this.id = -1,
      this.consignmentContractId = -1,
      this.consignmentContractCode = "",
      this.consignmentContract = const ConsignmentContract(),
      this.consignmentTypeId = -1,
      this.code = "",
      this.date = "",
      this.customer = const Customer(),
      this.businessUnit = const BusinessUnit(),
      final List<Product> products = const [],
      this.paymentType = const PaymentType(),
      this.paymentTerm = const PaymentTerm(),
      this.remark = "",
      this.description = "",
      this.deleteReason = "",
      this.discountAmount = 0,
      this.discountType = AmountOrPercentStatus.amount,
      this.taxAmount = 0,
      this.taxType = AmountOrPercentStatus.amount,
      this.otherChargesAmount = 0,
      this.subtotal = 0,
      this.grandtotal = 0,
      this.orderStatus = OrderStatus.pending,
      this.consignmentMethod = ConsignmentMethod.stockRefill,
      this.rejectReason = "",
      this.region = const Region()})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int consignmentContractId;
  @override
  @JsonKey()
  final String consignmentContractCode;
  @override
  @JsonKey()
  final ConsignmentContract consignmentContract;
  @override
  @JsonKey()
  final int consignmentTypeId;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final Customer customer;
  @override
  @JsonKey()
  final BusinessUnit businessUnit;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final PaymentType paymentType;
  @override
  @JsonKey()
  final PaymentTerm paymentTerm;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String deleteReason;
  @override
  @JsonKey()
  final double discountAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus discountType;
  @override
  @JsonKey()
  final double taxAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus taxType;
  @override
  @JsonKey()
  final double otherChargesAmount;
// @Default(Warehouse()) Warehouse warehouse,
  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double grandtotal;
  @override
  @JsonKey()
  final OrderStatus orderStatus;
  @override
  @JsonKey()
  final ConsignmentMethod consignmentMethod;
  @override
  @JsonKey()
  final String rejectReason;
  @override
  @JsonKey()
  final Region region;

  @override
  String toString() {
    return 'Consignment(id: $id, consignmentContractId: $consignmentContractId, consignmentContractCode: $consignmentContractCode, consignmentContract: $consignmentContract, consignmentTypeId: $consignmentTypeId, code: $code, date: $date, customer: $customer, businessUnit: $businessUnit, products: $products, paymentType: $paymentType, paymentTerm: $paymentTerm, remark: $remark, description: $description, deleteReason: $deleteReason, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, orderStatus: $orderStatus, consignmentMethod: $consignmentMethod, rejectReason: $rejectReason, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId) &&
            (identical(
                    other.consignmentContractCode, consignmentContractCode) ||
                other.consignmentContractCode == consignmentContractCode) &&
            (identical(other.consignmentContract, consignmentContract) ||
                other.consignmentContract == consignmentContract) &&
            (identical(other.consignmentTypeId, consignmentTypeId) ||
                other.consignmentTypeId == consignmentTypeId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTerm, paymentTerm) ||
                other.paymentTerm == paymentTerm) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.otherChargesAmount, otherChargesAmount) ||
                other.otherChargesAmount == otherChargesAmount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.consignmentMethod, consignmentMethod) ||
                other.consignmentMethod == consignmentMethod) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consignmentContractId,
        consignmentContractCode,
        consignmentContract,
        consignmentTypeId,
        code,
        date,
        customer,
        businessUnit,
        const DeepCollectionEquality().hash(_products),
        paymentType,
        paymentTerm,
        remark,
        description,
        deleteReason,
        discountAmount,
        discountType,
        taxAmount,
        taxType,
        otherChargesAmount,
        subtotal,
        grandtotal,
        orderStatus,
        consignmentMethod,
        rejectReason,
        region
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentImplCopyWith<_$ConsignmentImpl> get copyWith =>
      __$$ConsignmentImplCopyWithImpl<_$ConsignmentImpl>(this, _$identity);
}

abstract class _Consignment implements Consignment {
  const factory _Consignment(
      {final int id,
      final int consignmentContractId,
      final String consignmentContractCode,
      final ConsignmentContract consignmentContract,
      final int consignmentTypeId,
      final String code,
      final String date,
      final Customer customer,
      final BusinessUnit businessUnit,
      final List<Product> products,
      final PaymentType paymentType,
      final PaymentTerm paymentTerm,
      final String remark,
      final String description,
      final String deleteReason,
      final double discountAmount,
      final AmountOrPercentStatus discountType,
      final double taxAmount,
      final AmountOrPercentStatus taxType,
      final double otherChargesAmount,
      final double subtotal,
      final double grandtotal,
      final OrderStatus orderStatus,
      final ConsignmentMethod consignmentMethod,
      final String rejectReason,
      final Region region}) = _$ConsignmentImpl;

  @override
  int get id;
  @override
  int get consignmentContractId;
  @override
  String get consignmentContractCode;
  @override
  ConsignmentContract get consignmentContract;
  @override
  int get consignmentTypeId;
  @override
  String get code;
  @override
  String get date;
  @override
  Customer get customer;
  @override
  BusinessUnit get businessUnit;
  @override
  List<Product> get products;
  @override
  PaymentType get paymentType;
  @override
  PaymentTerm get paymentTerm;
  @override
  String get remark;
  @override
  String get description;
  @override
  String get deleteReason;
  @override
  double get discountAmount;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double get taxAmount;
  @override
  AmountOrPercentStatus get taxType;
  @override
  double get otherChargesAmount;
  @override // @Default(Warehouse()) Warehouse warehouse,
  double get subtotal;
  @override
  double get grandtotal;
  @override
  OrderStatus get orderStatus;
  @override
  ConsignmentMethod get consignmentMethod;
  @override
  String get rejectReason;
  @override
  Region get region;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentImplCopyWith<_$ConsignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
