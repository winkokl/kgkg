// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone1 => throw _privateConstructorUsedError;
  String get phone2 => throw _privateConstructorUsedError;
  String get phone3 => throw _privateConstructorUsedError;
  String get phone4 => throw _privateConstructorUsedError;
  bool get firstLogin => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  SaleRank get saleRank => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String userName,
      String email,
      String phone1,
      String phone2,
      String phone3,
      String phone4,
      bool firstLogin,
      bool status,
      int roleId,
      String role,
      SaleRank saleRank,
      List<Module> modules});

  $SaleRankCopyWith<$Res> get saleRank;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
    Object? email = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? phone3 = null,
    Object? phone4 = null,
    Object? firstLogin = null,
    Object? status = null,
    Object? roleId = null,
    Object? role = null,
    Object? saleRank = null,
    Object? modules = null,
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
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      saleRank: null == saleRank
          ? _value.saleRank
          : saleRank // ignore: cast_nullable_to_non_nullable
              as SaleRank,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleRankCopyWith<$Res> get saleRank {
    return $SaleRankCopyWith<$Res>(_value.saleRank, (value) {
      return _then(_value.copyWith(saleRank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String userName,
      String email,
      String phone1,
      String phone2,
      String phone3,
      String phone4,
      bool firstLogin,
      bool status,
      int roleId,
      String role,
      SaleRank saleRank,
      List<Module> modules});

  @override
  $SaleRankCopyWith<$Res> get saleRank;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
    Object? email = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? phone3 = null,
    Object? phone4 = null,
    Object? firstLogin = null,
    Object? status = null,
    Object? roleId = null,
    Object? role = null,
    Object? saleRank = null,
    Object? modules = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      saleRank: null == saleRank
          ? _value.saleRank
          : saleRank // ignore: cast_nullable_to_non_nullable
              as SaleRank,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id = -1,
      this.name = "",
      this.userName = "",
      this.email = "",
      this.phone1 = "",
      this.phone2 = "",
      this.phone3 = "",
      this.phone4 = "",
      this.firstLogin = false,
      this.status = false,
      this.roleId = -1,
      this.role = '',
      this.saleRank = const SaleRank(),
      final List<Module> modules = const []})
      : _modules = modules;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
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
  @JsonKey()
  final bool firstLogin;
  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final int roleId;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final SaleRank saleRank;
  final List<Module> _modules;
  @override
  @JsonKey()
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, email: $email, phone1: $phone1, phone2: $phone2, phone3: $phone3, phone4: $phone4, firstLogin: $firstLogin, status: $status, roleId: $roleId, role: $role, saleRank: $saleRank, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.saleRank, saleRank) ||
                other.saleRank == saleRank) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      userName,
      email,
      phone1,
      phone2,
      phone3,
      phone4,
      firstLogin,
      status,
      roleId,
      role,
      saleRank,
      const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {final int id,
      final String name,
      final String userName,
      final String email,
      final String phone1,
      final String phone2,
      final String phone3,
      final String phone4,
      final bool firstLogin,
      final bool status,
      final int roleId,
      final String role,
      final SaleRank saleRank,
      final List<Module> modules}) = _$UserImpl;

  @override
  int get id;
  @override
  String get name;
  @override
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
  bool get firstLogin;
  @override
  bool get status;
  @override
  int get roleId;
  @override
  String get role;
  @override
  SaleRank get saleRank;
  @override
  List<Module> get modules;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
