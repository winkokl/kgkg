// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SecondarySale {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  BusinessUnit get businessUnit => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  SaleType get saleType => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentTerm get paymentTerm => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get deleteReason => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  AmountOrPercentStatus get taxType => throw _privateConstructorUsedError;
  double get otherChargesAmount => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get grandtotal => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  SalePromotion get salePromotion => throw _privateConstructorUsedError;
  String get rejectReason => throw _privateConstructorUsedError;
  double get bonus => throw _privateConstructorUsedError;
  double get cashBack => throw _privateConstructorUsedError;
  int get salePromotionId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondarySaleCopyWith<SecondarySale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleCopyWith<$Res> {
  factory $SecondarySaleCopyWith(
          SecondarySale value, $Res Function(SecondarySale) then) =
      _$SecondarySaleCopyWithImpl<$Res, SecondarySale>;
  @useResult
  $Res call(
      {int id,
      String code,
      String date,
      String deliveryDate,
      Customer customer,
      BusinessUnit businessUnit,
      List<Product> products,
      SaleType saleType,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      double discount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      double tax,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      OrderStatus orderStatus,
      SalePromotion salePromotion,
      String rejectReason,
      double bonus,
      double cashBack,
      int salePromotionId,
      String type});

  $CustomerCopyWith<$Res> get customer;
  $BusinessUnitCopyWith<$Res> get businessUnit;
  $SaleTypeCopyWith<$Res> get saleType;
  $PaymentTypeCopyWith<$Res> get paymentType;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $SalePromotionCopyWith<$Res> get salePromotion;
}

