// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCategoryCopyWith<CustomerCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCategoryCopyWith<$Res> {
  factory $CustomerCategoryCopyWith(
          CustomerCategory value, $Res Function(CustomerCategory) then) =
      _$CustomerCategoryCopyWithImpl<$Res, CustomerCategory>;
  @useResult
  $Res call({int id, String name, int status});
}

/// @nodoc
class _$CustomerCategoryCopyWithImpl<$Res, $Val extends CustomerCategory>
    implements $CustomerCategoryCopyWith<$Res> {
  _$CustomerCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$CustomerCategoryImplCopyWith<$Res>
    implements $CustomerCategoryCopyWith<$Res> {
  factory _$$CustomerCategoryImplCopyWith(_$CustomerCategoryImpl value,
          $Res Function(_$CustomerCategoryImpl) then) =
      __$$CustomerCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int status});
}

/// @nodoc
class __$$CustomerCategoryImplCopyWithImpl<$Res>
    extends _$CustomerCategoryCopyWithImpl<$Res, _$CustomerCategoryImpl>
    implements _$$CustomerCategoryImplCopyWith<$Res> {
  __$$CustomerCategoryImplCopyWithImpl(_$CustomerCategoryImpl _value,
      $Res Function(_$CustomerCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$CustomerCategoryImpl(
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

class _$CustomerCategoryImpl implements _CustomerCategory {
  const _$CustomerCategoryImpl(
      {this.id = -1, this.name = "", this.status = -1});

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
    return 'CustomerCategory(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCategoryImplCopyWith<_$CustomerCategoryImpl> get copyWith =>
      __$$CustomerCategoryImplCopyWithImpl<_$CustomerCategoryImpl>(
          this, _$identity);
}

abstract class _CustomerCategory implements CustomerCategory {
  const factory _CustomerCategory(
      {final int id,
      final String name,
      final int status}) = _$CustomerCategoryImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$CustomerCategoryImplCopyWith<_$CustomerCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
