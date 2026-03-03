// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripName {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripNameCopyWith<TripName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripNameCopyWith<$Res> {
  factory $TripNameCopyWith(TripName value, $Res Function(TripName) then) =
      _$TripNameCopyWithImpl<$Res, TripName>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TripNameCopyWithImpl<$Res, $Val extends TripName>
    implements $TripNameCopyWith<$Res> {
  _$TripNameCopyWithImpl(this._value, this._then);

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
abstract class _$$TripNameImplCopyWith<$Res>
    implements $TripNameCopyWith<$Res> {
  factory _$$TripNameImplCopyWith(
          _$TripNameImpl value, $Res Function(_$TripNameImpl) then) =
      __$$TripNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TripNameImplCopyWithImpl<$Res>
    extends _$TripNameCopyWithImpl<$Res, _$TripNameImpl>
    implements _$$TripNameImplCopyWith<$Res> {
  __$$TripNameImplCopyWithImpl(
      _$TripNameImpl _value, $Res Function(_$TripNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TripNameImpl(
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

class _$TripNameImpl implements _TripName {
  const _$TripNameImpl({this.id = -1, this.name = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'TripName(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripNameImplCopyWith<_$TripNameImpl> get copyWith =>
      __$$TripNameImplCopyWithImpl<_$TripNameImpl>(this, _$identity);
}

abstract class _TripName implements TripName {
  const factory _TripName({final int id, final String name}) = _$TripNameImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TripNameImplCopyWith<_$TripNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
