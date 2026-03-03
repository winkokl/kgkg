// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Info {
  int get item => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get bonus => throw _privateConstructorUsedError;
  double get cashback => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  int get itemQty => throw _privateConstructorUsedError;
  double get bonusAmt => throw _privateConstructorUsedError;
  int get itemUnit => throw _privateConstructorUsedError;
  String get itemUnitName => throw _privateConstructorUsedError;
  AmountOrPercentStatus get bonusType => throw _privateConstructorUsedError;
  double get cashbackAmt => throw _privateConstructorUsedError;
  @JsonValue("discountAmt")
  double get discountAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get cashbackType => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double get saleRangeTo => throw _privateConstructorUsedError;
  double get saleRangeFrom => throw _privateConstructorUsedError;
  String get promotionName => throw _privateConstructorUsedError;
  String get skulabel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {int item,
      String itemName,
      double bonus,
      double cashback,
      double discount,
      int itemQty,
      double bonusAmt,
      int itemUnit,
      String itemUnitName,
      AmountOrPercentStatus bonusType,
      double cashbackAmt,
      @JsonValue("discountAmt") double discountAmount,
      AmountOrPercentStatus cashbackType,
      AmountOrPercentStatus discountType,
      double saleRangeTo,
      double saleRangeFrom,
      String promotionName,
      String skulabel});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? itemName = null,
    Object? bonus = null,
    Object? cashback = null,
    Object? discount = null,
    Object? itemQty = null,
    Object? bonusAmt = null,
    Object? itemUnit = null,
    Object? itemUnitName = null,
    Object? bonusType = null,
    Object? cashbackAmt = null,
    Object? discountAmount = null,
    Object? cashbackType = null,
    Object? discountType = null,
    Object? saleRangeTo = null,
    Object? saleRangeFrom = null,
    Object? promotionName = null,
    Object? skulabel = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      itemUnit: null == itemUnit
          ? _value.itemUnit
          : itemUnit // ignore: cast_nullable_to_non_nullable
              as int,
      itemUnitName: null == itemUnitName
          ? _value.itemUnitName
          : itemUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      saleRangeTo: null == saleRangeTo
          ? _value.saleRangeTo
          : saleRangeTo // ignore: cast_nullable_to_non_nullable
              as double,
      saleRangeFrom: null == saleRangeFrom
          ? _value.saleRangeFrom
          : saleRangeFrom // ignore: cast_nullable_to_non_nullable
              as double,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      skulabel: null == skulabel
          ? _value.skulabel
          : skulabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int item,
      String itemName,
      double bonus,
      double cashback,
      double discount,
      int itemQty,
      double bonusAmt,
      int itemUnit,
      String itemUnitName,
      AmountOrPercentStatus bonusType,
      double cashbackAmt,
      @JsonValue("discountAmt") double discountAmount,
      AmountOrPercentStatus cashbackType,
      AmountOrPercentStatus discountType,
      double saleRangeTo,
      double saleRangeFrom,
      String promotionName,
      String skulabel});
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? itemName = null,
    Object? bonus = null,
    Object? cashback = null,
    Object? discount = null,
    Object? itemQty = null,
    Object? bonusAmt = null,
    Object? itemUnit = null,
    Object? itemUnitName = null,
    Object? bonusType = null,
    Object? cashbackAmt = null,
    Object? discountAmount = null,
    Object? cashbackType = null,
    Object? discountType = null,
    Object? saleRangeTo = null,
    Object? saleRangeFrom = null,
    Object? promotionName = null,
    Object? skulabel = null,
  }) {
    return _then(_$InfoImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      itemUnit: null == itemUnit
          ? _value.itemUnit
          : itemUnit // ignore: cast_nullable_to_non_nullable
              as int,
      itemUnitName: null == itemUnitName
          ? _value.itemUnitName
          : itemUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      saleRangeTo: null == saleRangeTo
          ? _value.saleRangeTo
          : saleRangeTo // ignore: cast_nullable_to_non_nullable
              as double,
      saleRangeFrom: null == saleRangeFrom
          ? _value.saleRangeFrom
          : saleRangeFrom // ignore: cast_nullable_to_non_nullable
              as double,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      skulabel: null == skulabel
          ? _value.skulabel
          : skulabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {this.item = -1,
      this.itemName = "",
      this.bonus = 0,
      this.cashback = 0,
      this.discount = 0,
      this.itemQty = 0,
      this.bonusAmt = 0,
      this.itemUnit = -1,
      this.itemUnitName = "",
      this.bonusType = AmountOrPercentStatus.amount,
      this.cashbackAmt = 0,
      @JsonValue("discountAmt") this.discountAmount = 0,
      this.cashbackType = AmountOrPercentStatus.amount,
      this.discountType = AmountOrPercentStatus.amount,
      this.saleRangeTo = 0,
      this.saleRangeFrom = 0,
      this.promotionName = "",
      this.skulabel = ""});

  @override
  @JsonKey()
  final int item;
  @override
  @JsonKey()
  final String itemName;
  @override
  @JsonKey()
  final double bonus;
  @override
  @JsonKey()
  final double cashback;
  @override
  @JsonKey()
  final double discount;
  @override
  @JsonKey()
  final int itemQty;
  @override
  @JsonKey()
  final double bonusAmt;
  @override
  @JsonKey()
  final int itemUnit;
  @override
  @JsonKey()
  final String itemUnitName;
  @override
  @JsonKey()
  final AmountOrPercentStatus bonusType;
  @override
  @JsonKey()
  final double cashbackAmt;
  @override
  @JsonKey()
  @JsonValue("discountAmt")
  final double discountAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus cashbackType;
  @override
  @JsonKey()
  final AmountOrPercentStatus discountType;
  @override
  @JsonKey()
  final double saleRangeTo;
  @override
  @JsonKey()
  final double saleRangeFrom;
  @override
  @JsonKey()
  final String promotionName;
  @override
  @JsonKey()
  final String skulabel;

  @override
  String toString() {
    return 'Info(item: $item, itemName: $itemName, bonus: $bonus, cashback: $cashback, discount: $discount, itemQty: $itemQty, bonusAmt: $bonusAmt, itemUnit: $itemUnit, itemUnitName: $itemUnitName, bonusType: $bonusType, cashbackAmt: $cashbackAmt, discountAmount: $discountAmount, cashbackType: $cashbackType, discountType: $discountType, saleRangeTo: $saleRangeTo, saleRangeFrom: $saleRangeFrom, promotionName: $promotionName, skulabel: $skulabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.itemQty, itemQty) || other.itemQty == itemQty) &&
            (identical(other.bonusAmt, bonusAmt) ||
                other.bonusAmt == bonusAmt) &&
            (identical(other.itemUnit, itemUnit) ||
                other.itemUnit == itemUnit) &&
            (identical(other.itemUnitName, itemUnitName) ||
                other.itemUnitName == itemUnitName) &&
            (identical(other.bonusType, bonusType) ||
                other.bonusType == bonusType) &&
            (identical(other.cashbackAmt, cashbackAmt) ||
                other.cashbackAmt == cashbackAmt) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.cashbackType, cashbackType) ||
                other.cashbackType == cashbackType) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.saleRangeTo, saleRangeTo) ||
                other.saleRangeTo == saleRangeTo) &&
            (identical(other.saleRangeFrom, saleRangeFrom) ||
                other.saleRangeFrom == saleRangeFrom) &&
            (identical(other.promotionName, promotionName) ||
                other.promotionName == promotionName) &&
            (identical(other.skulabel, skulabel) ||
                other.skulabel == skulabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      item,
      itemName,
      bonus,
      cashback,
      discount,
      itemQty,
      bonusAmt,
      itemUnit,
      itemUnitName,
      bonusType,
      cashbackAmt,
      discountAmount,
      cashbackType,
      discountType,
      saleRangeTo,
      saleRangeFrom,
      promotionName,
      skulabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);
}

