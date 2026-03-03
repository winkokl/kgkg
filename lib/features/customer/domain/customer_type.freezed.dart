// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerTypeCopyWith<CustomerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTypeCopyWith<$Res> {
  factory $CustomerTypeCopyWith(
          CustomerType value, $Res Function(CustomerType) then) =
      _$CustomerTypeCopyWithImpl<$Res, CustomerType>;
  @useResult
  $Res call({int id, String name, int status});
}

/// @nodoc
class _$CustomerTypeCopyWithImpl<$Res, $Val extends CustomerType>
    implements $CustomerTypeCopyWith<$Res> {
  _$CustomerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTypeImplCopyWith<$Res>
    implements $CustomerTypeCopyWith<$Res> {
  factory _$$CustomerTypeImplCopyWith(
          _$CustomerTypeImpl value, $Res Function(_$CustomerTypeImpl) then) =
      __$$CustomerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int status});
}

/// @nodoc
class __$$CustomerTypeImplCopyWithImpl<$Res>
    extends _$CustomerTypeCopyWithImpl<$Res, _$CustomerTypeImpl>
    implements _$$CustomerTypeImplCopyWith<$Res> {
  __$$CustomerTypeImplCopyWithImpl(
      _$CustomerTypeImpl _value, $Res Function(_$CustomerTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$CustomerTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomerTypeImpl implements _CustomerType {
  const _$CustomerTypeImpl({this.id = -1, this.name = "", this.status = -1});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'CustomerType(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTypeImplCopyWith<_$CustomerTypeImpl> get copyWith =>
      __$$CustomerTypeImplCopyWithImpl<_$CustomerTypeImpl>(this, _$identity);
}

abstract class _CustomerType implements CustomerType {
  const factory _CustomerType(
      {final int id, final String name, final int status}) = _$CustomerTypeImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$CustomerTypeImplCopyWith<_$CustomerTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
