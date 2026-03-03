// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_print_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentPrintFormat {
  String get receiveID => throw _privateConstructorUsedError;
  String get receiveDate => throw _privateConstructorUsedError;
  String get invoiceID => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentPrintFormatCopyWith<PaymentPrintFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPrintFormatCopyWith<$Res> {
  factory $PaymentPrintFormatCopyWith(
          PaymentPrintFormat value, $Res Function(PaymentPrintFormat) then) =
      _$PaymentPrintFormatCopyWithImpl<$Res, PaymentPrintFormat>;
  @useResult
  $Res call(
      {String receiveID,
      String receiveDate,
      String invoiceID,
      String paymentMethod,
      double paymentAmount});
}

/// @nodoc
class _$PaymentPrintFormatCopyWithImpl<$Res, $Val extends PaymentPrintFormat>
    implements $PaymentPrintFormatCopyWith<$Res> {
  _$PaymentPrintFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiveID = null,
    Object? receiveDate = null,
    Object? invoiceID = null,
    Object? paymentMethod = null,
    Object? paymentAmount = null,
  }) {
    return _then(_value.copyWith(
      receiveID: null == receiveID
          ? _value.receiveID
          : receiveID // ignore: cast_nullable_to_non_nullable
              as String,
      receiveDate: null == receiveDate
          ? _value.receiveDate
          : receiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceID: null == invoiceID
          ? _value.invoiceID
          : invoiceID // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentPrintFormatImplCopyWith<$Res>
    implements $PaymentPrintFormatCopyWith<$Res> {
  factory _$$PaymentPrintFormatImplCopyWith(_$PaymentPrintFormatImpl value,
          $Res Function(_$PaymentPrintFormatImpl) then) =
      __$$PaymentPrintFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String receiveID,
      String receiveDate,
      String invoiceID,
      String paymentMethod,
      double paymentAmount});
}

/// @nodoc
class __$$PaymentPrintFormatImplCopyWithImpl<$Res>
    extends _$PaymentPrintFormatCopyWithImpl<$Res, _$PaymentPrintFormatImpl>
    implements _$$PaymentPrintFormatImplCopyWith<$Res> {
  __$$PaymentPrintFormatImplCopyWithImpl(_$PaymentPrintFormatImpl _value,
      $Res Function(_$PaymentPrintFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiveID = null,
    Object? receiveDate = null,
    Object? invoiceID = null,
    Object? paymentMethod = null,
    Object? paymentAmount = null,
  }) {
    return _then(_$PaymentPrintFormatImpl(
      receiveID: null == receiveID
          ? _value.receiveID
          : receiveID // ignore: cast_nullable_to_non_nullable
              as String,
      receiveDate: null == receiveDate
          ? _value.receiveDate
          : receiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceID: null == invoiceID
          ? _value.invoiceID
          : invoiceID // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PaymentPrintFormatImpl implements _PaymentPrintFormat {
  _$PaymentPrintFormatImpl(
      {this.receiveID = "",
      this.receiveDate = "",
      this.invoiceID = "",
      this.paymentMethod = "",
      this.paymentAmount = 0});

  @override
  @JsonKey()
  final String receiveID;
  @override
  @JsonKey()
  final String receiveDate;
  @override
  @JsonKey()
  final String invoiceID;
  @override
  @JsonKey()
  final String paymentMethod;
  @override
  @JsonKey()
  final double paymentAmount;

  @override
  String toString() {
    return 'PaymentPrintFormat(receiveID: $receiveID, receiveDate: $receiveDate, invoiceID: $invoiceID, paymentMethod: $paymentMethod, paymentAmount: $paymentAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPrintFormatImpl &&
            (identical(other.receiveID, receiveID) ||
                other.receiveID == receiveID) &&
            (identical(other.receiveDate, receiveDate) ||
                other.receiveDate == receiveDate) &&
            (identical(other.invoiceID, invoiceID) ||
                other.invoiceID == invoiceID) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiveID, receiveDate,
      invoiceID, paymentMethod, paymentAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPrintFormatImplCopyWith<_$PaymentPrintFormatImpl> get copyWith =>
      __$$PaymentPrintFormatImplCopyWithImpl<_$PaymentPrintFormatImpl>(
          this, _$identity);
}

abstract class _PaymentPrintFormat implements PaymentPrintFormat {
  factory _PaymentPrintFormat(
      {final String receiveID,
      final String receiveDate,
      final String invoiceID,
      final String paymentMethod,
      final double paymentAmount}) = _$PaymentPrintFormatImpl;

  @override
  String get receiveID;
  @override
  String get receiveDate;
  @override
  String get invoiceID;
  @override
  String get paymentMethod;
  @override
  double get paymentAmount;
  @override
  @JsonKey(ignore: true)
  _$$PaymentPrintFormatImplCopyWith<_$PaymentPrintFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
