// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SecondarySaleReceipt {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get invoiceCode => throw _privateConstructorUsedError;
  int get secondarySaleInvoiceId => throw _privateConstructorUsedError;
  double get paymentReceiveAmount => throw _privateConstructorUsedError;
  String get paymentReciveDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get goodIssueDate => throw _privateConstructorUsedError;
  InvoiceData get invoiceData => throw _privateConstructorUsedError;
  String get signUrl => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  String get businessUnitName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondarySaleReceiptCopyWith<SecondarySaleReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleReceiptCopyWith<$Res> {
  factory $SecondarySaleReceiptCopyWith(SecondarySaleReceipt value,
          $Res Function(SecondarySaleReceipt) then) =
      _$SecondarySaleReceiptCopyWithImpl<$Res, SecondarySaleReceipt>;
  @useResult
  $Res call(
      {int id,
      String code,
      String invoiceCode,
      int secondarySaleInvoiceId,
      double paymentReceiveAmount,
      String paymentReciveDate,
      String description,
      String goodIssueDate,
      InvoiceData invoiceData,
      String signUrl,
      PaymentMethod paymentMethod,
      String businessUnitName});

  $InvoiceDataCopyWith<$Res> get invoiceData;
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$SecondarySaleReceiptCopyWithImpl<$Res,
        $Val extends SecondarySaleReceipt>
    implements $SecondarySaleReceiptCopyWith<$Res> {
  _$SecondarySaleReceiptCopyWithImpl(this._value, this._then);

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
    Object? secondarySaleInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReciveDate = null,
    Object? description = null,
    Object? goodIssueDate = null,
    Object? invoiceData = null,
    Object? signUrl = null,
    Object? paymentMethod = null,
    Object? businessUnitName = null,
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
      secondarySaleInvoiceId: null == secondarySaleInvoiceId
          ? _value.secondarySaleInvoiceId
          : secondarySaleInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReciveDate: null == paymentReciveDate
          ? _value.paymentReciveDate
          : paymentReciveDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goodIssueDate: null == goodIssueDate
          ? _value.goodIssueDate
          : goodIssueDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceData: null == invoiceData
          ? _value.invoiceData
          : invoiceData // ignore: cast_nullable_to_non_nullable
              as InvoiceData,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataCopyWith<$Res> get invoiceData {
    return $InvoiceDataCopyWith<$Res>(_value.invoiceData, (value) {
      return _then(_value.copyWith(invoiceData: value) as $Val);
    });
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
abstract class _$$SecondarySaleReceiptImplCopyWith<$Res>
    implements $SecondarySaleReceiptCopyWith<$Res> {
  factory _$$SecondarySaleReceiptImplCopyWith(_$SecondarySaleReceiptImpl value,
          $Res Function(_$SecondarySaleReceiptImpl) then) =
      __$$SecondarySaleReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String invoiceCode,
      int secondarySaleInvoiceId,
      double paymentReceiveAmount,
      String paymentReciveDate,
      String description,
      String goodIssueDate,
      InvoiceData invoiceData,
      String signUrl,
      PaymentMethod paymentMethod,
      String businessUnitName});

  @override
  $InvoiceDataCopyWith<$Res> get invoiceData;
  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$SecondarySaleReceiptImplCopyWithImpl<$Res>
    extends _$SecondarySaleReceiptCopyWithImpl<$Res, _$SecondarySaleReceiptImpl>
    implements _$$SecondarySaleReceiptImplCopyWith<$Res> {
  __$$SecondarySaleReceiptImplCopyWithImpl(_$SecondarySaleReceiptImpl _value,
      $Res Function(_$SecondarySaleReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? secondarySaleInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReciveDate = null,
    Object? description = null,
    Object? goodIssueDate = null,
    Object? invoiceData = null,
    Object? signUrl = null,
    Object? paymentMethod = null,
    Object? businessUnitName = null,
  }) {
    return _then(_$SecondarySaleReceiptImpl(
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
      secondarySaleInvoiceId: null == secondarySaleInvoiceId
          ? _value.secondarySaleInvoiceId
          : secondarySaleInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReciveDate: null == paymentReciveDate
          ? _value.paymentReciveDate
          : paymentReciveDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goodIssueDate: null == goodIssueDate
          ? _value.goodIssueDate
          : goodIssueDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceData: null == invoiceData
          ? _value.invoiceData
          : invoiceData // ignore: cast_nullable_to_non_nullable
              as InvoiceData,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecondarySaleReceiptImpl implements _SecondarySaleReceipt {
  const _$SecondarySaleReceiptImpl(
      {this.id = -1,
      this.code = "",
      this.invoiceCode = '',
      this.secondarySaleInvoiceId = -1,
      this.paymentReceiveAmount = 0,
      this.paymentReciveDate = "",
      this.description = "",
      this.goodIssueDate = "",
      this.invoiceData = const InvoiceData(),
      this.signUrl = "",
      this.paymentMethod = const PaymentMethod(),
      this.businessUnitName = ''});

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
  final int secondarySaleInvoiceId;
  @override
  @JsonKey()
  final double paymentReceiveAmount;
  @override
  @JsonKey()
  final String paymentReciveDate;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String goodIssueDate;
  @override
  @JsonKey()
  final InvoiceData invoiceData;
  @override
  @JsonKey()
  final String signUrl;
  @override
  @JsonKey()
  final PaymentMethod paymentMethod;
  @override
  @JsonKey()
  final String businessUnitName;

  @override
  String toString() {
    return 'SecondarySaleReceipt(id: $id, code: $code, invoiceCode: $invoiceCode, secondarySaleInvoiceId: $secondarySaleInvoiceId, paymentReceiveAmount: $paymentReceiveAmount, paymentReciveDate: $paymentReciveDate, description: $description, goodIssueDate: $goodIssueDate, invoiceData: $invoiceData, signUrl: $signUrl, paymentMethod: $paymentMethod, businessUnitName: $businessUnitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleReceiptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.secondarySaleInvoiceId, secondarySaleInvoiceId) ||
                other.secondarySaleInvoiceId == secondarySaleInvoiceId) &&
            (identical(other.paymentReceiveAmount, paymentReceiveAmount) ||
                other.paymentReceiveAmount == paymentReceiveAmount) &&
            (identical(other.paymentReciveDate, paymentReciveDate) ||
                other.paymentReciveDate == paymentReciveDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.goodIssueDate, goodIssueDate) ||
                other.goodIssueDate == goodIssueDate) &&
            (identical(other.invoiceData, invoiceData) ||
                other.invoiceData == invoiceData) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      invoiceCode,
      secondarySaleInvoiceId,
      paymentReceiveAmount,
      paymentReciveDate,
      description,
      goodIssueDate,
      invoiceData,
      signUrl,
      paymentMethod,
      businessUnitName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleReceiptImplCopyWith<_$SecondarySaleReceiptImpl>
      get copyWith =>
          __$$SecondarySaleReceiptImplCopyWithImpl<_$SecondarySaleReceiptImpl>(
              this, _$identity);
}

abstract class _SecondarySaleReceipt implements SecondarySaleReceipt {
  const factory _SecondarySaleReceipt(
      {final int id,
      final String code,
      final String invoiceCode,
      final int secondarySaleInvoiceId,
      final double paymentReceiveAmount,
      final String paymentReciveDate,
      final String description,
      final String goodIssueDate,
      final InvoiceData invoiceData,
      final String signUrl,
      final PaymentMethod paymentMethod,
      final String businessUnitName}) = _$SecondarySaleReceiptImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get invoiceCode;
  @override
  int get secondarySaleInvoiceId;
  @override
  double get paymentReceiveAmount;
  @override
  String get paymentReciveDate;
  @override
  String get description;
  @override
  String get goodIssueDate;
  @override
  InvoiceData get invoiceData;
  @override
  String get signUrl;
  @override
  PaymentMethod get paymentMethod;
  @override
  String get businessUnitName;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleReceiptImplCopyWith<_$SecondarySaleReceiptImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoiceData {
  int get warehouseId => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  int get paymentTypeId => throw _privateConstructorUsedError;
  double get grandTotalAmount => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  int get businessUnitId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDataCopyWith<InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res, InvoiceData>;
  @useResult
  $Res call(
      {int warehouseId,
      String dueDate,
      int paymentTypeId,
      double grandTotalAmount,
      double balance,
      int businessUnitId});
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res, $Val extends InvoiceData>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseId = null,
    Object? dueDate = null,
    Object? paymentTypeId = null,
    Object? grandTotalAmount = null,
    Object? balance = null,
    Object? businessUnitId = null,
  }) {
    return _then(_value.copyWith(
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      grandTotalAmount: null == grandTotalAmount
          ? _value.grandTotalAmount
          : grandTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDataImplCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$$InvoiceDataImplCopyWith(
          _$InvoiceDataImpl value, $Res Function(_$InvoiceDataImpl) then) =
      __$$InvoiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int warehouseId,
      String dueDate,
      int paymentTypeId,
      double grandTotalAmount,
      double balance,
      int businessUnitId});
}

/// @nodoc
class __$$InvoiceDataImplCopyWithImpl<$Res>
    extends _$InvoiceDataCopyWithImpl<$Res, _$InvoiceDataImpl>
    implements _$$InvoiceDataImplCopyWith<$Res> {
  __$$InvoiceDataImplCopyWithImpl(
      _$InvoiceDataImpl _value, $Res Function(_$InvoiceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseId = null,
    Object? dueDate = null,
    Object? paymentTypeId = null,
    Object? grandTotalAmount = null,
    Object? balance = null,
    Object? businessUnitId = null,
  }) {
    return _then(_$InvoiceDataImpl(
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      grandTotalAmount: null == grandTotalAmount
          ? _value.grandTotalAmount
          : grandTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvoiceDataImpl implements _InvoiceData {
  const _$InvoiceDataImpl(
      {this.warehouseId = -1,
      this.dueDate = '',
      this.paymentTypeId = -1,
      this.grandTotalAmount = 0,
      this.balance = 0,
      this.businessUnitId = -1});

  @override
  @JsonKey()
  final int warehouseId;
  @override
  @JsonKey()
  final String dueDate;
  @override
  @JsonKey()
  final int paymentTypeId;
  @override
  @JsonKey()
  final double grandTotalAmount;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final int businessUnitId;

  @override
  String toString() {
    return 'InvoiceData(warehouseId: $warehouseId, dueDate: $dueDate, paymentTypeId: $paymentTypeId, grandTotalAmount: $grandTotalAmount, balance: $balance, businessUnitId: $businessUnitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDataImpl &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.grandTotalAmount, grandTotalAmount) ||
                other.grandTotalAmount == grandTotalAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, warehouseId, dueDate,
      paymentTypeId, grandTotalAmount, balance, businessUnitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDataImplCopyWith<_$InvoiceDataImpl> get copyWith =>
      __$$InvoiceDataImplCopyWithImpl<_$InvoiceDataImpl>(this, _$identity);
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData(
      {final int warehouseId,
      final String dueDate,
      final int paymentTypeId,
      final double grandTotalAmount,
      final double balance,
      final int businessUnitId}) = _$InvoiceDataImpl;

  @override
  int get warehouseId;
  @override
  String get dueDate;
  @override
  int get paymentTypeId;
  @override
  double get grandTotalAmount;
  @override
  double get balance;
  @override
  int get businessUnitId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceDataImplCopyWith<_$InvoiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
