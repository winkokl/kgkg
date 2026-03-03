// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_user_assign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripUserAssign {
  int get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TripName> get trips => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripUserAssignCopyWith<TripUserAssign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripUserAssignCopyWith<$Res> {
  factory $TripUserAssignCopyWith(
          TripUserAssign value, $Res Function(TripUserAssign) then) =
      _$TripUserAssignCopyWithImpl<$Res, TripUserAssign>;
  @useResult
  $Res call(
      {int id,
      String userName,
      String name,
      String phoneNumber,
      String role,
      String description,
      List<TripName> trips});
}

/// @nodoc
class _$TripUserAssignCopyWithImpl<$Res, $Val extends TripUserAssign>
    implements $TripUserAssignCopyWith<$Res> {
  _$TripUserAssignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? description = null,
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripName>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripUserAssignImplCopyWith<$Res>
    implements $TripUserAssignCopyWith<$Res> {
  factory _$$TripUserAssignImplCopyWith(_$TripUserAssignImpl value,
          $Res Function(_$TripUserAssignImpl) then) =
      __$$TripUserAssignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userName,
      String name,
      String phoneNumber,
      String role,
      String description,
      List<TripName> trips});
}

/// @nodoc
class __$$TripUserAssignImplCopyWithImpl<$Res>
    extends _$TripUserAssignCopyWithImpl<$Res, _$TripUserAssignImpl>
    implements _$$TripUserAssignImplCopyWith<$Res> {
  __$$TripUserAssignImplCopyWithImpl(
      _$TripUserAssignImpl _value, $Res Function(_$TripUserAssignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? description = null,
    Object? trips = null,
  }) {
    return _then(_$TripUserAssignImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripName>,
    ));
  }
}

/// @nodoc

class _$TripUserAssignImpl implements _TripUserAssign {
  const _$TripUserAssignImpl(
      {this.id = -1,
      this.userName = "",
      this.name = "",
      this.phoneNumber = "",
      this.role = "",
      this.description = "",
      final List<TripName> trips = const []})
      : _trips = trips;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String description;
  final List<TripName> _trips;
  @override
  @JsonKey()
  List<TripName> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  String toString() {
    return 'TripUserAssign(id: $id, userName: $userName, name: $name, phoneNumber: $phoneNumber, role: $role, description: $description, trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripUserAssignImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userName, name, phoneNumber,
      role, description, const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripUserAssignImplCopyWith<_$TripUserAssignImpl> get copyWith =>
      __$$TripUserAssignImplCopyWithImpl<_$TripUserAssignImpl>(
          this, _$identity);
}

abstract class _TripUserAssign implements TripUserAssign {
  const factory _TripUserAssign(
      {final int id,
      final String userName,
      final String name,
      final String phoneNumber,
      final String role,
      final String description,
      final List<TripName> trips}) = _$TripUserAssignImpl;

  @override
  int get id;
  @override
  String get userName;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get role;
  @override
  String get description;
  @override
  List<TripName> get trips;
  @override
  @JsonKey(ignore: true)
  _$$TripUserAssignImplCopyWith<_$TripUserAssignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