/// @nodoc
class _$SecondarySaleCopyWithImpl<$Res, $Val extends SecondarySale>
    implements $SecondarySaleCopyWith<$Res> {
  _$SecondarySaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? date = null,
    Object? deliveryDate = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? products = null,
    Object? saleType = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? orderStatus = null,
    Object? salePromotion = null,
    Object? rejectReason = null,
    Object? bonus = null,
    Object? cashBack = null,
    Object? salePromotionId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
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
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as SaleType,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
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
      salePromotion: null == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $SaleTypeCopyWith<$Res> get saleType {
    return $SaleTypeCopyWith<$Res>(_value.saleType, (value) {
      return _then(_value.copyWith(saleType: value) as $Val);
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
}

/// @nodoc
abstract class _$$SecondarySaleImplCopyWith<$Res>
    implements $SecondarySaleCopyWith<$Res> {
  factory _$$SecondarySaleImplCopyWith(
          _$SecondarySaleImpl value, $Res Function(_$SecondarySaleImpl) then) =
      __$$SecondarySaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String date,
      String deliveryDate,
      Customer customer,
      BusinessUnit businessUnit,
      List<Product> products,
      SaleType saleType,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      double discount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      double tax,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      OrderStatus orderStatus,
      SalePromotion salePromotion,
      String rejectReason,
      double bonus,
      double cashBack,
      int salePromotionId,
      String type});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $BusinessUnitCopyWith<$Res> get businessUnit;
  @override
  $SaleTypeCopyWith<$Res> get saleType;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $SalePromotionCopyWith<$Res> get salePromotion;
}

/// @nodoc
class __$$SecondarySaleImplCopyWithImpl<$Res>
    extends _$SecondarySaleCopyWithImpl<$Res, _$SecondarySaleImpl>
    implements _$$SecondarySaleImplCopyWith<$Res> {
  __$$SecondarySaleImplCopyWithImpl(
      _$SecondarySaleImpl _value, $Res Function(_$SecondarySaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? date = null,
    Object? deliveryDate = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? products = null,
    Object? saleType = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? orderStatus = null,
    Object? salePromotion = null,
    Object? rejectReason = null,
    Object? bonus = null,
    Object? cashBack = null,
    Object? salePromotionId = null,
    Object? type = null,
  }) {
    return _then(_$SecondarySaleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
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
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as SaleType,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
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
      salePromotion: null == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecondarySaleImpl implements _SecondarySale {
  const _$SecondarySaleImpl(
      {this.id = -1,
      this.code = "",
      this.date = "",
      this.deliveryDate = "",
      this.customer = const Customer(),
      this.businessUnit = const BusinessUnit(),
      final List<Product> products = const [],
      this.saleType = const SaleType(),
      this.paymentType = const PaymentType(),
      this.paymentTerm = const PaymentTerm(),
      this.remark = "",
      this.description = "",
      this.deleteReason = "",
      this.discountAmount = 0,
      this.discount = 0,
      this.discountType = AmountOrPercentStatus.amount,
      this.taxAmount = 0,
      this.tax = 0,
      this.taxType = AmountOrPercentStatus.amount,
      this.otherChargesAmount = 0,
      this.subtotal = 0,
      this.grandtotal = 0,
      this.orderStatus = OrderStatus.pending,
      this.salePromotion = const SalePromotion(),
      this.rejectReason = "",
      this.bonus = 0,
      this.cashBack = 0,
      this.salePromotionId = -1,
      this.type = "Secondary"})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String deliveryDate;
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
  final SaleType saleType;
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
  final double discount;
  @override
  @JsonKey()
  final AmountOrPercentStatus discountType;
  @override
  @JsonKey()
  final double taxAmount;
  @override
  @JsonKey()
  final double tax;
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
  final SalePromotion salePromotion;
  @override
  @JsonKey()
  final String rejectReason;
  @override
  @JsonKey()
  final double bonus;
  @override
  @JsonKey()
  final double cashBack;
  @override
  @JsonKey()
  final int salePromotionId;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'SecondarySale(id: $id, code: $code, date: $date, deliveryDate: $deliveryDate, customer: $customer, businessUnit: $businessUnit, products: $products, saleType: $saleType, paymentType: $paymentType, paymentTerm: $paymentTerm, remark: $remark, description: $description, deleteReason: $deleteReason, discountAmount: $discountAmount, discount: $discount, discountType: $discountType, taxAmount: $taxAmount, tax: $tax, taxType: $taxType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, orderStatus: $orderStatus, salePromotion: $salePromotion, rejectReason: $rejectReason, bonus: $bonus, cashBack: $cashBack, salePromotionId: $salePromotionId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.saleType, saleType) ||
                other.saleType == saleType) &&
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
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.otherChargesAmount, otherChargesAmount) ||
                other.otherChargesAmount == otherChargesAmount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.salePromotion, salePromotion) ||
                other.salePromotion == salePromotion) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        date,
        deliveryDate,
        customer,
        businessUnit,
        const DeepCollectionEquality().hash(_products),
        saleType,
        paymentType,
        paymentTerm,
        remark,
        description,
        deleteReason,
        discountAmount,
        discount,
        discountType,
        taxAmount,
        tax,
        taxType,
        otherChargesAmount,
        subtotal,
        grandtotal,
        orderStatus,
        salePromotion,
        rejectReason,
        bonus,
        cashBack,
        salePromotionId,
        type
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleImplCopyWith<_$SecondarySaleImpl> get copyWith =>
      __$$SecondarySaleImplCopyWithImpl<_$SecondarySaleImpl>(this, _$identity);
}

abstract class _SecondarySale implements SecondarySale {
  const factory _SecondarySale(
      {final int id,
      final String code,
      final String date,
      final String deliveryDate,
      final Customer customer,
      final BusinessUnit businessUnit,
      final List<Product> products,
      final SaleType saleType,
      final PaymentType paymentType,
      final PaymentTerm paymentTerm,
      final String remark,
      final String description,
      final String deleteReason,
      final double discountAmount,
      final double discount,
      final AmountOrPercentStatus discountType,
      final double taxAmount,
      final double tax,
      final AmountOrPercentStatus taxType,
      final double otherChargesAmount,
      final double subtotal,
      final double grandtotal,
      final OrderStatus orderStatus,
      final SalePromotion salePromotion,
      final String rejectReason,
      final double bonus,
      final double cashBack,
      final int salePromotionId,
      final String type}) = _$SecondarySaleImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get date;
  @override
  String get deliveryDate;
  @override
  Customer get customer;
  @override
  BusinessUnit get businessUnit;
  @override
  List<Product> get products;
  @override
  SaleType get saleType;
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
  double get discount;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double get taxAmount;
  @override
  double get tax;
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
  SalePromotion get salePromotion;
  @override
  String get rejectReason;
  @override
  double get bonus;
  @override
  double get cashBack;
  @override
  int get salePromotionId;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleImplCopyWith<_$SecondarySaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
