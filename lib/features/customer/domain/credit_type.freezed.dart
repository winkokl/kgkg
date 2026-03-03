// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditTypeCopyWith<CreditType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditTypeCopyWith<$Res> {
  factory $CreditTypeCopyWith(
          CreditType value, $Res Function(CreditType) then) =
      _$CreditTypeCopyWithImpl<$Res, CreditType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CreditTypeCopyWithImpl<$Res, $Val extends CreditType>
    implements $CreditTypeCopyWith<$Res> {
  _$CreditTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditTypeImplCopyWith<$Res>
    implements $CreditTypeCopyWith<$Res> {
  factory _$$CreditTypeImplCopyWith(
          _$CreditTypeImpl value, $Res Function(_$CreditTypeImpl) then) =
      __$$CreditTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CreditTypeImplCopyWithImpl<$Res>
    extends _$CreditTypeCopyWithImpl<$Res, _$CreditTypeImpl>
    implements _$$CreditTypeImplCopyWith<$Res> {
  __$$CreditTypeImplCopyWithImpl(
      _$CreditTypeImpl _value, $Res Function(_$CreditTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CreditTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreditTypeImpl implements _CreditType {
  const _$CreditTypeImpl({this.id = -1, this.name = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CreditType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditTypeImplCopyWith<_$CreditTypeImpl> get copyWith =>
      __$$CreditTypeImplCopyWithImpl<_$CreditTypeImpl>(this, _$identity);
}

abstract class _CreditType implements CreditType {
  const factory _CreditType({final int id, final String name}) =
      _$CreditTypeImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreditTypeImplCopyWith<_$CreditTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
