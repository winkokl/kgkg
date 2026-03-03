// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripSaleReturn {
  int get id => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get invoiceCode => throw _privateConstructorUsedError;
  int get returnType => throw _privateConstructorUsedError;
  TripSaleInvoice get tripSaleInvoice => throw _privateConstructorUsedError;
  TripSaleRequest get tripSaleRequest => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get deleteReason => throw _privateConstructorUsedError;
  double get returnDeductAmount => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  AmountOrPercentStatus get returnDeductType =>
      throw _privateConstructorUsedError;
  double get otherChargesAmount => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get grandtotal => throw _privateConstructorUsedError;
  double get totalReturnAmount => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  ReturnReason get returnReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripSaleReturnCopyWith<TripSaleReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleReturnCopyWith<$Res> {
  factory $TripSaleReturnCopyWith(
          TripSaleReturn value, $Res Function(TripSaleReturn) then) =
      _$TripSaleReturnCopyWithImpl<$Res, TripSaleReturn>;
  @useResult
  $Res call(
      {int id,
      String returnDate,
      String code,
      String invoiceCode,
      int returnType,
      TripSaleInvoice tripSaleInvoice,
      TripSaleRequest tripSaleRequest,
      Customer customer,
      List<Product> products,
      String remark,
      String description,
      String deleteReason,
      double returnDeductAmount,
      double balance,
      AmountOrPercentStatus returnDeductType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      double totalReturnAmount,
      PaymentStatus paymentStatus,
      ReturnReason returnReason});

  $TripSaleInvoiceCopyWith<$Res> get tripSaleInvoice;
  $TripSaleRequestCopyWith<$Res> get tripSaleRequest;
  $CustomerCopyWith<$Res> get customer;
  $ReturnReasonCopyWith<$Res> get returnReason;
}

