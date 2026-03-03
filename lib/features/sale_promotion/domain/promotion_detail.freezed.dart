// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionDetail {
  List<Sku> get sku => throw _privateConstructorUsedError;
  List<Info> get info => throw _privateConstructorUsedError;
  SaleRangeType get rangeType => throw _privateConstructorUsedError;
  String get salePromotionId => throw _privateConstructorUsedError;
  String get promotionName => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  int get salePromotionDetailId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionDetailCopyWith<PromotionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailCopyWith<$Res> {
  factory $PromotionDetailCopyWith(
          PromotionDetail value, $Res Function(PromotionDetail) then) =
      _$PromotionDetailCopyWithImpl<$Res, PromotionDetail>;
  @useResult
  $Res call(
      {List<Sku> sku,
      List<Info> info,
      SaleRangeType rangeType,
      String salePromotionId,
      String promotionName,
      int productId,
      int salePromotionDetailId});
}

/// @nodoc
class _$PromotionDetailCopyWithImpl<$Res, $Val extends PromotionDetail>
    implements $PromotionDetailCopyWith<$Res> {
  _$PromotionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = null,
    Object? info = null,
    Object? rangeType = null,
    Object? salePromotionId = null,
    Object? promotionName = null,
    Object? productId = null,
    Object? salePromotionDetailId = null,
  }) {
    return _then(_value.copyWith(
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<Sku>,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<Info>,
      rangeType: null == rangeType
          ? _value.rangeType
          : rangeType // ignore: cast_nullable_to_non_nullable
              as SaleRangeType,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      salePromotionDetailId: null == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionDetailImplCopyWith<$Res>
    implements $PromotionDetailCopyWith<$Res> {
  factory _$$PromotionDetailImplCopyWith(_$PromotionDetailImpl value,
          $Res Function(_$PromotionDetailImpl) then) =
      __$$PromotionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Sku> sku,
      List<Info> info,
      SaleRangeType rangeType,
      String salePromotionId,
      String promotionName,
      int productId,
      int salePromotionDetailId});
}

/// @nodoc
class __$$PromotionDetailImplCopyWithImpl<$Res>
    extends _$PromotionDetailCopyWithImpl<$Res, _$PromotionDetailImpl>
    implements _$$PromotionDetailImplCopyWith<$Res> {
  __$$PromotionDetailImplCopyWithImpl(
      _$PromotionDetailImpl _value, $Res Function(_$PromotionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = null,
    Object? info = null,
    Object? rangeType = null,
    Object? salePromotionId = null,
    Object? promotionName = null,
    Object? productId = null,
    Object? salePromotionDetailId = null,
  }) {
    return _then(_$PromotionDetailImpl(
      sku: null == sku
          ? _value._sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<Sku>,
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<Info>,
      rangeType: null == rangeType
          ? _value.rangeType
          : rangeType // ignore: cast_nullable_to_non_nullable
              as SaleRangeType,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      salePromotionDetailId: null == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PromotionDetailImpl implements _PromotionDetail {
  const _$PromotionDetailImpl(
      {final List<Sku> sku = const [],
      final List<Info> info = const [],
      this.rangeType = SaleRangeType.mmk,
      this.salePromotionId = "",
      this.promotionName = "",
      this.productId = -1,
      this.salePromotionDetailId = -1})
      : _sku = sku,
        _info = info;

  final List<Sku> _sku;
  @override
  @JsonKey()
  List<Sku> get sku {
    if (_sku is EqualUnmodifiableListView) return _sku;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sku);
  }

  final List<Info> _info;
  @override
  @JsonKey()
  List<Info> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  @JsonKey()
  final SaleRangeType rangeType;
  @override
  @JsonKey()
  final String salePromotionId;
  @override
  @JsonKey()
  final String promotionName;
  @override
  @JsonKey()
  final int productId;
  @override
  @JsonKey()
  final int salePromotionDetailId;

  @override
  String toString() {
    return 'PromotionDetail(sku: $sku, info: $info, rangeType: $rangeType, salePromotionId: $salePromotionId, promotionName: $promotionName, productId: $productId, salePromotionDetailId: $salePromotionDetailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionDetailImpl &&
            const DeepCollectionEquality().equals(other._sku, _sku) &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            (identical(other.rangeType, rangeType) ||
                other.rangeType == rangeType) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.promotionName, promotionName) ||
                other.promotionName == promotionName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.salePromotionDetailId, salePromotionDetailId) ||
                other.salePromotionDetailId == salePromotionDetailId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sku),
      const DeepCollectionEquality().hash(_info),
      rangeType,
      salePromotionId,
      promotionName,
      productId,
      salePromotionDetailId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionDetailImplCopyWith<_$PromotionDetailImpl> get copyWith =>
      __$$PromotionDetailImplCopyWithImpl<_$PromotionDetailImpl>(
          this, _$identity);
}

abstract class _PromotionDetail implements PromotionDetail {
  const factory _PromotionDetail(
      {final List<Sku> sku,
      final List<Info> info,
      final SaleRangeType rangeType,
      final String salePromotionId,
      final String promotionName,
      final int productId,
      final int salePromotionDetailId}) = _$PromotionDetailImpl;

  @override
  List<Sku> get sku;
  @override
  List<Info> get info;
  @override
  SaleRangeType get rangeType;
  @override
  String get salePromotionId;
  @override
  String get promotionName;
  @override
  int get productId;
  @override
  int get salePromotionDetailId;
  @override
  @JsonKey(ignore: true)
  _$$PromotionDetailImplCopyWith<_$PromotionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
