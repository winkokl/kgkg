// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketing_promotion_return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketingPromotionReturn {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get otherCharges => throw _privateConstructorUsedError;
  double get grandTotal => throw _privateConstructorUsedError;
  double get deductAmount => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get paidAmount => throw _privateConstructorUsedError;
  PaymentStatus get returnStatus => throw _privateConstructorUsedError;
  MarketingPromotionPlan get marketingPromotionPlan =>
      throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get businessUnitName => throw _privateConstructorUsedError;
  List<PromotionProduct> get products => throw _privateConstructorUsedError;
  List<GiftItem> get giftItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketingPromotionReturnCopyWith<MarketingPromotionReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingPromotionReturnCopyWith<$Res> {
  factory $MarketingPromotionReturnCopyWith(MarketingPromotionReturn value,
          $Res Function(MarketingPromotionReturn) then) =
      _$MarketingPromotionReturnCopyWithImpl<$Res, MarketingPromotionReturn>;
  @useResult
  $Res call(
      {int id,
      String code,
      String returnDate,
      String description,
      double subTotal,
      double otherCharges,
      double grandTotal,
      double deductAmount,
      double total,
      double balance,
      double paidAmount,
      PaymentStatus returnStatus,
      MarketingPromotionPlan marketingPromotionPlan,
      String customerName,
      String businessUnitName,
      List<PromotionProduct> products,
      List<GiftItem> giftItems});

  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan;
}

