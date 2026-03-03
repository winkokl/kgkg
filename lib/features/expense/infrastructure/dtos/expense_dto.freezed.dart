// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseDTO _$ExpenseDTOFromJson(Map<String, dynamic> json) {
  return _ExpenseDTO.fromJson(json);
}

/// @nodoc
mixin _$ExpenseDTO {
  @JsonKey(name: "user_expense_id", includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "user_expense_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name", includeToJson: false)
  String get userFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name", includeToJson: false)
  String get userLastName => throw _privateConstructorUsedError;
  @JsonKey(name: "username", includeToJson: false)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "expense_type_id")
  int get expenseTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "expense_type_name", includeToJson: false)
  String get expenseTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "status", includeToJson: false)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "expense_amount")
  double get requestAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_expense_amount", includeToJson: false)
  double get expenseAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "reject_reason", includeToJson: false)
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseDTOCopyWith<ExpenseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseDTOCopyWith<$Res> {
  factory $ExpenseDTOCopyWith(
          ExpenseDTO value, $Res Function(ExpenseDTO) then) =
      _$ExpenseDTOCopyWithImpl<$Res, ExpenseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_expense_id", includeToJson: false) int id,
      String date,
      @JsonKey(name: "user_expense_code", includeToJson: false) String code,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "first_name", includeToJson: false) String userFirstName,
      @JsonKey(name: "last_name", includeToJson: false) String userLastName,
      @JsonKey(name: "username", includeToJson: false) String username,
      @JsonKey(name: "expense_type_id") int expenseTypeId,
      @JsonKey(name: "expense_type_name", includeToJson: false)
      String expenseTypeName,
      @JsonKey(name: "status", includeToJson: false) int status,
      @JsonKey(name: "expense_amount") double requestAmount,
      @JsonKey(name: "allow_expense_amount", includeToJson: false)
      double expenseAmount,
      @JsonKey(name: "reject_reason", includeToJson: false) String reason,
      @JsonKey(includeToJson: false) String remark,
      String description});
}

/// @nodoc
class _$ExpenseDTOCopyWithImpl<$Res, $Val extends ExpenseDTO>
    implements $ExpenseDTOCopyWith<$Res> {
  _$ExpenseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? code = null,
    Object? userId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? username = null,
    Object? expenseTypeId = null,
    Object? expenseTypeName = null,
    Object? status = null,
    Object? requestAmount = null,
    Object? expenseAmount = null,
    Object? reason = null,
    Object? remark = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      expenseTypeId: null == expenseTypeId
          ? _value.expenseTypeId
          : expenseTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseTypeName: null == expenseTypeName
          ? _value.expenseTypeName
          : expenseTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requestAmount: null == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseDTOImplCopyWith<$Res>
    implements $ExpenseDTOCopyWith<$Res> {
  factory _$$ExpenseDTOImplCopyWith(
          _$ExpenseDTOImpl value, $Res Function(_$ExpenseDTOImpl) then) =
      __$$ExpenseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_expense_id", includeToJson: false) int id,
      String date,
      @JsonKey(name: "user_expense_code", includeToJson: false) String code,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "first_name", includeToJson: false) String userFirstName,
      @JsonKey(name: "last_name", includeToJson: false) String userLastName,
      @JsonKey(name: "username", includeToJson: false) String username,
      @JsonKey(name: "expense_type_id") int expenseTypeId,
      @JsonKey(name: "expense_type_name", includeToJson: false)
      String expenseTypeName,
      @JsonKey(name: "status", includeToJson: false) int status,
      @JsonKey(name: "expense_amount") double requestAmount,
      @JsonKey(name: "allow_expense_amount", includeToJson: false)
      double expenseAmount,
      @JsonKey(name: "reject_reason", includeToJson: false) String reason,
      @JsonKey(includeToJson: false) String remark,
      String description});
}

