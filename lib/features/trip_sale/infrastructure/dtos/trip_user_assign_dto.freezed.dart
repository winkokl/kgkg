// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_user_assign_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripUserAssignDTO _$TripUserAssignDTOFromJson(Map<String, dynamic> json) {
  return _TripUserAssignDTO.fromJson(json);
}

/// @nodoc
mixin _$TripUserAssignDTO {
  @JsonKey(name: "user_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "user_role_name")
  String get role => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "way_list")
  List<TripNameDTO> get tripdtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripUserAssignDTOCopyWith<TripUserAssignDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripUserAssignDTOCopyWith<$Res> {
  factory $TripUserAssignDTOCopyWith(
          TripUserAssignDTO value, $Res Function(TripUserAssignDTO) then) =
      _$TripUserAssignDTOCopyWithImpl<$Res, TripUserAssignDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int id,
      @JsonKey(name: "username") String userName,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_role_name") String role,
      String description,
      @JsonKey(name: "way_list") List<TripNameDTO> tripdtos});
}

/// @nodoc
class _$TripUserAssignDTOCopyWithImpl<$Res, $Val extends TripUserAssignDTO>
    implements $TripUserAssignDTOCopyWith<$Res> {
  _$TripUserAssignDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? description = null,
    Object? tripdtos = null,
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      tripdtos: null == tripdtos
          ? _value.tripdtos
          : tripdtos // ignore: cast_nullable_to_non_nullable
              as List<TripNameDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripUserAssignDTOImplCopyWith<$Res>
    implements $TripUserAssignDTOCopyWith<$Res> {
  factory _$$TripUserAssignDTOImplCopyWith(_$TripUserAssignDTOImpl value,
          $Res Function(_$TripUserAssignDTOImpl) then) =
      __$$TripUserAssignDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int id,
      @JsonKey(name: "username") String userName,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_role_name") String role,
      String description,
      @JsonKey(name: "way_list") List<TripNameDTO> tripdtos});
}

/// @nodoc
class __$$TripUserAssignDTOImplCopyWithImpl<$Res>
    extends _$TripUserAssignDTOCopyWithImpl<$Res, _$TripUserAssignDTOImpl>
    implements _$$TripUserAssignDTOImplCopyWith<$Res> {
  __$$TripUserAssignDTOImplCopyWithImpl(_$TripUserAssignDTOImpl _value,
      $Res Function(_$TripUserAssignDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? description = null,
    Object? tripdtos = null,
  }) {
    return _then(_$TripUserAssignDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      tripdtos: null == tripdtos
          ? _value._tripdtos
          : tripdtos // ignore: cast_nullable_to_non_nullable
              as List<TripNameDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripUserAssignDTOImpl extends _TripUserAssignDTO {
  const _$TripUserAssignDTOImpl(
      {@JsonKey(name: "user_id") this.id = -1,
      @JsonKey(name: "username") this.userName = "",
      @JsonKey(name: "first_name") this.firstName = "",
      @JsonKey(name: "last_name") this.lastName = "",
      @JsonKey(name: "phone_number") this.phoneNumber = "",
      @JsonKey(name: "user_role_name") this.role = "",
      this.description = "",
      @JsonKey(name: "way_list") final List<TripNameDTO> tripdtos = const []})
      : _tripdtos = tripdtos,
        super._();

  factory _$TripUserAssignDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripUserAssignDTOImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int id;
  @override
  @JsonKey(name: "username")
  final String userName;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "user_role_name")
  final String role;
  @override
  @JsonKey()
  final String description;
  final List<TripNameDTO> _tripdtos;
  @override
  @JsonKey(name: "way_list")
  List<TripNameDTO> get tripdtos {
    if (_tripdtos is EqualUnmodifiableListView) return _tripdtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripdtos);
  }

  @override
  String toString() {
    return 'TripUserAssignDTO(id: $id, userName: $userName, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, role: $role, description: $description, tripdtos: $tripdtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripUserAssignDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tripdtos, _tripdtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      firstName,
      lastName,
      phoneNumber,
      role,
      description,
      const DeepCollectionEquality().hash(_tripdtos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripUserAssignDTOImplCopyWith<_$TripUserAssignDTOImpl> get copyWith =>
      __$$TripUserAssignDTOImplCopyWithImpl<_$TripUserAssignDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripUserAssignDTOImplToJson(
      this,
    );
  }
}

abstract class _TripUserAssignDTO extends TripUserAssignDTO {
  const factory _TripUserAssignDTO(
          {@JsonKey(name: "user_id") final int id,
          @JsonKey(name: "username") final String userName,
          @JsonKey(name: "first_name") final String firstName,
          @JsonKey(name: "last_name") final String lastName,
          @JsonKey(name: "phone_number") final String phoneNumber,
          @JsonKey(name: "user_role_name") final String role,
          final String description,
          @JsonKey(name: "way_list") final List<TripNameDTO> tripdtos}) =
      _$TripUserAssignDTOImpl;
  const _TripUserAssignDTO._() : super._();

  factory _TripUserAssignDTO.fromJson(Map<String, dynamic> json) =
      _$TripUserAssignDTOImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get id;
  @override
  @JsonKey(name: "username")
  String get userName;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "user_role_name")
  String get role;
  @override
  String get description;
  @override
  @JsonKey(name: "way_list")
  List<TripNameDTO> get tripdtos;
  @override
  @JsonKey(ignore: true)
  _$$TripUserAssignDTOImplCopyWith<_$TripUserAssignDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
