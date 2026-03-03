// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentReceipt {
  String get code => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentReceiptCopyWith<PaymentReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentReceiptCopyWith<$Res> {
  factory $PaymentReceiptCopyWith(
          PaymentReceipt value, $Res Function(PaymentReceipt) then) =
      _$PaymentReceiptCopyWithImpl<$Res, PaymentReceipt>;
  @useResult
  $Res call({String code, double amount, String date});
}

/// @nodoc
class _$PaymentReceiptCopyWithImpl<$Res, $Val extends PaymentReceipt>
    implements $PaymentReceiptCopyWith<$Res> {
  _$PaymentReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentReceiptImplCopyWith<$Res>
    implements $PaymentReceiptCopyWith<$Res> {
  factory _$$PaymentReceiptImplCopyWith(_$PaymentReceiptImpl value,
          $Res Function(_$PaymentReceiptImpl) then) =
      __$$PaymentReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, double amount, String date});
}

/// @nodoc
class __$$PaymentReceiptImplCopyWithImpl<$Res>
    extends _$PaymentReceiptCopyWithImpl<$Res, _$PaymentReceiptImpl>
    implements _$$PaymentReceiptImplCopyWith<$Res> {
  __$$PaymentReceiptImplCopyWithImpl(
      _$PaymentReceiptImpl _value, $Res Function(_$PaymentReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_$PaymentReceiptImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentReceiptImpl implements _PaymentReceipt {
  _$PaymentReceiptImpl({this.code = "", this.amount = 0, this.date = ""});

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'PaymentReceipt(code: $code, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentReceiptImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, amount, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentReceiptImplCopyWith<_$PaymentReceiptImpl> get copyWith =>
      __$$PaymentReceiptImplCopyWithImpl<_$PaymentReceiptImpl>(
          this, _$identity);
}

abstract class _PaymentReceipt implements PaymentReceipt {
  factory _PaymentReceipt(
      {final String code,
      final double amount,
      final String date}) = _$PaymentReceiptImpl;

  @override
  String get code;
  @override
  double get amount;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$PaymentReceiptImplCopyWith<_$PaymentReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
