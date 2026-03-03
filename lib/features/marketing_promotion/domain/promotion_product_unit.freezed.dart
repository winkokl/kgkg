// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_product_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionProductUnit _$PromotionProductUnitFromJson(Map<String, dynamic> json) {
  return _PromotionProductUnit.fromJson(json);
}

/// @nodoc
mixin _$PromotionProductUnit {
  String get label => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionProductUnitCopyWith<PromotionProductUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionProductUnitCopyWith<$Res> {
  factory $PromotionProductUnitCopyWith(PromotionProductUnit value,
          $Res Function(PromotionProductUnit) then) =
      _$PromotionProductUnitCopyWithImpl<$Res, PromotionProductUnit>;
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class _$PromotionProductUnitCopyWithImpl<$Res,
        $Val extends PromotionProductUnit>
    implements $PromotionProductUnitCopyWith<$Res> {
  _$PromotionProductUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionProductUnitImplCopyWith<$Res>
    implements $PromotionProductUnitCopyWith<$Res> {
  factory _$$PromotionProductUnitImplCopyWith(_$PromotionProductUnitImpl value,
          $Res Function(_$PromotionProductUnitImpl) then) =
      __$$PromotionProductUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class __$$PromotionProductUnitImplCopyWithImpl<$Res>
    extends _$PromotionProductUnitCopyWithImpl<$Res, _$PromotionProductUnitImpl>
    implements _$$PromotionProductUnitImplCopyWith<$Res> {
  __$$PromotionProductUnitImplCopyWithImpl(_$PromotionProductUnitImpl _value,
      $Res Function(_$PromotionProductUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_$PromotionProductUnitImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionProductUnitImpl extends _PromotionProductUnit {
  const _$PromotionProductUnitImpl({this.label = "", this.value}) : super._();

  factory _$PromotionProductUnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionProductUnitImplFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'PromotionProductUnit(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionProductUnitImpl &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionProductUnitImplCopyWith<_$PromotionProductUnitImpl>
      get copyWith =>
          __$$PromotionProductUnitImplCopyWithImpl<_$PromotionProductUnitImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionProductUnitImplToJson(
      this,
    );
  }
}

abstract class _PromotionProductUnit extends PromotionProductUnit {
  const factory _PromotionProductUnit(
      {final String label, final dynamic value}) = _$PromotionProductUnitImpl;
  const _PromotionProductUnit._() : super._();

  factory _PromotionProductUnit.fromJson(Map<String, dynamic> json) =
      _$PromotionProductUnitImpl.fromJson;

  @override
  String get label;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$PromotionProductUnitImplCopyWith<_$PromotionProductUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}
