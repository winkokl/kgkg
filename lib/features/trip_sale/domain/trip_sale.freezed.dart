// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripSale {
  int get id => throw _privateConstructorUsedError;
  TripSaleRequest get tripSaleRequest => throw _privateConstructorUsedError;
  TripProposal get tripProposal => throw _privateConstructorUsedError;
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
  double get otherChargesAmount => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get grandtotal => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  String get rejectReason => throw _privateConstructorUsedError;
  TripSaleMethod get tripSaleMethod => throw _privateConstructorUsedError;
  SalePromotion get salePromotion => throw _privateConstructorUsedError;
  Warehouse? get warehouse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripSaleCopyWith<TripSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleCopyWith<$Res> {
  factory $TripSaleCopyWith(TripSale value, $Res Function(TripSale) then) =
      _$TripSaleCopyWithImpl<$Res, TripSale>;
  @useResult
  $Res call(
      {int id,
      TripSaleRequest tripSaleRequest,
      TripProposal tripProposal,
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
      String rejectReason,
      TripSaleMethod tripSaleMethod,
      SalePromotion salePromotion,
      Warehouse? warehouse});

  $TripSaleRequestCopyWith<$Res> get tripSaleRequest;
  $TripProposalCopyWith<$Res> get tripProposal;
  $CustomerCopyWith<$Res> get customer;
  $BusinessUnitCopyWith<$Res> get businessUnit;
  $PaymentTypeCopyWith<$Res> get paymentType;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $SalePromotionCopyWith<$Res> get salePromotion;
  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class _$TripSaleCopyWithImpl<$Res, $Val extends TripSale>
    implements $TripSaleCopyWith<$Res> {
  _$TripSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripSaleRequest = null,
    Object? tripProposal = null,
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
    Object? rejectReason = null,
    Object? tripSaleMethod = null,
    Object? salePromotion = null,
    Object? warehouse = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequest: null == tripSaleRequest
          ? _value.tripSaleRequest
          : tripSaleRequest // ignore: cast_nullable_to_non_nullable
              as TripSaleRequest,
      tripProposal: null == tripProposal
          ? _value.tripProposal
          : tripProposal // ignore: cast_nullable_to_non_nullable
              as TripProposal,
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
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      tripSaleMethod: null == tripSaleMethod
          ? _value.tripSaleMethod
          : tripSaleMethod // ignore: cast_nullable_to_non_nullable
              as TripSaleMethod,
      salePromotion: null == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ) as $Val);
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
  $TripProposalCopyWith<$Res> get tripProposal {
    return $TripProposalCopyWith<$Res>(_value.tripProposal, (value) {
      return _then(_value.copyWith(tripProposal: value) as $Val);
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
  $SalePromotionCopyWith<$Res> get salePromotion {
    return $SalePromotionCopyWith<$Res>(_value.salePromotion, (value) {
      return _then(_value.copyWith(salePromotion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseCopyWith<$Res>? get warehouse {
    if (_value.warehouse == null) {
      return null;
    }

    return $WarehouseCopyWith<$Res>(_value.warehouse!, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripSaleImplCopyWith<$Res>
    implements $TripSaleCopyWith<$Res> {
  factory _$$TripSaleImplCopyWith(
          _$TripSaleImpl value, $Res Function(_$TripSaleImpl) then) =
      __$$TripSaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      TripSaleRequest tripSaleRequest,
      TripProposal tripProposal,
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
      String rejectReason,
      TripSaleMethod tripSaleMethod,
      SalePromotion salePromotion,
      Warehouse? warehouse});

  @override
  $TripSaleRequestCopyWith<$Res> get tripSaleRequest;
  @override
  $TripProposalCopyWith<$Res> get tripProposal;
  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $BusinessUnitCopyWith<$Res> get businessUnit;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $SalePromotionCopyWith<$Res> get salePromotion;
  @override
  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class __$$TripSaleImplCopyWithImpl<$Res>
    extends _$TripSaleCopyWithImpl<$Res, _$TripSaleImpl>
    implements _$$TripSaleImplCopyWith<$Res> {
  __$$TripSaleImplCopyWithImpl(
      _$TripSaleImpl _value, $Res Function(_$TripSaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripSaleRequest = null,
    Object? tripProposal = null,
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
    Object? rejectReason = null,
    Object? tripSaleMethod = null,
    Object? salePromotion = null,
    Object? warehouse = freezed,
  }) {
    return _then(_$TripSaleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequest: null == tripSaleRequest
          ? _value.tripSaleRequest
          : tripSaleRequest // ignore: cast_nullable_to_non_nullable
              as TripSaleRequest,
      tripProposal: null == tripProposal
          ? _value.tripProposal
          : tripProposal // ignore: cast_nullable_to_non_nullable
              as TripProposal,
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
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      tripSaleMethod: null == tripSaleMethod
          ? _value.tripSaleMethod
          : tripSaleMethod // ignore: cast_nullable_to_non_nullable
              as TripSaleMethod,
      salePromotion: null == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ));
  }
}

/// @nodoc

class _$TripSaleImpl implements _TripSale {
  const _$TripSaleImpl(
      {this.id = -1,
      this.tripSaleRequest = const TripSaleRequest(),
      this.tripProposal = const TripProposal(),
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
      this.rejectReason = "",
      this.tripSaleMethod = TripSaleMethod.saleRequest,
      this.salePromotion = const SalePromotion(),
      this.warehouse})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final TripSaleRequest tripSaleRequest;
  @override
  @JsonKey()
  final TripProposal tripProposal;
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
  final String rejectReason;
  @override
  @JsonKey()
  final TripSaleMethod tripSaleMethod;
  @override
  @JsonKey()
  final SalePromotion salePromotion;
  @override
  final Warehouse? warehouse;

  @override
  String toString() {
    return 'TripSale(id: $id, tripSaleRequest: $tripSaleRequest, tripProposal: $tripProposal, code: $code, date: $date, customer: $customer, businessUnit: $businessUnit, products: $products, paymentType: $paymentType, paymentTerm: $paymentTerm, remark: $remark, description: $description, deleteReason: $deleteReason, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, orderStatus: $orderStatus, rejectReason: $rejectReason, tripSaleMethod: $tripSaleMethod, salePromotion: $salePromotion, warehouse: $warehouse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripSaleRequest, tripSaleRequest) ||
                other.tripSaleRequest == tripSaleRequest) &&
            (identical(other.tripProposal, tripProposal) ||
                other.tripProposal == tripProposal) &&
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
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.tripSaleMethod, tripSaleMethod) ||
                other.tripSaleMethod == tripSaleMethod) &&
            (identical(other.salePromotion, salePromotion) ||
                other.salePromotion == salePromotion) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        tripSaleRequest,
        tripProposal,
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
        rejectReason,
        tripSaleMethod,
        salePromotion,
        warehouse
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleImplCopyWith<_$TripSaleImpl> get copyWith =>
      __$$TripSaleImplCopyWithImpl<_$TripSaleImpl>(this, _$identity);
}

abstract class _TripSale implements TripSale {
  const factory _TripSale(
      {final int id,
      final TripSaleRequest tripSaleRequest,
      final TripProposal tripProposal,
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
      final String rejectReason,
      final TripSaleMethod tripSaleMethod,
      final SalePromotion salePromotion,
      final Warehouse? warehouse}) = _$TripSaleImpl;

  @override
  int get id;
  @override
  TripSaleRequest get tripSaleRequest;
  @override
  TripProposal get tripProposal;
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
  @override
  double get subtotal;
  @override
  double get grandtotal;
  @override
  OrderStatus get orderStatus;
  @override
  String get rejectReason;
  @override
  TripSaleMethod get tripSaleMethod;
  @override
  SalePromotion get salePromotion;
  @override
  Warehouse? get warehouse;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleImplCopyWith<_$TripSaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
