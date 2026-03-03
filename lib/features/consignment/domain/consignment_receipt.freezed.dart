// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConsignmentReceipt {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get invoiceCode => throw _privateConstructorUsedError;
  int get consignmentInvoiceId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get businessUnitName => throw _privateConstructorUsedError;
  double get paymentReceiveAmount => throw _privateConstructorUsedError;
  String get paymentReciveDate => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get signUrl => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsignmentReceiptCopyWith<ConsignmentReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentReceiptCopyWith<$Res> {
  factory $ConsignmentReceiptCopyWith(
          ConsignmentReceipt value, $Res Function(ConsignmentReceipt) then) =
      _$ConsignmentReceiptCopyWithImpl<$Res, ConsignmentReceipt>;
  @useResult
  $Res call(
      {int id,
      String code,
      String invoiceCode,
      int consignmentInvoiceId,
      String customerName,
      String businessUnitName,
      double paymentReceiveAmount,
      String paymentReciveDate,
      double balance,
      String remark,
      String description,
      String signUrl,
      PaymentMethod paymentMethod});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$ConsignmentReceiptCopyWithImpl<$Res, $Val extends ConsignmentReceipt>
    implements $ConsignmentReceiptCopyWith<$Res> {
  _$ConsignmentReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? consignmentInvoiceId = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReciveDate = null,
    Object? balance = null,
    Object? remark = null,
    Object? description = null,
    Object? signUrl = null,
    Object? paymentMethod = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentInvoiceId: null == consignmentInvoiceId
          ? _value.consignmentInvoiceId
          : consignmentInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReciveDate: null == paymentReciveDate
          ? _value.paymentReciveDate
          : paymentReciveDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsignmentReceiptImplCopyWith<$Res>
    implements $ConsignmentReceiptCopyWith<$Res> {
  factory _$$ConsignmentReceiptImplCopyWith(_$ConsignmentReceiptImpl value,
          $Res Function(_$ConsignmentReceiptImpl) then) =
      __$$ConsignmentReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String invoiceCode,
      int consignmentInvoiceId,
      String customerName,
      String businessUnitName,
      double paymentReceiveAmount,
      String paymentReciveDate,
      double balance,
      String remark,
      String description,
      String signUrl,
      PaymentMethod paymentMethod});

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$ConsignmentReceiptImplCopyWithImpl<$Res>
    extends _$ConsignmentReceiptCopyWithImpl<$Res, _$ConsignmentReceiptImpl>
    implements _$$ConsignmentReceiptImplCopyWith<$Res> {
  __$$ConsignmentReceiptImplCopyWithImpl(_$ConsignmentReceiptImpl _value,
      $Res Function(_$ConsignmentReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? consignmentInvoiceId = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReciveDate = null,
    Object? balance = null,
    Object? remark = null,
    Object? description = null,
    Object? signUrl = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$ConsignmentReceiptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentInvoiceId: null == consignmentInvoiceId
          ? _value.consignmentInvoiceId
          : consignmentInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReciveDate: null == paymentReciveDate
          ? _value.paymentReciveDate
          : paymentReciveDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

/// @nodoc

class _$ConsignmentReceiptImpl implements _ConsignmentReceipt {
  const _$ConsignmentReceiptImpl(
      {this.id = -1,
      this.code = "",
      this.invoiceCode = '',
      this.consignmentInvoiceId = -1,
      this.customerName = "",
      this.businessUnitName = "",
      this.paymentReceiveAmount = 0,
      this.paymentReciveDate = "",
      this.balance = 0,
      this.remark = "",
      this.description = "",
      this.signUrl = "",
      this.paymentMethod = const PaymentMethod()});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String invoiceCode;
  @override
  @JsonKey()
  final int consignmentInvoiceId;
  @override
  @JsonKey()
  final String customerName;
  @override
  @JsonKey()
  final String businessUnitName;
  @override
  @JsonKey()
  final double paymentReceiveAmount;
  @override
  @JsonKey()
  final String paymentReciveDate;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String signUrl;
  @override
  @JsonKey()
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'ConsignmentReceipt(id: $id, code: $code, invoiceCode: $invoiceCode, consignmentInvoiceId: $consignmentInvoiceId, customerName: $customerName, businessUnitName: $businessUnitName, paymentReceiveAmount: $paymentReceiveAmount, paymentReciveDate: $paymentReciveDate, balance: $balance, remark: $remark, description: $description, signUrl: $signUrl, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.consignmentInvoiceId, consignmentInvoiceId) ||
                other.consignmentInvoiceId == consignmentInvoiceId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.paymentReceiveAmount, paymentReceiveAmount) ||
                other.paymentReceiveAmount == paymentReceiveAmount) &&
            (identical(other.paymentReciveDate, paymentReciveDate) ||
                other.paymentReciveDate == paymentReciveDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      invoiceCode,
      consignmentInvoiceId,
      customerName,
      businessUnitName,
      paymentReceiveAmount,
      paymentReciveDate,
      balance,
      remark,
      description,
      signUrl,
      paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentReceiptImplCopyWith<_$ConsignmentReceiptImpl> get copyWith =>
      __$$ConsignmentReceiptImplCopyWithImpl<_$ConsignmentReceiptImpl>(
          this, _$identity);
}

abstract class _ConsignmentReceipt implements ConsignmentReceipt {
  const factory _ConsignmentReceipt(
      {final int id,
      final String code,
      final String invoiceCode,
      final int consignmentInvoiceId,
      final String customerName,
      final String businessUnitName,
      final double paymentReceiveAmount,
      final String paymentReciveDate,
      final double balance,
      final String remark,
      final String description,
      final String signUrl,
      final PaymentMethod paymentMethod}) = _$ConsignmentReceiptImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get invoiceCode;
  @override
  int get consignmentInvoiceId;
  @override
  String get customerName;
  @override
  String get businessUnitName;
  @override
  double get paymentReceiveAmount;
  @override
  String get paymentReciveDate;
  @override
  double get balance;
  @override
  String get remark;
  @override
  String get description;
  @override
  String get signUrl;
  @override
  PaymentMethod get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentReceiptImplCopyWith<_$ConsignmentReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
