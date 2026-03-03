// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReturnReceipt _$ReturnReceiptFromJson(Map<String, dynamic> json) {
  return _ReturnReceipt.fromJson(json);
}

/// @nodoc
mixin _$ReturnReceipt {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "marketing_promotion_plan_return_id")
  int get planReturnId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_date")
  String get paymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amount")
  double get paidAmount => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "return_date")
  String get returnDate => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReceiptCopyWith<ReturnReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReceiptCopyWith<$Res> {
  factory $ReturnReceiptCopyWith(
          ReturnReceipt value, $Res Function(ReturnReceipt) then) =
      _$ReturnReceiptCopyWithImpl<$Res, ReturnReceipt>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "marketing_promotion_plan_return_id") int planReturnId,
      @JsonKey(name: "payment_date") String paymentDate,
      @JsonKey(name: "paid_amount") double paidAmount,
      String code,
      @JsonKey(name: "return_date") String returnDate,
      double balance,
      double total});
}

/// @nodoc
class _$ReturnReceiptCopyWithImpl<$Res, $Val extends ReturnReceipt>
    implements $ReturnReceiptCopyWith<$Res> {
  _$ReturnReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planReturnId = null,
    Object? paymentDate = null,
    Object? paidAmount = null,
    Object? code = null,
    Object? returnDate = null,
    Object? balance = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planReturnId: null == planReturnId
          ? _value.planReturnId
          : planReturnId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnReceiptImplCopyWith<$Res>
    implements $ReturnReceiptCopyWith<$Res> {
  factory _$$ReturnReceiptImplCopyWith(
          _$ReturnReceiptImpl value, $Res Function(_$ReturnReceiptImpl) then) =
      __$$ReturnReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "marketing_promotion_plan_return_id") int planReturnId,
      @JsonKey(name: "payment_date") String paymentDate,
      @JsonKey(name: "paid_amount") double paidAmount,
      String code,
      @JsonKey(name: "return_date") String returnDate,
      double balance,
      double total});
}

/// @nodoc
class __$$ReturnReceiptImplCopyWithImpl<$Res>
    extends _$ReturnReceiptCopyWithImpl<$Res, _$ReturnReceiptImpl>
    implements _$$ReturnReceiptImplCopyWith<$Res> {
  __$$ReturnReceiptImplCopyWithImpl(
      _$ReturnReceiptImpl _value, $Res Function(_$ReturnReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planReturnId = null,
    Object? paymentDate = null,
    Object? paidAmount = null,
    Object? code = null,
    Object? returnDate = null,
    Object? balance = null,
    Object? total = null,
  }) {
    return _then(_$ReturnReceiptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      planReturnId: null == planReturnId
          ? _value.planReturnId
          : planReturnId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnReceiptImpl extends _ReturnReceipt {
  const _$ReturnReceiptImpl(
      {this.id = -1,
      @JsonKey(name: "marketing_promotion_plan_return_id")
      this.planReturnId = -1,
      @JsonKey(name: "payment_date") this.paymentDate = '',
      @JsonKey(name: "paid_amount") this.paidAmount = 0,
      this.code = '',
      @JsonKey(name: "return_date") this.returnDate = '',
      this.balance = 0,
      this.total = 0})
      : super._();

  factory _$ReturnReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnReceiptImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "marketing_promotion_plan_return_id")
  final int planReturnId;
  @override
  @JsonKey(name: "payment_date")
  final String paymentDate;
  @override
  @JsonKey(name: "paid_amount")
  final double paidAmount;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: "return_date")
  final String returnDate;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double total;

  @override
  String toString() {
    return 'ReturnReceipt(id: $id, planReturnId: $planReturnId, paymentDate: $paymentDate, paidAmount: $paidAmount, code: $code, returnDate: $returnDate, balance: $balance, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planReturnId, planReturnId) ||
                other.planReturnId == planReturnId) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, planReturnId, paymentDate,
      paidAmount, code, returnDate, balance, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnReceiptImplCopyWith<_$ReturnReceiptImpl> get copyWith =>
      __$$ReturnReceiptImplCopyWithImpl<_$ReturnReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnReceiptImplToJson(
      this,
    );
  }
}

abstract class _ReturnReceipt extends ReturnReceipt {
  const factory _ReturnReceipt(
      {final int id,
      @JsonKey(name: "marketing_promotion_plan_return_id")
      final int planReturnId,
      @JsonKey(name: "payment_date") final String paymentDate,
      @JsonKey(name: "paid_amount") final double paidAmount,
      final String code,
      @JsonKey(name: "return_date") final String returnDate,
      final double balance,
      final double total}) = _$ReturnReceiptImpl;
  const _ReturnReceipt._() : super._();

  factory _ReturnReceipt.fromJson(Map<String, dynamic> json) =
      _$ReturnReceiptImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "marketing_promotion_plan_return_id")
  int get planReturnId;
  @override
  @JsonKey(name: "payment_date")
  String get paymentDate;
  @override
  @JsonKey(name: "paid_amount")
  double get paidAmount;
  @override
  String get code;
  @override
  @JsonKey(name: "return_date")
  String get returnDate;
  @override
  double get balance;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$ReturnReceiptImplCopyWith<_$ReturnReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