/// @nodoc
class _$TripSaleReturnCopyWithImpl<$Res, $Val extends TripSaleReturn>
    implements $TripSaleReturnCopyWith<$Res> {
  _$TripSaleReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? returnDate = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? returnType = null,
    Object? tripSaleInvoice = null,
    Object? tripSaleRequest = null,
    Object? customer = null,
    Object? products = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? returnDeductAmount = null,
    Object? balance = null,
    Object? returnDeductType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? totalReturnAmount = null,
    Object? paymentStatus = null,
    Object? returnReason = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleInvoice: null == tripSaleInvoice
          ? _value.tripSaleInvoice
          : tripSaleInvoice // ignore: cast_nullable_to_non_nullable
              as TripSaleInvoice,
      tripSaleRequest: null == tripSaleRequest
          ? _value.tripSaleRequest
          : tripSaleRequest // ignore: cast_nullable_to_non_nullable
              as TripSaleRequest,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
      returnDeductAmount: null == returnDeductAmount
          ? _value.returnDeductAmount
          : returnDeductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeductType: null == returnDeductType
          ? _value.returnDeductType
          : returnDeductType // ignore: cast_nullable_to_non_nullable
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
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as ReturnReason,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripSaleInvoiceCopyWith<$Res> get tripSaleInvoice {
    return $TripSaleInvoiceCopyWith<$Res>(_value.tripSaleInvoice, (value) {
      return _then(_value.copyWith(tripSaleInvoice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TripSaleRequestCopyWith<$Res> get tripSaleRequest {
    return $TripSaleRequestCopyWith<$Res>(_value.tripSaleRequest, (value) {
      return _then(_value.copyWith(tripSaleRequest: value) as $Val);
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
  $ReturnReasonCopyWith<$Res> get returnReason {
    return $ReturnReasonCopyWith<$Res>(_value.returnReason, (value) {
      return _then(_value.copyWith(returnReason: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripSaleReturnImplCopyWith<$Res>
    implements $TripSaleReturnCopyWith<$Res> {
  factory _$$TripSaleReturnImplCopyWith(_$TripSaleReturnImpl value,
          $Res Function(_$TripSaleReturnImpl) then) =
      __$$TripSaleReturnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String returnDate,
      String code,
      String invoiceCode,
      int returnType,
      TripSaleInvoice tripSaleInvoice,
      TripSaleRequest tripSaleRequest,
      Customer customer,
      List<Product> products,
      String remark,
      String description,
      String deleteReason,
      double returnDeductAmount,
      double balance,
      AmountOrPercentStatus returnDeductType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      double totalReturnAmount,
      PaymentStatus paymentStatus,
      ReturnReason returnReason});

  @override
  $TripSaleInvoiceCopyWith<$Res> get tripSaleInvoice;
  @override
  $TripSaleRequestCopyWith<$Res> get tripSaleRequest;
  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $ReturnReasonCopyWith<$Res> get returnReason;
}

/// @nodoc
class __$$TripSaleReturnImplCopyWithImpl<$Res>
    extends _$TripSaleReturnCopyWithImpl<$Res, _$TripSaleReturnImpl>
    implements _$$TripSaleReturnImplCopyWith<$Res> {
  __$$TripSaleReturnImplCopyWithImpl(
      _$TripSaleReturnImpl _value, $Res Function(_$TripSaleReturnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? returnDate = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? returnType = null,
    Object? tripSaleInvoice = null,
    Object? tripSaleRequest = null,
    Object? customer = null,
    Object? products = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? returnDeductAmount = null,
    Object? balance = null,
    Object? returnDeductType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? totalReturnAmount = null,
    Object? paymentStatus = null,
    Object? returnReason = null,
  }) {
    return _then(_$TripSaleReturnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleInvoice: null == tripSaleInvoice
          ? _value.tripSaleInvoice
          : tripSaleInvoice // ignore: cast_nullable_to_non_nullable
              as TripSaleInvoice,
      tripSaleRequest: null == tripSaleRequest
          ? _value.tripSaleRequest
          : tripSaleRequest // ignore: cast_nullable_to_non_nullable
              as TripSaleRequest,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
      returnDeductAmount: null == returnDeductAmount
          ? _value.returnDeductAmount
          : returnDeductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeductType: null == returnDeductType
          ? _value.returnDeductType
          : returnDeductType // ignore: cast_nullable_to_non_nullable
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
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as ReturnReason,
    ));
  }
}

/// @nodoc

class _$TripSaleReturnImpl implements _TripSaleReturn {
  const _$TripSaleReturnImpl(
      {this.id = -1,
      this.returnDate = "",
      this.code = "",
      this.invoiceCode = "",
      this.returnType = 1,
      this.tripSaleInvoice = const TripSaleInvoice(),
      this.tripSaleRequest = const TripSaleRequest(),
      this.customer = const Customer(),
      final List<Product> products = const [],
      this.remark = "",
      this.description = "",
      this.deleteReason = "",
      this.returnDeductAmount = 0,
      this.balance = 0,
      this.returnDeductType = AmountOrPercentStatus.amount,
      this.otherChargesAmount = 0,
      this.subtotal = 0,
      this.grandtotal = 0,
      this.totalReturnAmount = 0,
      this.paymentStatus = PaymentStatus.none,
      this.returnReason = const ReturnReason()})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String returnDate;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String invoiceCode;
  @override
  @JsonKey()
  final int returnType;
  @override
  @JsonKey()
  final TripSaleInvoice tripSaleInvoice;
  @override
  @JsonKey()
  final TripSaleRequest tripSaleRequest;
  @override
  @JsonKey()
  final Customer customer;
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
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String deleteReason;
  @override
  @JsonKey()
  final double returnDeductAmount;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final AmountOrPercentStatus returnDeductType;
  @override
  @JsonKey()
  final double otherChargesAmount;
  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double grandtotal;
  @override
  @JsonKey()
  final double totalReturnAmount;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final ReturnReason returnReason;

  @override
  String toString() {
    return 'TripSaleReturn(id: $id, returnDate: $returnDate, code: $code, invoiceCode: $invoiceCode, returnType: $returnType, tripSaleInvoice: $tripSaleInvoice, tripSaleRequest: $tripSaleRequest, customer: $customer, products: $products, remark: $remark, description: $description, deleteReason: $deleteReason, returnDeductAmount: $returnDeductAmount, balance: $balance, returnDeductType: $returnDeductType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, totalReturnAmount: $totalReturnAmount, paymentStatus: $paymentStatus, returnReason: $returnReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleReturnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.tripSaleInvoice, tripSaleInvoice) ||
                other.tripSaleInvoice == tripSaleInvoice) &&
            (identical(other.tripSaleRequest, tripSaleRequest) ||
                other.tripSaleRequest == tripSaleRequest) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.returnDeductAmount, returnDeductAmount) ||
                other.returnDeductAmount == returnDeductAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.returnDeductType, returnDeductType) ||
                other.returnDeductType == returnDeductType) &&
            (identical(other.otherChargesAmount, otherChargesAmount) ||
                other.otherChargesAmount == otherChargesAmount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.totalReturnAmount, totalReturnAmount) ||
                other.totalReturnAmount == totalReturnAmount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.returnReason, returnReason) ||
                other.returnReason == returnReason));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        returnDate,
        code,
        invoiceCode,
        returnType,
        tripSaleInvoice,
        tripSaleRequest,
        customer,
        const DeepCollectionEquality().hash(_products),
        remark,
        description,
        deleteReason,
        returnDeductAmount,
        balance,
        returnDeductType,
        otherChargesAmount,
        subtotal,
        grandtotal,
        totalReturnAmount,
        paymentStatus,
        returnReason
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleReturnImplCopyWith<_$TripSaleReturnImpl> get copyWith =>
      __$$TripSaleReturnImplCopyWithImpl<_$TripSaleReturnImpl>(
          this, _$identity);
}

abstract class _TripSaleReturn implements TripSaleReturn {
  const factory _TripSaleReturn(
      {final int id,
      final String returnDate,
      final String code,
      final String invoiceCode,
      final int returnType,
      final TripSaleInvoice tripSaleInvoice,
      final TripSaleRequest tripSaleRequest,
      final Customer customer,
      final List<Product> products,
      final String remark,
      final String description,
      final String deleteReason,
      final double returnDeductAmount,
      final double balance,
      final AmountOrPercentStatus returnDeductType,
      final double otherChargesAmount,
      final double subtotal,
      final double grandtotal,
      final double totalReturnAmount,
      final PaymentStatus paymentStatus,
      final ReturnReason returnReason}) = _$TripSaleReturnImpl;

  @override
  int get id;
  @override
  String get returnDate;
  @override
  String get code;
  @override
  String get invoiceCode;
  @override
  int get returnType;
  @override
  TripSaleInvoice get tripSaleInvoice;
  @override
  TripSaleRequest get tripSaleRequest;
  @override
  Customer get customer;
  @override
  List<Product> get products;
  @override
  String get remark;
  @override
  String get description;
  @override
  String get deleteReason;
  @override
  double get returnDeductAmount;
  @override
  double get balance;
  @override
  AmountOrPercentStatus get returnDeductType;
  @override
  double get otherChargesAmount;
  @override
  double get subtotal;
  @override
  double get grandtotal;
  @override
  double get totalReturnAmount;
  @override
  PaymentStatus get paymentStatus;
  @override
  ReturnReason get returnReason;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleReturnImplCopyWith<_$TripSaleReturnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
