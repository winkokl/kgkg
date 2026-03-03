// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionRegion {
  int get salePromotionId => throw _privateConstructorUsedError;
  int get promotionRegionId => throw _privateConstructorUsedError;
  String get promotionRegionName => throw _privateConstructorUsedError;
  int get salePromotionRegionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionRegionCopyWith<PromotionRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionRegionCopyWith<$Res> {
  factory $PromotionRegionCopyWith(
          PromotionRegion value, $Res Function(PromotionRegion) then) =
      _$PromotionRegionCopyWithImpl<$Res, PromotionRegion>;
  @useResult
  $Res call(
      {int salePromotionId,
      int promotionRegionId,
      String promotionRegionName,
      int salePromotionRegionId});
}

/// @nodoc
class _$PromotionRegionCopyWithImpl<$Res, $Val extends PromotionRegion>
    implements $PromotionRegionCopyWith<$Res> {
  _$PromotionRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? promotionRegionId = null,
    Object? promotionRegionName = null,
    Object? salePromotionRegionId = null,
  }) {
    return _then(_value.copyWith(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionId: null == promotionRegionId
          ? _value.promotionRegionId
          : promotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionName: null == promotionRegionName
          ? _value.promotionRegionName
          : promotionRegionName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionRegionId: null == salePromotionRegionId
          ? _value.salePromotionRegionId
          : salePromotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionRegionImplCopyWith<$Res>
    implements $PromotionRegionCopyWith<$Res> {
  factory _$$PromotionRegionImplCopyWith(_$PromotionRegionImpl value,
          $Res Function(_$PromotionRegionImpl) then) =
      __$$PromotionRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int salePromotionId,
      int promotionRegionId,
      String promotionRegionName,
      int salePromotionRegionId});
}

/// @nodoc
class __$$PromotionRegionImplCopyWithImpl<$Res>
    extends _$PromotionRegionCopyWithImpl<$Res, _$PromotionRegionImpl>
    implements _$$PromotionRegionImplCopyWith<$Res> {
  __$$PromotionRegionImplCopyWithImpl(
      _$PromotionRegionImpl _value, $Res Function(_$PromotionRegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? promotionRegionId = null,
    Object? promotionRegionName = null,
    Object? salePromotionRegionId = null,
  }) {
    return _then(_$PromotionRegionImpl(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionId: null == promotionRegionId
          ? _value.promotionRegionId
          : promotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionName: null == promotionRegionName
          ? _value.promotionRegionName
          : promotionRegionName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionRegionId: null == salePromotionRegionId
          ? _value.salePromotionRegionId
          : salePromotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PromotionRegionImpl implements _PromotionRegion {
  const _$PromotionRegionImpl(
      {this.salePromotionId = -1,
      this.promotionRegionId = -1,
      this.promotionRegionName = "",
      this.salePromotionRegionId = -1});

  @override
  @JsonKey()
  final int salePromotionId;
  @override
  @JsonKey()
  final int promotionRegionId;
  @override
  @JsonKey()
  final String promotionRegionName;
  @override
  @JsonKey()
  final int salePromotionRegionId;

  @override
  String toString() {
    return 'PromotionRegion(salePromotionId: $salePromotionId, promotionRegionId: $promotionRegionId, promotionRegionName: $promotionRegionName, salePromotionRegionId: $salePromotionRegionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionRegionImpl &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.promotionRegionId, promotionRegionId) ||
                other.promotionRegionId == promotionRegionId) &&
            (identical(other.promotionRegionName, promotionRegionName) ||
                other.promotionRegionName == promotionRegionName) &&
            (identical(other.salePromotionRegionId, salePromotionRegionId) ||
                other.salePromotionRegionId == salePromotionRegionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salePromotionId,
      promotionRegionId, promotionRegionName, salePromotionRegionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionRegionImplCopyWith<_$PromotionRegionImpl> get copyWith =>
      __$$PromotionRegionImplCopyWithImpl<_$PromotionRegionImpl>(
          this, _$identity);
}

abstract class _PromotionRegion implements PromotionRegion {
  const factory _PromotionRegion(
      {final int salePromotionId,
      final int promotionRegionId,
      final String promotionRegionName,
      final int salePromotionRegionId}) = _$PromotionRegionImpl;

  @override
  int get salePromotionId;
  @override
  int get promotionRegionId;
  @override
  String get promotionRegionName;
  @override
  int get salePromotionRegionId;
  @override
  @JsonKey(ignore: true)
  _$$PromotionRegionImplCopyWith<_$PromotionRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
