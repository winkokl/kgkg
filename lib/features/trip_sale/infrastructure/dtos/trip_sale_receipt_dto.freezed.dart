// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripSaleReceiptDTO _$TripSaleReceiptDTOFromJson(Map<String, dynamic> json) {
  return _TripSaleReceiptDTO.fromJson(json);
}

/// @nodoc
mixin _$TripSaleReceiptDTO {
  @JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
  String get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_sale_invoice_id")
  int get tripSalesInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripSaleReceiptDTOCopyWith<TripSaleReceiptDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleReceiptDTOCopyWith<$Res> {
  factory $TripSaleReceiptDTOCopyWith(
          TripSaleReceiptDTO value, $Res Function(TripSaleReceiptDTO) then) =
      _$TripSaleReceiptDTOCopyWithImpl<$Res, TripSaleReceiptDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "trip_sale_invoice_id") int tripSalesInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      String description,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class _$TripSaleReceiptDTOCopyWithImpl<$Res, $Val extends TripSaleReceiptDTO>
    implements $TripSaleReceiptDTOCopyWith<$Res> {
  _$TripSaleReceiptDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceCode = null,
    Object? code = null,
    Object? tripSalesInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
    Object? description = null,
    Object? signUrl = null,
    Object? businessUnitName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tripSalesInvoiceId: null == tripSalesInvoiceId
          ? _value.tripSalesInvoiceId
          : tripSalesInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripSaleReceiptDTOImplCopyWith<$Res>
    implements $TripSaleReceiptDTOCopyWith<$Res> {
  factory _$$TripSaleReceiptDTOImplCopyWith(_$TripSaleReceiptDTOImpl value,
          $Res Function(_$TripSaleReceiptDTOImpl) then) =
      __$$TripSaleReceiptDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "trip_sale_invoice_id") int tripSalesInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      String description,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class __$$TripSaleReceiptDTOImplCopyWithImpl<$Res>
    extends _$TripSaleReceiptDTOCopyWithImpl<$Res, _$TripSaleReceiptDTOImpl>
    implements _$$TripSaleReceiptDTOImplCopyWith<$Res> {
  __$$TripSaleReceiptDTOImplCopyWithImpl(_$TripSaleReceiptDTOImpl _value,
      $Res Function(_$TripSaleReceiptDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceCode = null,
    Object? code = null,
    Object? tripSalesInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
    Object? description = null,
    Object? signUrl = null,
    Object? businessUnitName = null,
  }) {
    return _then(_$TripSaleReceiptDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tripSalesInvoiceId: null == tripSalesInvoiceId
          ? _value.tripSalesInvoiceId
          : tripSalesInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripSaleReceiptDTOImpl extends _TripSaleReceiptDTO {
  const _$TripSaleReceiptDTOImpl(
      {@JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
      this.id = -1,
      @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
      this.invoiceCode = '',
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      this.code = '',
      @JsonKey(name: "trip_sale_invoice_id") this.tripSalesInvoiceId = -1,
      @JsonKey(name: "payment_receive_amount") this.paymentReceiveAmount = 0,
      @JsonKey(name: "payment_receive_date") this.paymentReceiveDate = '',
      @JsonKey(name: "balance") this.balance = 0,
      @JsonKey(name: 'payment_method_id') this.paymentMethodId = -1,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      this.paymentMethodName = "",
      this.description = "",
      @JsonKey(name: 'signature', includeToJson: false) this.signUrl = "",
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = ''})
      : super._();

  factory _$TripSaleReceiptDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripSaleReceiptDTOImplFromJson(json);

  @override
  @JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
  final int id;
  @override
  @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
  final String invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "trip_sale_invoice_id")
  final int tripSalesInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  final double paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  final String paymentReceiveDate;
  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: 'payment_method_id')
  final int paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  final String paymentMethodName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  final String signUrl;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;

  @override
  String toString() {
    return 'TripSaleReceiptDTO(id: $id, invoiceCode: $invoiceCode, code: $code, tripSalesInvoiceId: $tripSalesInvoiceId, paymentReceiveAmount: $paymentReceiveAmount, paymentReceiveDate: $paymentReceiveDate, balance: $balance, paymentMethodId: $paymentMethodId, paymentMethodName: $paymentMethodName, description: $description, signUrl: $signUrl, businessUnitName: $businessUnitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleReceiptDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tripSalesInvoiceId, tripSalesInvoiceId) ||
                other.tripSalesInvoiceId == tripSalesInvoiceId) &&
            (identical(other.paymentReceiveAmount, paymentReceiveAmount) ||
                other.paymentReceiveAmount == paymentReceiveAmount) &&
            (identical(other.paymentReceiveDate, paymentReceiveDate) ||
                other.paymentReceiveDate == paymentReceiveDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      invoiceCode,
      code,
      tripSalesInvoiceId,
      paymentReceiveAmount,
      paymentReceiveDate,
      balance,
      paymentMethodId,
      paymentMethodName,
      description,
      signUrl,
      businessUnitName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleReceiptDTOImplCopyWith<_$TripSaleReceiptDTOImpl> get copyWith =>
      __$$TripSaleReceiptDTOImplCopyWithImpl<_$TripSaleReceiptDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripSaleReceiptDTOImplToJson(
      this,
    );
  }
}

abstract class _TripSaleReceiptDTO extends TripSaleReceiptDTO {
  const factory _TripSaleReceiptDTO(
      {@JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
      final int id,
      @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
      final String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      final String code,
      @JsonKey(name: "trip_sale_invoice_id") final int tripSalesInvoiceId,
      @JsonKey(name: "payment_receive_amount")
      final double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") final String paymentReceiveDate,
      @JsonKey(name: "balance") final double balance,
      @JsonKey(name: 'payment_method_id') final int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      final String paymentMethodName,
      final String description,
      @JsonKey(name: 'signature', includeToJson: false) final String signUrl,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName}) = _$TripSaleReceiptDTOImpl;
  const _TripSaleReceiptDTO._() : super._();

  factory _TripSaleReceiptDTO.fromJson(Map<String, dynamic> json) =
      _$TripSaleReceiptDTOImpl.fromJson;

  @override
  @JsonKey(name: "trip_sale_payment_receive_id", includeToJson: false)
  int get id;
  @override
  @JsonKey(name: "trip_sale_invoice_code", includeToJson: false)
  String get invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "trip_sale_invoice_id")
  int get tripSalesInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate;
  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName;
  @override
  String get description;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleReceiptDTOImplCopyWith<_$TripSaleReceiptDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
