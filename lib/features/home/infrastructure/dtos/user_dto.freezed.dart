// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  @JsonKey(name: "user_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone1 => throw _privateConstructorUsedError;
  String get phone2 => throw _privateConstructorUsedError;
  String get phone3 => throw _privateConstructorUsedError;
  String get phone4 => throw _privateConstructorUsedError;
  @JsonKey(name: "first_login")
  int get firstLogin => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "user_role_id")
  int get userRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_role_name')
  String get userRoleName => throw _privateConstructorUsedError;
  @JsonKey(name: "userInfo")
  List<SaleRankDTO> get saleRankDTOs => throw _privateConstructorUsedError;
  @JsonKey(name: "userAccessibleModules")
  List<ModuleDTO> get moduleDTOs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "username") String userName,
      String email,
      String phone1,
      String phone2,
      String phone3,
      String phone4,
      @JsonKey(name: "first_login") int firstLogin,
      int status,
      @JsonKey(name: "user_role_id") int userRoleId,
      @JsonKey(name: 'user_role_name') String userRoleName,
      @JsonKey(name: "userInfo") List<SaleRankDTO> saleRankDTOs,
      @JsonKey(name: "userAccessibleModules") List<ModuleDTO> moduleDTOs});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? userName = null,
    Object? email = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? phone3 = null,
    Object? phone4 = null,
    Object? firstLogin = null,
    Object? status = null,
    Object? userRoleId = null,
    Object? userRoleName = null,
    Object? saleRankDTOs = null,
    Object? moduleDTOs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: null == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String,
      phone3: null == phone3
          ? _value.phone3
          : phone3 // ignore: cast_nullable_to_non_nullable
              as String,
      phone4: null == phone4
          ? _value.phone4
          : phone4 // ignore: cast_nullable_to_non_nullable
              as String,
      firstLogin: null == firstLogin
          ? _value.firstLogin
          : firstLogin // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      userRoleId: null == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      userRoleName: null == userRoleName
          ? _value.userRoleName
          : userRoleName // ignore: cast_nullable_to_non_nullable
              as String,
      saleRankDTOs: null == saleRankDTOs
          ? _value.saleRankDTOs
          : saleRankDTOs // ignore: cast_nullable_to_non_nullable
              as List<SaleRankDTO>,
      moduleDTOs: null == moduleDTOs
          ? _value.moduleDTOs
          : moduleDTOs // ignore: cast_nullable_to_non_nullable
              as List<ModuleDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
          _$UserDTOImpl value, $Res Function(_$UserDTOImpl) then) =
      __$$UserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      @JsonKey(name: "username") String userName,
      String email,
      String phone1,
      String phone2,
      String phone3,
      String phone4,
      @JsonKey(name: "first_login") int firstLogin,
      int status,
      @JsonKey(name: "user_role_id") int userRoleId,
      @JsonKey(name: 'user_role_name') String userRoleName,
      @JsonKey(name: "userInfo") List<SaleRankDTO> saleRankDTOs,
      @JsonKey(name: "userAccessibleModules") List<ModuleDTO> moduleDTOs});
}

