// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentReceiptDTO _$ConsignmentReceiptDTOFromJson(
    Map<String, dynamic> json) {
  return _ConsignmentReceiptDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentReceiptDTO {
  @JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  String get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_invoice_id")
  int get consignmentsInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_first_name", includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "business_unit_name", includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: "signature", includeToJson: false)
  String get signUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName =>
      throw _privateConstructorUsedError; // @Default("") String remark,
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentReceiptDTOCopyWith<ConsignmentReceiptDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentReceiptDTOCopyWith<$Res> {
  factory $ConsignmentReceiptDTOCopyWith(ConsignmentReceiptDTO value,
          $Res Function(ConsignmentReceiptDTO) then) =
      _$ConsignmentReceiptDTOCopyWithImpl<$Res, ConsignmentReceiptDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "consignment_invoice_id") int consignmentsInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      String customerName,
      @JsonKey(name: "business_unit_name", includeToJson: false)
      String businessUnitName,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: "signature", includeToJson: false) String signUrl,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      String description});
}

/// @nodoc
class _$ConsignmentReceiptDTOCopyWithImpl<$Res,
        $Val extends ConsignmentReceiptDTO>
    implements $ConsignmentReceiptDTOCopyWith<$Res> {
  _$ConsignmentReceiptDTOCopyWithImpl(this._value, this._then);

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
    Object? consignmentsInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? signUrl = null,
    Object? paymentMethodName = null,
    Object? description = null,
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
      consignmentsInvoiceId: null == consignmentsInvoiceId
          ? _value.consignmentsInvoiceId
          : consignmentsInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsignmentReceiptDTOImplCopyWith<$Res>
    implements $ConsignmentReceiptDTOCopyWith<$Res> {
  factory _$$ConsignmentReceiptDTOImplCopyWith(
          _$ConsignmentReceiptDTOImpl value,
          $Res Function(_$ConsignmentReceiptDTOImpl) then) =
      __$$ConsignmentReceiptDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "consignment_invoice_id") int consignmentsInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      String customerName,
      @JsonKey(name: "business_unit_name", includeToJson: false)
      String businessUnitName,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: "signature", includeToJson: false) String signUrl,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      String description});
}

/// @nodoc
class __$$ConsignmentReceiptDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentReceiptDTOCopyWithImpl<$Res,
        _$ConsignmentReceiptDTOImpl>
    implements _$$ConsignmentReceiptDTOImplCopyWith<$Res> {
  __$$ConsignmentReceiptDTOImplCopyWithImpl(_$ConsignmentReceiptDTOImpl _value,
      $Res Function(_$ConsignmentReceiptDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceCode = null,
    Object? code = null,
    Object? consignmentsInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? signUrl = null,
    Object? paymentMethodName = null,
    Object? description = null,
  }) {
    return _then(_$ConsignmentReceiptDTOImpl(
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
      consignmentsInvoiceId: null == consignmentsInvoiceId
          ? _value.consignmentsInvoiceId
          : consignmentsInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
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
class _$ConsignmentReceiptDTOImpl extends _ConsignmentReceiptDTO {
  const _$ConsignmentReceiptDTOImpl(
      {@JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
      this.id = -1,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      this.invoiceCode = '',
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      this.code = '',
      @JsonKey(name: "consignment_invoice_id") this.consignmentsInvoiceId = -1,
      @JsonKey(name: "payment_receive_amount") this.paymentReceiveAmount = 0,
      @JsonKey(name: "payment_receive_date") this.paymentReceiveDate = '',
      @JsonKey(name: "customer_first_name", includeToJson: false)
      this.customerName = '',
      @JsonKey(name: "business_unit_name", includeToJson: false)
      this.businessUnitName = '',
      @JsonKey(name: "balance") this.balance = 0,
      @JsonKey(name: 'payment_method_id') this.paymentMethodId = -1,
      @JsonKey(name: "signature", includeToJson: false) this.signUrl = "",
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      this.paymentMethodName = "",
      this.description = ""})
      : super._();

  factory _$ConsignmentReceiptDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentReceiptDTOImplFromJson(json);

  @override
  @JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
  final int id;
  @override
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  final String invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "consignment_invoice_id")
  final int consignmentsInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  final double paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  final String paymentReceiveDate;
  @override
  @JsonKey(name: "customer_first_name", includeToJson: false)
  final String customerName;
  @override
  @JsonKey(name: "business_unit_name", includeToJson: false)
  final String businessUnitName;
  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: 'payment_method_id')
  final int paymentMethodId;
  @override
  @JsonKey(name: "signature", includeToJson: false)
  final String signUrl;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  final String paymentMethodName;
// @Default("") String remark,
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ConsignmentReceiptDTO(id: $id, invoiceCode: $invoiceCode, code: $code, consignmentsInvoiceId: $consignmentsInvoiceId, paymentReceiveAmount: $paymentReceiveAmount, paymentReceiveDate: $paymentReceiveDate, customerName: $customerName, businessUnitName: $businessUnitName, balance: $balance, paymentMethodId: $paymentMethodId, signUrl: $signUrl, paymentMethodName: $paymentMethodName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentReceiptDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.consignmentsInvoiceId, consignmentsInvoiceId) ||
                other.consignmentsInvoiceId == consignmentsInvoiceId) &&
            (identical(other.paymentReceiveAmount, paymentReceiveAmount) ||
                other.paymentReceiveAmount == paymentReceiveAmount) &&
            (identical(other.paymentReceiveDate, paymentReceiveDate) ||
                other.paymentReceiveDate == paymentReceiveDate) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      invoiceCode,
      code,
      consignmentsInvoiceId,
      paymentReceiveAmount,
      paymentReceiveDate,
      customerName,
      businessUnitName,
      balance,
      paymentMethodId,
      signUrl,
      paymentMethodName,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentReceiptDTOImplCopyWith<_$ConsignmentReceiptDTOImpl>
      get copyWith => __$$ConsignmentReceiptDTOImplCopyWithImpl<
          _$ConsignmentReceiptDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentReceiptDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentReceiptDTO extends ConsignmentReceiptDTO {
  const factory _ConsignmentReceiptDTO(
      {@JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
      final int id,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      final String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      final String code,
      @JsonKey(name: "consignment_invoice_id") final int consignmentsInvoiceId,
      @JsonKey(name: "payment_receive_amount")
      final double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") final String paymentReceiveDate,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      final String customerName,
      @JsonKey(name: "business_unit_name", includeToJson: false)
      final String businessUnitName,
      @JsonKey(name: "balance") final double balance,
      @JsonKey(name: 'payment_method_id') final int paymentMethodId,
      @JsonKey(name: "signature", includeToJson: false) final String signUrl,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      final String paymentMethodName,
      final String description}) = _$ConsignmentReceiptDTOImpl;
  const _ConsignmentReceiptDTO._() : super._();

  factory _ConsignmentReceiptDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentReceiptDTOImpl.fromJson;

  @override
  @JsonKey(name: "consignment_payment_receive_id", includeToJson: false)
  int get id;
  @override
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  String get invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "consignment_invoice_id")
  int get consignmentsInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate;
  @override
  @JsonKey(name: "customer_first_name", includeToJson: false)
  String get customerName;
  @override
  @JsonKey(name: "business_unit_name", includeToJson: false)
  String get businessUnitName;
  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId;
  @override
  @JsonKey(name: "signature", includeToJson: false)
  String get signUrl;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName;
  @override // @Default("") String remark,
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentReceiptDTOImplCopyWith<_$ConsignmentReceiptDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
