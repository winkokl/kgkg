// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptDTO _$ReceiptDTOFromJson(Map<String, dynamic> json) {
  return _ReceiptDTO.fromJson(json);
}

/// @nodoc
mixin _$ReceiptDTO {
  @JsonKey(name: "marketing_promotion_payment_receive_id", includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
  String get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "marketing_promotion_invoice_id")
  int get invoiceId => throw _privateConstructorUsedError;
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
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
  MarketingPromotionInvoice? get marketingPromotionInvoice =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptDTOCopyWith<ReceiptDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDTOCopyWith<$Res> {
  factory $ReceiptDTOCopyWith(
          ReceiptDTO value, $Res Function(ReceiptDTO) then) =
      _$ReceiptDTOCopyWithImpl<$Res, ReceiptDTO>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "marketing_promotion_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "marketing_promotion_invoice_id") int invoiceId,
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
      @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
      MarketingPromotionInvoice? marketingPromotionInvoice,
      String description});

  $MarketingPromotionInvoiceCopyWith<$Res>? get marketingPromotionInvoice;
}

/// @nodoc
class _$ReceiptDTOCopyWithImpl<$Res, $Val extends ReceiptDTO>
    implements $ReceiptDTOCopyWith<$Res> {
  _$ReceiptDTOCopyWithImpl(this._value, this._then);

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
    Object? invoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? signUrl = null,
    Object? paymentMethodName = null,
    Object? marketingPromotionInvoice = freezed,
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
      marketingPromotionInvoice: freezed == marketingPromotionInvoice
          ? _value.marketingPromotionInvoice
          : marketingPromotionInvoice // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionInvoice?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketingPromotionInvoiceCopyWith<$Res>? get marketingPromotionInvoice {
    if (_value.marketingPromotionInvoice == null) {
      return null;
    }

    return $MarketingPromotionInvoiceCopyWith<$Res>(
        _value.marketingPromotionInvoice!, (value) {
      return _then(_value.copyWith(marketingPromotionInvoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceiptDTOImplCopyWith<$Res>
    implements $ReceiptDTOCopyWith<$Res> {
  factory _$$ReceiptDTOImplCopyWith(
          _$ReceiptDTOImpl value, $Res Function(_$ReceiptDTOImpl) then) =
      __$$ReceiptDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "marketing_promotion_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "marketing_promotion_invoice_id") int invoiceId,
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
      @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
      MarketingPromotionInvoice? marketingPromotionInvoice,
      String description});

  @override
  $MarketingPromotionInvoiceCopyWith<$Res>? get marketingPromotionInvoice;
}

/// @nodoc
class __$$ReceiptDTOImplCopyWithImpl<$Res>
    extends _$ReceiptDTOCopyWithImpl<$Res, _$ReceiptDTOImpl>
    implements _$$ReceiptDTOImplCopyWith<$Res> {
  __$$ReceiptDTOImplCopyWithImpl(
      _$ReceiptDTOImpl _value, $Res Function(_$ReceiptDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceCode = null,
    Object? code = null,
    Object? invoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? balance = null,
    Object? paymentMethodId = null,
    Object? signUrl = null,
    Object? paymentMethodName = null,
    Object? marketingPromotionInvoice = freezed,
    Object? description = null,
  }) {
    return _then(_$ReceiptDTOImpl(
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
      marketingPromotionInvoice: freezed == marketingPromotionInvoice
          ? _value.marketingPromotionInvoice
          : marketingPromotionInvoice // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionInvoice?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptDTOImpl extends _ReceiptDTO {
  const _$ReceiptDTOImpl(
      {@JsonKey(
          name: "marketing_promotion_payment_receive_id", includeToJson: false)
      this.id = -1,
      @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
      this.invoiceCode = '',
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      this.code = '',
      @JsonKey(name: "marketing_promotion_invoice_id") this.invoiceId = -1,
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
      @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
      this.marketingPromotionInvoice,
      this.description = ""})
      : super._();

  factory _$ReceiptDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptDTOImplFromJson(json);

  @override
  @JsonKey(name: "marketing_promotion_payment_receive_id", includeToJson: false)
  final int id;
  @override
  @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
  final String invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "marketing_promotion_invoice_id")
  final int invoiceId;
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
  @override
  @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
  final MarketingPromotionInvoice? marketingPromotionInvoice;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ReceiptDTO(id: $id, invoiceCode: $invoiceCode, code: $code, invoiceId: $invoiceId, paymentReceiveAmount: $paymentReceiveAmount, paymentReceiveDate: $paymentReceiveDate, customerName: $customerName, businessUnitName: $businessUnitName, balance: $balance, paymentMethodId: $paymentMethodId, signUrl: $signUrl, paymentMethodName: $paymentMethodName, marketingPromotionInvoice: $marketingPromotionInvoice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
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
            (identical(other.marketingPromotionInvoice,
                    marketingPromotionInvoice) ||
                other.marketingPromotionInvoice == marketingPromotionInvoice) &&
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
      invoiceId,
      paymentReceiveAmount,
      paymentReceiveDate,
      customerName,
      businessUnitName,
      balance,
      paymentMethodId,
      signUrl,
      paymentMethodName,
      marketingPromotionInvoice,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptDTOImplCopyWith<_$ReceiptDTOImpl> get copyWith =>
      __$$ReceiptDTOImplCopyWithImpl<_$ReceiptDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptDTOImplToJson(
      this,
    );
  }
}

abstract class _ReceiptDTO extends ReceiptDTO {
  const factory _ReceiptDTO(
      {@JsonKey(
          name: "marketing_promotion_payment_receive_id", includeToJson: false)
      final int id,
      @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
      final String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      final String code,
      @JsonKey(name: "marketing_promotion_invoice_id") final int invoiceId,
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
      @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
      final MarketingPromotionInvoice? marketingPromotionInvoice,
      final String description}) = _$ReceiptDTOImpl;
  const _ReceiptDTO._() : super._();

  factory _ReceiptDTO.fromJson(Map<String, dynamic> json) =
      _$ReceiptDTOImpl.fromJson;

  @override
  @JsonKey(name: "marketing_promotion_payment_receive_id", includeToJson: false)
  int get id;
  @override
  @JsonKey(name: "marketing_promotion_invoice_code", includeToJson: false)
  String get invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "marketing_promotion_invoice_id")
  int get invoiceId;
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
  @override
  @JsonKey(name: 'marketing_promotion_invoice', includeToJson: false)
  MarketingPromotionInvoice? get marketingPromotionInvoice;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptDTOImplCopyWith<_$ReceiptDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketingPromotionInvoice _$MarketingPromotionInvoiceFromJson(
    Map<String, dynamic> json) {
  return _MarketingPromotionInvoice.fromJson(json);
}

/// @nodoc
mixin _$MarketingPromotionInvoice {
  @JsonKey(name: "invoice_code")
  String get invoiceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketingPromotionInvoiceCopyWith<MarketingPromotionInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingPromotionInvoiceCopyWith<$Res> {
  factory $MarketingPromotionInvoiceCopyWith(MarketingPromotionInvoice value,
          $Res Function(MarketingPromotionInvoice) then) =
      _$MarketingPromotionInvoiceCopyWithImpl<$Res, MarketingPromotionInvoice>;
  @useResult
  $Res call({@JsonKey(name: "invoice_code") String invoiceCode});
}

/// @nodoc
class _$MarketingPromotionInvoiceCopyWithImpl<$Res,
        $Val extends MarketingPromotionInvoice>
    implements $MarketingPromotionInvoiceCopyWith<$Res> {
  _$MarketingPromotionInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceCode = null,
  }) {
    return _then(_value.copyWith(
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketingPromotionInvoiceImplCopyWith<$Res>
    implements $MarketingPromotionInvoiceCopyWith<$Res> {
  factory _$$MarketingPromotionInvoiceImplCopyWith(
          _$MarketingPromotionInvoiceImpl value,
          $Res Function(_$MarketingPromotionInvoiceImpl) then) =
      __$$MarketingPromotionInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "invoice_code") String invoiceCode});
}

/// @nodoc
class __$$MarketingPromotionInvoiceImplCopyWithImpl<$Res>
    extends _$MarketingPromotionInvoiceCopyWithImpl<$Res,
        _$MarketingPromotionInvoiceImpl>
    implements _$$MarketingPromotionInvoiceImplCopyWith<$Res> {
  __$$MarketingPromotionInvoiceImplCopyWithImpl(
      _$MarketingPromotionInvoiceImpl _value,
      $Res Function(_$MarketingPromotionInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceCode = null,
  }) {
    return _then(_$MarketingPromotionInvoiceImpl(
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketingPromotionInvoiceImpl implements _MarketingPromotionInvoice {
  _$MarketingPromotionInvoiceImpl(
      {@JsonKey(name: "invoice_code") this.invoiceCode = ''});

  factory _$MarketingPromotionInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketingPromotionInvoiceImplFromJson(json);

  @override
  @JsonKey(name: "invoice_code")
  final String invoiceCode;

  @override
  String toString() {
    return 'MarketingPromotionInvoice(invoiceCode: $invoiceCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingPromotionInvoiceImpl &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, invoiceCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingPromotionInvoiceImplCopyWith<_$MarketingPromotionInvoiceImpl>
      get copyWith => __$$MarketingPromotionInvoiceImplCopyWithImpl<
          _$MarketingPromotionInvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketingPromotionInvoiceImplToJson(
      this,
    );
  }
}

abstract class _MarketingPromotionInvoice implements MarketingPromotionInvoice {
  factory _MarketingPromotionInvoice(
          {@JsonKey(name: "invoice_code") final String invoiceCode}) =
      _$MarketingPromotionInvoiceImpl;

  factory _MarketingPromotionInvoice.fromJson(Map<String, dynamic> json) =
      _$MarketingPromotionInvoiceImpl.fromJson;

  @override
  @JsonKey(name: "invoice_code")
  String get invoiceCode;
  @override
  @JsonKey(ignore: true)
  _$$MarketingPromotionInvoiceImplCopyWith<_$MarketingPromotionInvoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceSummaryDTO _$InvoiceSummaryDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceSummaryDTO.fromJson(json);
}

/// @nodoc
mixin _$InvoiceSummaryDTO {
  @JsonKey(name: "invoice_id")
  int get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_due_date")
  String get invoiceDueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "received_date")
  String get receivedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_total_amt")
  double get invoiceTotalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_balance")
  double get invoiceBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amt")
  double get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "good_requisition_id")
  int get goodRequisitionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceSummaryDTOCopyWith<InvoiceSummaryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceSummaryDTOCopyWith<$Res> {
  factory $InvoiceSummaryDTOCopyWith(
          InvoiceSummaryDTO value, $Res Function(InvoiceSummaryDTO) then) =
      _$InvoiceSummaryDTOCopyWithImpl<$Res, InvoiceSummaryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "invoice_id") int invoiceId,
      @JsonKey(name: "invoice_due_date") String invoiceDueDate,
      @JsonKey(name: "received_date") String receivedDate,
      @JsonKey(name: "invoice_total_amt") double invoiceTotalAmount,
      @JsonKey(name: "invoice_balance") double invoiceBalance,
      @JsonKey(name: "paid_amt") double paidAmount,
      @JsonKey(name: "invoice_code") String invoiceCode,
      @JsonKey(name: "good_requisition_id") int goodRequisitionId});
}

/// @nodoc
class _$InvoiceSummaryDTOCopyWithImpl<$Res, $Val extends InvoiceSummaryDTO>
    implements $InvoiceSummaryDTOCopyWith<$Res> {
  _$InvoiceSummaryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? invoiceDueDate = null,
    Object? receivedDate = null,
    Object? invoiceTotalAmount = null,
    Object? invoiceBalance = null,
    Object? paidAmount = null,
    Object? invoiceCode = null,
    Object? goodRequisitionId = null,
  }) {
    return _then(_value.copyWith(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDueDate: null == invoiceDueDate
          ? _value.invoiceDueDate
          : invoiceDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      receivedDate: null == receivedDate
          ? _value.receivedDate
          : receivedDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceTotalAmount: null == invoiceTotalAmount
          ? _value.invoiceTotalAmount
          : invoiceTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceBalance: null == invoiceBalance
          ? _value.invoiceBalance
          : invoiceBalance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      goodRequisitionId: null == goodRequisitionId
          ? _value.goodRequisitionId
          : goodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceSummaryDTOImplCopyWith<$Res>
    implements $InvoiceSummaryDTOCopyWith<$Res> {
  factory _$$InvoiceSummaryDTOImplCopyWith(_$InvoiceSummaryDTOImpl value,
          $Res Function(_$InvoiceSummaryDTOImpl) then) =
      __$$InvoiceSummaryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "invoice_id") int invoiceId,
      @JsonKey(name: "invoice_due_date") String invoiceDueDate,
      @JsonKey(name: "received_date") String receivedDate,
      @JsonKey(name: "invoice_total_amt") double invoiceTotalAmount,
      @JsonKey(name: "invoice_balance") double invoiceBalance,
      @JsonKey(name: "paid_amt") double paidAmount,
      @JsonKey(name: "invoice_code") String invoiceCode,
      @JsonKey(name: "good_requisition_id") int goodRequisitionId});
}

/// @nodoc
class __$$InvoiceSummaryDTOImplCopyWithImpl<$Res>
    extends _$InvoiceSummaryDTOCopyWithImpl<$Res, _$InvoiceSummaryDTOImpl>
    implements _$$InvoiceSummaryDTOImplCopyWith<$Res> {
  __$$InvoiceSummaryDTOImplCopyWithImpl(_$InvoiceSummaryDTOImpl _value,
      $Res Function(_$InvoiceSummaryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? invoiceDueDate = null,
    Object? receivedDate = null,
    Object? invoiceTotalAmount = null,
    Object? invoiceBalance = null,
    Object? paidAmount = null,
    Object? invoiceCode = null,
    Object? goodRequisitionId = null,
  }) {
    return _then(_$InvoiceSummaryDTOImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDueDate: null == invoiceDueDate
          ? _value.invoiceDueDate
          : invoiceDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      receivedDate: null == receivedDate
          ? _value.receivedDate
          : receivedDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceTotalAmount: null == invoiceTotalAmount
          ? _value.invoiceTotalAmount
          : invoiceTotalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceBalance: null == invoiceBalance
          ? _value.invoiceBalance
          : invoiceBalance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      goodRequisitionId: null == goodRequisitionId
          ? _value.goodRequisitionId
          : goodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceSummaryDTOImpl extends _InvoiceSummaryDTO {
  const _$InvoiceSummaryDTOImpl(
      {@JsonKey(name: "invoice_id") this.invoiceId = -1,
      @JsonKey(name: "invoice_due_date") this.invoiceDueDate = '',
      @JsonKey(name: "received_date") this.receivedDate = '',
      @JsonKey(name: "invoice_total_amt") this.invoiceTotalAmount = 0,
      @JsonKey(name: "invoice_balance") this.invoiceBalance = 0,
      @JsonKey(name: "paid_amt") this.paidAmount = 0,
      @JsonKey(name: "invoice_code") this.invoiceCode = '',
      @JsonKey(name: "good_requisition_id") this.goodRequisitionId = -1})
      : super._();

  factory _$InvoiceSummaryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceSummaryDTOImplFromJson(json);

  @override
  @JsonKey(name: "invoice_id")
  final int invoiceId;
  @override
  @JsonKey(name: "invoice_due_date")
  final String invoiceDueDate;
  @override
  @JsonKey(name: "received_date")
  final String receivedDate;
  @override
  @JsonKey(name: "invoice_total_amt")
  final double invoiceTotalAmount;
  @override
  @JsonKey(name: "invoice_balance")
  final double invoiceBalance;
  @override
  @JsonKey(name: "paid_amt")
  final double paidAmount;
  @override
  @JsonKey(name: "invoice_code")
  final String invoiceCode;
  @override
  @JsonKey(name: "good_requisition_id")
  final int goodRequisitionId;

  @override
  String toString() {
    return 'InvoiceSummaryDTO(invoiceId: $invoiceId, invoiceDueDate: $invoiceDueDate, receivedDate: $receivedDate, invoiceTotalAmount: $invoiceTotalAmount, invoiceBalance: $invoiceBalance, paidAmount: $paidAmount, invoiceCode: $invoiceCode, goodRequisitionId: $goodRequisitionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceSummaryDTOImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.invoiceDueDate, invoiceDueDate) ||
                other.invoiceDueDate == invoiceDueDate) &&
            (identical(other.receivedDate, receivedDate) ||
                other.receivedDate == receivedDate) &&
            (identical(other.invoiceTotalAmount, invoiceTotalAmount) ||
                other.invoiceTotalAmount == invoiceTotalAmount) &&
            (identical(other.invoiceBalance, invoiceBalance) ||
                other.invoiceBalance == invoiceBalance) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.goodRequisitionId, goodRequisitionId) ||
                other.goodRequisitionId == goodRequisitionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      invoiceId,
      invoiceDueDate,
      receivedDate,
      invoiceTotalAmount,
      invoiceBalance,
      paidAmount,
      invoiceCode,
      goodRequisitionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceSummaryDTOImplCopyWith<_$InvoiceSummaryDTOImpl> get copyWith =>
      __$$InvoiceSummaryDTOImplCopyWithImpl<_$InvoiceSummaryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceSummaryDTOImplToJson(
      this,
    );
  }
}

abstract class _InvoiceSummaryDTO extends InvoiceSummaryDTO {
  const factory _InvoiceSummaryDTO(
          {@JsonKey(name: "invoice_id") final int invoiceId,
          @JsonKey(name: "invoice_due_date") final String invoiceDueDate,
          @JsonKey(name: "received_date") final String receivedDate,
          @JsonKey(name: "invoice_total_amt") final double invoiceTotalAmount,
          @JsonKey(name: "invoice_balance") final double invoiceBalance,
          @JsonKey(name: "paid_amt") final double paidAmount,
          @JsonKey(name: "invoice_code") final String invoiceCode,
          @JsonKey(name: "good_requisition_id") final int goodRequisitionId}) =
      _$InvoiceSummaryDTOImpl;
  const _InvoiceSummaryDTO._() : super._();

  factory _InvoiceSummaryDTO.fromJson(Map<String, dynamic> json) =
      _$InvoiceSummaryDTOImpl.fromJson;

  @override
  @JsonKey(name: "invoice_id")
  int get invoiceId;
  @override
  @JsonKey(name: "invoice_due_date")
  String get invoiceDueDate;
  @override
  @JsonKey(name: "received_date")
  String get receivedDate;
  @override
  @JsonKey(name: "invoice_total_amt")
  double get invoiceTotalAmount;
  @override
  @JsonKey(name: "invoice_balance")
  double get invoiceBalance;
  @override
  @JsonKey(name: "paid_amt")
  double get paidAmount;
  @override
  @JsonKey(name: "invoice_code")
  String get invoiceCode;
  @override
  @JsonKey(name: "good_requisition_id")
  int get goodRequisitionId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceSummaryDTOImplCopyWith<_$InvoiceSummaryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
