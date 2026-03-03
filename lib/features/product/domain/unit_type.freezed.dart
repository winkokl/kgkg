// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnitType {
  int get id => throw _privateConstructorUsedError;
  int get baseQty => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitTypeCopyWith<UnitType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypeCopyWith<$Res> {
  factory $UnitTypeCopyWith(UnitType value, $Res Function(UnitType) then) =
      _$UnitTypeCopyWithImpl<$Res, UnitType>;
  @useResult
  $Res call({int id, int baseQty, String name});
}

/// @nodoc
class _$UnitTypeCopyWithImpl<$Res, $Val extends UnitType>
    implements $UnitTypeCopyWith<$Res> {
  _$UnitTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseQty = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      baseQty: null == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitTypeImplCopyWith<$Res>
    implements $UnitTypeCopyWith<$Res> {
  factory _$$UnitTypeImplCopyWith(
          _$UnitTypeImpl value, $Res Function(_$UnitTypeImpl) then) =
      __$$UnitTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int baseQty, String name});
}

/// @nodoc
class __$$UnitTypeImplCopyWithImpl<$Res>
    extends _$UnitTypeCopyWithImpl<$Res, _$UnitTypeImpl>
    implements _$$UnitTypeImplCopyWith<$Res> {
  __$$UnitTypeImplCopyWithImpl(
      _$UnitTypeImpl _value, $Res Function(_$UnitTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseQty = null,
    Object? name = null,
  }) {
    return _then(_$UnitTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      baseQty: null == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnitTypeImpl implements _UnitType {
  const _$UnitTypeImpl({this.id = -1, this.baseQty = 0, this.name = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int baseQty;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'UnitType(id: $id, baseQty: $baseQty, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.baseQty, baseQty) || other.baseQty == baseQty) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, baseQty, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitTypeImplCopyWith<_$UnitTypeImpl> get copyWith =>
      __$$UnitTypeImplCopyWithImpl<_$UnitTypeImpl>(this, _$identity);
}

abstract class _UnitType implements UnitType {
  const factory _UnitType(
      {final int id, final int baseQty, final String name}) = _$UnitTypeImpl;

  @override
  int get id;
  @override
  int get baseQty;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UnitTypeImplCopyWith<_$UnitTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
