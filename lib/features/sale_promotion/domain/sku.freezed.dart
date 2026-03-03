// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Sku {
  String get label => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkuCopyWith<Sku> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkuCopyWith<$Res> {
  factory $SkuCopyWith(Sku value, $Res Function(Sku) then) =
      _$SkuCopyWithImpl<$Res, Sku>;
  @useResult
  $Res call({String label, int value});
}

/// @nodoc
class _$SkuCopyWithImpl<$Res, $Val extends Sku> implements $SkuCopyWith<$Res> {
  _$SkuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkuImplCopyWith<$Res> implements $SkuCopyWith<$Res> {
  factory _$$SkuImplCopyWith(_$SkuImpl value, $Res Function(_$SkuImpl) then) =
      __$$SkuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int value});
}

/// @nodoc
class __$$SkuImplCopyWithImpl<$Res> extends _$SkuCopyWithImpl<$Res, _$SkuImpl>
    implements _$$SkuImplCopyWith<$Res> {
  __$$SkuImplCopyWithImpl(_$SkuImpl _value, $Res Function(_$SkuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$SkuImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SkuImpl implements _Sku {
  const _$SkuImpl({this.label = "", this.value = -1});

  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'Sku(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkuImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkuImplCopyWith<_$SkuImpl> get copyWith =>
      __$$SkuImplCopyWithImpl<_$SkuImpl>(this, _$identity);
}

abstract class _Sku implements Sku {
  const factory _Sku({final String label, final int value}) = _$SkuImpl;

  @override
  String get label;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$SkuImplCopyWith<_$SkuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