/// @nodoc
class _$MarketingPromotionReturnCopyWithImpl<$Res,
        $Val extends MarketingPromotionReturn>
    implements $MarketingPromotionReturnCopyWith<$Res> {
  _$MarketingPromotionReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? returnDate = null,
    Object? description = null,
    Object? subTotal = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? deductAmount = null,
    Object? total = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? returnStatus = null,
    Object? marketingPromotionPlan = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? products = null,
    Object? giftItems = null,
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
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      deductAmount: null == deductAmount
          ? _value.deductAmount
          : deductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      marketingPromotionPlan: null == marketingPromotionPlan
          ? _value.marketingPromotionPlan
          : marketingPromotionPlan // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlan,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PromotionProduct>,
      giftItems: null == giftItems
          ? _value.giftItems
          : giftItems // ignore: cast_nullable_to_non_nullable
              as List<GiftItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan {
    return $MarketingPromotionPlanCopyWith<$Res>(_value.marketingPromotionPlan,
        (value) {
      return _then(_value.copyWith(marketingPromotionPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketingPromotionReturnImplCopyWith<$Res>
    implements $MarketingPromotionReturnCopyWith<$Res> {
  factory _$$MarketingPromotionReturnImplCopyWith(
          _$MarketingPromotionReturnImpl value,
          $Res Function(_$MarketingPromotionReturnImpl) then) =
      __$$MarketingPromotionReturnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String returnDate,
      String description,
      double subTotal,
      double otherCharges,
      double grandTotal,
      double deductAmount,
      double total,
      double balance,
      double paidAmount,
      PaymentStatus returnStatus,
      MarketingPromotionPlan marketingPromotionPlan,
      String customerName,
      String businessUnitName,
      List<PromotionProduct> products,
      List<GiftItem> giftItems});

  @override
  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan;
}

/// @nodoc
class __$$MarketingPromotionReturnImplCopyWithImpl<$Res>
    extends _$MarketingPromotionReturnCopyWithImpl<$Res,
        _$MarketingPromotionReturnImpl>
    implements _$$MarketingPromotionReturnImplCopyWith<$Res> {
  __$$MarketingPromotionReturnImplCopyWithImpl(
      _$MarketingPromotionReturnImpl _value,
      $Res Function(_$MarketingPromotionReturnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? returnDate = null,
    Object? description = null,
    Object? subTotal = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? deductAmount = null,
    Object? total = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? returnStatus = null,
    Object? marketingPromotionPlan = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? products = null,
    Object? giftItems = null,
  }) {
    return _then(_$MarketingPromotionReturnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      deductAmount: null == deductAmount
          ? _value.deductAmount
          : deductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      marketingPromotionPlan: null == marketingPromotionPlan
          ? _value.marketingPromotionPlan
          : marketingPromotionPlan // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlan,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PromotionProduct>,
      giftItems: null == giftItems
          ? _value._giftItems
          : giftItems // ignore: cast_nullable_to_non_nullable
              as List<GiftItem>,
    ));
  }
}

/// @nodoc

class _$MarketingPromotionReturnImpl implements _MarketingPromotionReturn {
  const _$MarketingPromotionReturnImpl(
      {this.id = -1,
      this.code = '',
      this.returnDate = '',
      this.description = '',
      this.subTotal = 0,
      this.otherCharges = 0,
      this.grandTotal = 0,
      this.deductAmount = 0,
      this.total = 0,
      this.balance = 0,
      this.paidAmount = 0,
      this.returnStatus = PaymentStatus.open,
      this.marketingPromotionPlan = const MarketingPromotionPlan(),
      this.customerName = '',
      this.businessUnitName = '',
      final List<PromotionProduct> products = const [],
      final List<GiftItem> giftItems = const []})
      : _products = products,
        _giftItems = giftItems;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String returnDate;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double subTotal;
  @override
  @JsonKey()
  final double otherCharges;
  @override
  @JsonKey()
  final double grandTotal;
  @override
  @JsonKey()
  final double deductAmount;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double paidAmount;
  @override
  @JsonKey()
  final PaymentStatus returnStatus;
  @override
  @JsonKey()
  final MarketingPromotionPlan marketingPromotionPlan;
  @override
  @JsonKey()
  final String customerName;
  @override
  @JsonKey()
  final String businessUnitName;
  final List<PromotionProduct> _products;
  @override
  @JsonKey()
  List<PromotionProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<GiftItem> _giftItems;
  @override
  @JsonKey()
  List<GiftItem> get giftItems {
    if (_giftItems is EqualUnmodifiableListView) return _giftItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftItems);
  }

  @override
  String toString() {
    return 'MarketingPromotionReturn(id: $id, code: $code, returnDate: $returnDate, description: $description, subTotal: $subTotal, otherCharges: $otherCharges, grandTotal: $grandTotal, deductAmount: $deductAmount, total: $total, balance: $balance, paidAmount: $paidAmount, returnStatus: $returnStatus, marketingPromotionPlan: $marketingPromotionPlan, customerName: $customerName, businessUnitName: $businessUnitName, products: $products, giftItems: $giftItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingPromotionReturnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.otherCharges, otherCharges) ||
                other.otherCharges == otherCharges) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.deductAmount, deductAmount) ||
                other.deductAmount == deductAmount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.returnStatus, returnStatus) ||
                other.returnStatus == returnStatus) &&
            (identical(other.marketingPromotionPlan, marketingPromotionPlan) ||
                other.marketingPromotionPlan == marketingPromotionPlan) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._giftItems, _giftItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      returnDate,
      description,
      subTotal,
      otherCharges,
      grandTotal,
      deductAmount,
      total,
      balance,
      paidAmount,
      returnStatus,
      marketingPromotionPlan,
      customerName,
      businessUnitName,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_giftItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingPromotionReturnImplCopyWith<_$MarketingPromotionReturnImpl>
      get copyWith => __$$MarketingPromotionReturnImplCopyWithImpl<
          _$MarketingPromotionReturnImpl>(this, _$identity);
}

abstract class _MarketingPromotionReturn implements MarketingPromotionReturn {
  const factory _MarketingPromotionReturn(
      {final int id,
      final String code,
      final String returnDate,
      final String description,
      final double subTotal,
      final double otherCharges,
      final double grandTotal,
      final double deductAmount,
      final double total,
      final double balance,
      final double paidAmount,
      final PaymentStatus returnStatus,
      final MarketingPromotionPlan marketingPromotionPlan,
      final String customerName,
      final String businessUnitName,
      final List<PromotionProduct> products,
      final List<GiftItem> giftItems}) = _$MarketingPromotionReturnImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get returnDate;
  @override
  String get description;
  @override
  double get subTotal;
  @override
  double get otherCharges;
  @override
  double get grandTotal;
  @override
  double get deductAmount;
  @override
  double get total;
  @override
  double get balance;
  @override
  double get paidAmount;
  @override
  PaymentStatus get returnStatus;
  @override
  MarketingPromotionPlan get marketingPromotionPlan;
  @override
  String get customerName;
  @override
  String get businessUnitName;
  @override
  List<PromotionProduct> get products;
  @override
  List<GiftItem> get giftItems;
  @override
  @JsonKey(ignore: true)
  _$$MarketingPromotionReturnImplCopyWith<_$MarketingPromotionReturnImpl>
      get copyWith => throw _privateConstructorUsedError;
}