/// @nodoc
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
      _$UserDTOImpl _value, $Res Function(_$UserDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? userName = null,
    Object? email = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? phone3 = null,
    Object? phone4 = null,
    Object? firstLogin = null,
    Object? status = null,
    Object? userRoleId = null,
    Object? userRoleName = null,
    Object? saleRankDTOs = null,
    Object? moduleDTOs = null,
  }) {
    return _then(_$UserDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: null == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String,
      phone3: null == phone3
          ? _value.phone3
          : phone3 // ignore: cast_nullable_to_non_nullable
              as String,
      phone4: null == phone4
          ? _value.phone4
          : phone4 // ignore: cast_nullable_to_non_nullable
              as String,
      firstLogin: null == firstLogin
          ? _value.firstLogin
          : firstLogin // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      userRoleId: null == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      userRoleName: null == userRoleName
          ? _value.userRoleName
          : userRoleName // ignore: cast_nullable_to_non_nullable
              as String,
      saleRankDTOs: null == saleRankDTOs
          ? _value._saleRankDTOs
          : saleRankDTOs // ignore: cast_nullable_to_non_nullable
              as List<SaleRankDTO>,
      moduleDTOs: null == moduleDTOs
          ? _value._moduleDTOs
          : moduleDTOs // ignore: cast_nullable_to_non_nullable
              as List<ModuleDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOImpl extends _UserDTO {
  const _$UserDTOImpl(
      {@JsonKey(name: "user_id") this.id = -1,
      @JsonKey(name: "first_name") this.firstName = "",
      @JsonKey(name: "last_name") this.lastName = "",
      @JsonKey(name: "username") this.userName = "",
      this.email = "",
      this.phone1 = "",
      this.phone2 = "",
      this.phone3 = "",
      this.phone4 = "",
      @JsonKey(name: "first_login") this.firstLogin = -1,
      this.status = -1,
      @JsonKey(name: "user_role_id") this.userRoleId = -1,
      @JsonKey(name: 'user_role_name') this.userRoleName = '',
      @JsonKey(name: "userInfo")
      final List<SaleRankDTO> saleRankDTOs = const [],
      @JsonKey(name: "userAccessibleModules")
      final List<ModuleDTO> moduleDTOs = const []})
      : _saleRankDTOs = saleRankDTOs,
        _moduleDTOs = moduleDTOs,
        super._();

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int id;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  @JsonKey(name: "username")
  final String userName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone1;
  @override
  @JsonKey()
  final String phone2;
  @override
  @JsonKey()
  final String phone3;
  @override
  @JsonKey()
  final String phone4;
  @override
  @JsonKey(name: "first_login")
  final int firstLogin;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: "user_role_id")
  final int userRoleId;
  @override
  @JsonKey(name: 'user_role_name')
  final String userRoleName;
  final List<SaleRankDTO> _saleRankDTOs;
  @override
  @JsonKey(name: "userInfo")
  List<SaleRankDTO> get saleRankDTOs {
    if (_saleRankDTOs is EqualUnmodifiableListView) return _saleRankDTOs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleRankDTOs);
  }

  final List<ModuleDTO> _moduleDTOs;
  @override
  @JsonKey(name: "userAccessibleModules")
  List<ModuleDTO> get moduleDTOs {
    if (_moduleDTOs is EqualUnmodifiableListView) return _moduleDTOs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moduleDTOs);
  }

  @override
  String toString() {
    return 'UserDTO(id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone1: $phone1, phone2: $phone2, phone3: $phone3, phone4: $phone4, firstLogin: $firstLogin, status: $status, userRoleId: $userRoleId, userRoleName: $userRoleName, saleRankDTOs: $saleRankDTOs, moduleDTOs: $moduleDTOs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.phone3, phone3) || other.phone3 == phone3) &&
            (identical(other.phone4, phone4) || other.phone4 == phone4) &&
            (identical(other.firstLogin, firstLogin) ||
                other.firstLogin == firstLogin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.userRoleName, userRoleName) ||
                other.userRoleName == userRoleName) &&
            const DeepCollectionEquality()
                .equals(other._saleRankDTOs, _saleRankDTOs) &&
            const DeepCollectionEquality()
                .equals(other._moduleDTOs, _moduleDTOs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      userName,
      email,
      phone1,
      phone2,
      phone3,
      phone4,
      firstLogin,
      status,
      userRoleId,
      userRoleName,
      const DeepCollectionEquality().hash(_saleRankDTOs),
      const DeepCollectionEquality().hash(_moduleDTOs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(
      this,
    );
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@JsonKey(name: "user_id") final int id,
      @JsonKey(name: "first_name") final String firstName,
      @JsonKey(name: "last_name") final String lastName,
      @JsonKey(name: "username") final String userName,
      final String email,
      final String phone1,
      final String phone2,
      final String phone3,
      final String phone4,
      @JsonKey(name: "first_login") final int firstLogin,
      final int status,
      @JsonKey(name: "user_role_id") final int userRoleId,
      @JsonKey(name: 'user_role_name') final String userRoleName,
      @JsonKey(name: "userInfo") final List<SaleRankDTO> saleRankDTOs,
      @JsonKey(name: "userAccessibleModules")
      final List<ModuleDTO> moduleDTOs}) = _$UserDTOImpl;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get id;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  @JsonKey(name: "username")
  String get userName;
  @override
  String get email;
  @override
  String get phone1;
  @override
  String get phone2;
  @override
  String get phone3;
  @override
  String get phone4;
  @override
  @JsonKey(name: "first_login")
  int get firstLogin;
  @override
  int get status;
  @override
  @JsonKey(name: "user_role_id")
  int get userRoleId;
  @override
  @JsonKey(name: 'user_role_name')
  String get userRoleName;
  @override
  @JsonKey(name: "userInfo")
  List<SaleRankDTO> get saleRankDTOs;
  @override
  @JsonKey(name: "userAccessibleModules")
  List<ModuleDTO> get moduleDTOs;
  @override
  @JsonKey(ignore: true)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