abstract class _Info implements Info {
  const factory _Info(
      {final int item,
      final String itemName,
      final double bonus,
      final double cashback,
      final double discount,
      final int itemQty,
      final double bonusAmt,
      final int itemUnit,
      final String itemUnitName,
      final AmountOrPercentStatus bonusType,
      final double cashbackAmt,
      @JsonValue("discountAmt") final double discountAmount,
      final AmountOrPercentStatus cashbackType,
      final AmountOrPercentStatus discountType,
      final double saleRangeTo,
      final double saleRangeFrom,
      final String promotionName,
      final String skulabel}) = _$InfoImpl;

  @override
  int get item;
  @override
  String get itemName;
  @override
  double get bonus;
  @override
  double get cashback;
  @override
  double get discount;
  @override
  int get itemQty;
  @override
  double get bonusAmt;
  @override
  int get itemUnit;
  @override
  String get itemUnitName;
  @override
  AmountOrPercentStatus get bonusType;
  @override
  double get cashbackAmt;
  @override
  @JsonValue("discountAmt")
  double get discountAmount;
  @override
  AmountOrPercentStatus get cashbackType;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double get saleRangeTo;
  @override
  double get saleRangeFrom;
  @override
  String get promotionName;
  @override
  String get skulabel;
  @override
  @JsonKey(ignore: true)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