/// @nodoc
class __$$ExpenseDTOImplCopyWithImpl<$Res>
    extends _$ExpenseDTOCopyWithImpl<$Res, _$ExpenseDTOImpl>
    implements _$$ExpenseDTOImplCopyWith<$Res> {
  __$$ExpenseDTOImplCopyWithImpl(
      _$ExpenseDTOImpl _value, $Res Function(_$ExpenseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? code = null,
    Object? userId = null,
    Object? userFirstName = null,
    Object? userLastName = null,
    Object? username = null,
    Object? expenseTypeId = null,
    Object? expenseTypeName = null,
    Object? status = null,
    Object? requestAmount = null,
    Object? expenseAmount = null,
    Object? reason = null,
    Object? remark = null,
    Object? description = null,
  }) {
    return _then(_$ExpenseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userFirstName: null == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      userLastName: null == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      expenseTypeId: null == expenseTypeId
          ? _value.expenseTypeId
          : expenseTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseTypeName: null == expenseTypeName
          ? _value.expenseTypeName
          : expenseTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requestAmount: null == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDTOImpl extends _ExpenseDTO {
  const _$ExpenseDTOImpl(
      {@JsonKey(name: "user_expense_id", includeToJson: false) this.id = -1,
      this.date = "",
      @JsonKey(name: "user_expense_code", includeToJson: false) this.code = "",
      @JsonKey(name: "user_id") this.userId = -1,
      @JsonKey(name: "first_name", includeToJson: false)
      this.userFirstName = "",
      @JsonKey(name: "last_name", includeToJson: false) this.userLastName = "",
      @JsonKey(name: "username", includeToJson: false) this.username = "",
      @JsonKey(name: "expense_type_id") this.expenseTypeId = -1,
      @JsonKey(name: "expense_type_name", includeToJson: false)
      this.expenseTypeName = "",
      @JsonKey(name: "status", includeToJson: false) this.status = -1,
      @JsonKey(name: "expense_amount") this.requestAmount = 0,
      @JsonKey(name: "allow_expense_amount", includeToJson: false)
      this.expenseAmount = 0,
      @JsonKey(name: "reject_reason", includeToJson: false) this.reason = "",
      @JsonKey(includeToJson: false) this.remark = "",
      this.description = ""})
      : super._();

  factory _$ExpenseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseDTOImplFromJson(json);

  @override
  @JsonKey(name: "user_expense_id", includeToJson: false)
  final int id;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey(name: "user_expense_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "first_name", includeToJson: false)
  final String userFirstName;
  @override
  @JsonKey(name: "last_name", includeToJson: false)
  final String userLastName;
  @override
  @JsonKey(name: "username", includeToJson: false)
  final String username;
  @override
  @JsonKey(name: "expense_type_id")
  final int expenseTypeId;
  @override
  @JsonKey(name: "expense_type_name", includeToJson: false)
  final String expenseTypeName;
  @override
  @JsonKey(name: "status", includeToJson: false)
  final int status;
  @override
  @JsonKey(name: "expense_amount")
  final double requestAmount;
  @override
  @JsonKey(name: "allow_expense_amount", includeToJson: false)
  final double expenseAmount;
  @override
  @JsonKey(name: "reject_reason", includeToJson: false)
  final String reason;
  @override
  @JsonKey(includeToJson: false)
  final String remark;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ExpenseDTO(id: $id, date: $date, code: $code, userId: $userId, userFirstName: $userFirstName, userLastName: $userLastName, username: $username, expenseTypeId: $expenseTypeId, expenseTypeName: $expenseTypeName, status: $status, requestAmount: $requestAmount, expenseAmount: $expenseAmount, reason: $reason, remark: $remark, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.expenseTypeId, expenseTypeId) ||
                other.expenseTypeId == expenseTypeId) &&
            (identical(other.expenseTypeName, expenseTypeName) ||
                other.expenseTypeName == expenseTypeName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestAmount, requestAmount) ||
                other.requestAmount == requestAmount) &&
            (identical(other.expenseAmount, expenseAmount) ||
                other.expenseAmount == expenseAmount) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      code,
      userId,
      userFirstName,
      userLastName,
      username,
      expenseTypeId,
      expenseTypeName,
      status,
      requestAmount,
      expenseAmount,
      reason,
      remark,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseDTOImplCopyWith<_$ExpenseDTOImpl> get copyWith =>
      __$$ExpenseDTOImplCopyWithImpl<_$ExpenseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDTOImplToJson(
      this,
    );
  }
}

abstract class _ExpenseDTO extends ExpenseDTO {
  const factory _ExpenseDTO(
      {@JsonKey(name: "user_expense_id", includeToJson: false) final int id,
      final String date,
      @JsonKey(name: "user_expense_code", includeToJson: false)
      final String code,
      @JsonKey(name: "user_id") final int userId,
      @JsonKey(name: "first_name", includeToJson: false)
      final String userFirstName,
      @JsonKey(name: "last_name", includeToJson: false)
      final String userLastName,
      @JsonKey(name: "username", includeToJson: false) final String username,
      @JsonKey(name: "expense_type_id") final int expenseTypeId,
      @JsonKey(name: "expense_type_name", includeToJson: false)
      final String expenseTypeName,
      @JsonKey(name: "status", includeToJson: false) final int status,
      @JsonKey(name: "expense_amount") final double requestAmount,
      @JsonKey(name: "allow_expense_amount", includeToJson: false)
      final double expenseAmount,
      @JsonKey(name: "reject_reason", includeToJson: false) final String reason,
      @JsonKey(includeToJson: false) final String remark,
      final String description}) = _$ExpenseDTOImpl;
  const _ExpenseDTO._() : super._();

  factory _ExpenseDTO.fromJson(Map<String, dynamic> json) =
      _$ExpenseDTOImpl.fromJson;

  @override
  @JsonKey(name: "user_expense_id", includeToJson: false)
  int get id;
  @override
  String get date;
  @override
  @JsonKey(name: "user_expense_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "first_name", includeToJson: false)
  String get userFirstName;
  @override
  @JsonKey(name: "last_name", includeToJson: false)
  String get userLastName;
  @override
  @JsonKey(name: "username", includeToJson: false)
  String get username;
  @override
  @JsonKey(name: "expense_type_id")
  int get expenseTypeId;
  @override
  @JsonKey(name: "expense_type_name", includeToJson: false)
  String get expenseTypeName;
  @override
  @JsonKey(name: "status", includeToJson: false)
  int get status;
  @override
  @JsonKey(name: "expense_amount")
  double get requestAmount;
  @override
  @JsonKey(name: "allow_expense_amount", includeToJson: false)
  double get expenseAmount;
  @override
  @JsonKey(name: "reject_reason", includeToJson: false)
  String get reason;
  @override
  @JsonKey(includeToJson: false)
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDTOImplCopyWith<_$ExpenseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
