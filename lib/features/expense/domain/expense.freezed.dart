// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expense {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  ExpenseStatus get status => throw _privateConstructorUsedError;
  ExpenseType get type => throw _privateConstructorUsedError;
  double get requestAmount => throw _privateConstructorUsedError;
  double get expenseAmount => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {int id,
      String date,
      String code,
      User user,
      ExpenseStatus status,
      ExpenseType type,
      double requestAmount,
      double expenseAmount,
      double amount,
      String reason,
      String remark,
      String description});

  $UserCopyWith<$Res> get user;
  $ExpenseTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

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
    Object? user = null,
    Object? status = null,
    Object? type = null,
    Object? requestAmount = null,
    Object? expenseAmount = null,
    Object? amount = null,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      requestAmount: null == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseTypeCopyWith<$Res> get type {
    return $ExpenseTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseImplCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$ExpenseImplCopyWith(
          _$ExpenseImpl value, $Res Function(_$ExpenseImpl) then) =
      __$$ExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      String code,
      User user,
      ExpenseStatus status,
      ExpenseType type,
      double requestAmount,
      double expenseAmount,
      double amount,
      String reason,
      String remark,
      String description});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $ExpenseTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$ExpenseImpl>
    implements _$$ExpenseImplCopyWith<$Res> {
  __$$ExpenseImplCopyWithImpl(
      _$ExpenseImpl _value, $Res Function(_$ExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? code = null,
    Object? user = null,
    Object? status = null,
    Object? type = null,
    Object? requestAmount = null,
    Object? expenseAmount = null,
    Object? amount = null,
    Object? reason = null,
    Object? remark = null,
    Object? description = null,
  }) {
    return _then(_$ExpenseImpl(
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      requestAmount: null == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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

class _$ExpenseImpl implements _Expense {
  const _$ExpenseImpl(
      {this.id = -1,
      this.date = "",
      this.code = "",
      this.user = const User(),
      this.status = ExpenseStatus.pending,
      this.type = const ExpenseType(),
      this.requestAmount = 0,
      this.expenseAmount = 0,
      this.amount = 0,
      this.reason = "",
      this.remark = "",
      this.description = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final ExpenseStatus status;
  @override
  @JsonKey()
  final ExpenseType type;
  @override
  @JsonKey()
  final double requestAmount;
  @override
  @JsonKey()
  final double expenseAmount;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'Expense(id: $id, date: $date, code: $code, user: $user, status: $status, type: $type, requestAmount: $requestAmount, expenseAmount: $expenseAmount, amount: $amount, reason: $reason, remark: $remark, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requestAmount, requestAmount) ||
                other.requestAmount == requestAmount) &&
            (identical(other.expenseAmount, expenseAmount) ||
                other.expenseAmount == expenseAmount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, code, user, status,
      type, requestAmount, expenseAmount, amount, reason, remark, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      __$$ExpenseImplCopyWithImpl<_$ExpenseImpl>(this, _$identity);
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {final int id,
      final String date,
      final String code,
      final User user,
      final ExpenseStatus status,
      final ExpenseType type,
      final double requestAmount,
      final double expenseAmount,
      final double amount,
      final String reason,
      final String remark,
      final String description}) = _$ExpenseImpl;

  @override
  int get id;
  @override
  String get date;
  @override
  String get code;
  @override
  User get user;
  @override
  ExpenseStatus get status;
  @override
  ExpenseType get type;
  @override
  double get requestAmount;
  @override
  double get expenseAmount;
  @override
  double get amount;
  @override
  String get reason;
  @override
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
