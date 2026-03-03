// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecondarySaleReceiptDTO _$SecondarySaleReceiptDTOFromJson(
    Map<String, dynamic> json) {
  return _SecondarySaleReceiptDTO.fromJson(json);
}

/// @nodoc
mixin _$SecondarySaleReceiptDTO {
  @JsonKey(name: "secondary_sales_payment_receive_id", includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  String get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_invoice_id")
  int get secondarySalesInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceData")
  List<InvoiceDataDTO> get invoiceDataDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_issue_date', includeToJson: false)
  String get goodIssueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondarySaleReceiptDTOCopyWith<SecondarySaleReceiptDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleReceiptDTOCopyWith<$Res> {
  factory $SecondarySaleReceiptDTOCopyWith(SecondarySaleReceiptDTO value,
          $Res Function(SecondarySaleReceiptDTO) then) =
      _$SecondarySaleReceiptDTOCopyWithImpl<$Res, SecondarySaleReceiptDTO>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "secondary_sales_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "secondary_sales_invoice_id") int secondarySalesInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "invoiceData") List<InvoiceDataDTO> invoiceDataDto,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'first_issue_date', includeToJson: false)
      String goodIssueDate,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class _$SecondarySaleReceiptDTOCopyWithImpl<$Res,
        $Val extends SecondarySaleReceiptDTO>
    implements $SecondarySaleReceiptDTOCopyWith<$Res> {
  _$SecondarySaleReceiptDTOCopyWithImpl(this._value, this._then);

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
    Object? secondarySalesInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? invoiceDataDto = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
    Object? signUrl = null,
    Object? description = null,
    Object? goodIssueDate = null,
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
      secondarySalesInvoiceId: null == secondarySalesInvoiceId
          ? _value.secondarySalesInvoiceId
          : secondarySalesInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDataDto: null == invoiceDataDto
          ? _value.invoiceDataDto
          : invoiceDataDto // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDataDTO>,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goodIssueDate: null == goodIssueDate
          ? _value.goodIssueDate
          : goodIssueDate // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondarySaleReceiptDTOImplCopyWith<$Res>
    implements $SecondarySaleReceiptDTOCopyWith<$Res> {
  factory _$$SecondarySaleReceiptDTOImplCopyWith(
          _$SecondarySaleReceiptDTOImpl value,
          $Res Function(_$SecondarySaleReceiptDTOImpl) then) =
      __$$SecondarySaleReceiptDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "secondary_sales_payment_receive_id", includeToJson: false)
      int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false) String code,
      @JsonKey(name: "secondary_sales_invoice_id") int secondarySalesInvoiceId,
      @JsonKey(name: "payment_receive_amount") double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") String paymentReceiveDate,
      @JsonKey(name: "invoiceData") List<InvoiceDataDTO> invoiceDataDto,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'first_issue_date', includeToJson: false)
      String goodIssueDate,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class __$$SecondarySaleReceiptDTOImplCopyWithImpl<$Res>
    extends _$SecondarySaleReceiptDTOCopyWithImpl<$Res,
        _$SecondarySaleReceiptDTOImpl>
    implements _$$SecondarySaleReceiptDTOImplCopyWith<$Res> {
  __$$SecondarySaleReceiptDTOImplCopyWithImpl(
      _$SecondarySaleReceiptDTOImpl _value,
      $Res Function(_$SecondarySaleReceiptDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceCode = null,
    Object? code = null,
    Object? secondarySalesInvoiceId = null,
    Object? paymentReceiveAmount = null,
    Object? paymentReceiveDate = null,
    Object? invoiceDataDto = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
    Object? signUrl = null,
    Object? description = null,
    Object? goodIssueDate = null,
    Object? businessUnitName = null,
  }) {
    return _then(_$SecondarySaleReceiptDTOImpl(
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
      secondarySalesInvoiceId: null == secondarySalesInvoiceId
          ? _value.secondarySalesInvoiceId
          : secondarySalesInvoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceiveAmount: null == paymentReceiveAmount
          ? _value.paymentReceiveAmount
          : paymentReceiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDataDto: null == invoiceDataDto
          ? _value._invoiceDataDto
          : invoiceDataDto // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDataDTO>,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goodIssueDate: null == goodIssueDate
          ? _value.goodIssueDate
          : goodIssueDate // ignore: cast_nullable_to_non_nullable
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
class _$SecondarySaleReceiptDTOImpl extends _SecondarySaleReceiptDTO {
  const _$SecondarySaleReceiptDTOImpl(
      {@JsonKey(
          name: "secondary_sales_payment_receive_id", includeToJson: false)
      this.id = -1,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      this.invoiceCode = '',
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      this.code = '',
      @JsonKey(name: "secondary_sales_invoice_id")
      this.secondarySalesInvoiceId = -1,
      @JsonKey(name: "payment_receive_amount") this.paymentReceiveAmount = 0,
      @JsonKey(name: "payment_receive_date") this.paymentReceiveDate = '',
      @JsonKey(name: "invoiceData")
      final List<InvoiceDataDTO> invoiceDataDto = const [],
      @JsonKey(name: 'payment_method_id') this.paymentMethodId = -1,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      this.paymentMethodName = "",
      @JsonKey(name: 'signature', includeToJson: false) this.signUrl = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'first_issue_date', includeToJson: false)
      this.goodIssueDate = "",
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = ''})
      : _invoiceDataDto = invoiceDataDto,
        super._();

  factory _$SecondarySaleReceiptDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondarySaleReceiptDTOImplFromJson(json);

  @override
  @JsonKey(name: "secondary_sales_payment_receive_id", includeToJson: false)
  final int id;
  @override
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  final String invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "secondary_sales_invoice_id")
  final int secondarySalesInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  final double paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  final String paymentReceiveDate;
  final List<InvoiceDataDTO> _invoiceDataDto;
  @override
  @JsonKey(name: "invoiceData")
  List<InvoiceDataDTO> get invoiceDataDto {
    if (_invoiceDataDto is EqualUnmodifiableListView) return _invoiceDataDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoiceDataDto);
  }

  @override
  @JsonKey(name: 'payment_method_id')
  final int paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  final String paymentMethodName;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  final String signUrl;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'first_issue_date', includeToJson: false)
  final String goodIssueDate;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;

  @override
  String toString() {
    return 'SecondarySaleReceiptDTO(id: $id, invoiceCode: $invoiceCode, code: $code, secondarySalesInvoiceId: $secondarySalesInvoiceId, paymentReceiveAmount: $paymentReceiveAmount, paymentReceiveDate: $paymentReceiveDate, invoiceDataDto: $invoiceDataDto, paymentMethodId: $paymentMethodId, paymentMethodName: $paymentMethodName, signUrl: $signUrl, description: $description, goodIssueDate: $goodIssueDate, businessUnitName: $businessUnitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleReceiptDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(
                    other.secondarySalesInvoiceId, secondarySalesInvoiceId) ||
                other.secondarySalesInvoiceId == secondarySalesInvoiceId) &&
            (identical(other.paymentReceiveAmount, paymentReceiveAmount) ||
                other.paymentReceiveAmount == paymentReceiveAmount) &&
            (identical(other.paymentReceiveDate, paymentReceiveDate) ||
                other.paymentReceiveDate == paymentReceiveDate) &&
            const DeepCollectionEquality()
                .equals(other._invoiceDataDto, _invoiceDataDto) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.goodIssueDate, goodIssueDate) ||
                other.goodIssueDate == goodIssueDate) &&
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
      secondarySalesInvoiceId,
      paymentReceiveAmount,
      paymentReceiveDate,
      const DeepCollectionEquality().hash(_invoiceDataDto),
      paymentMethodId,
      paymentMethodName,
      signUrl,
      description,
      goodIssueDate,
      businessUnitName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleReceiptDTOImplCopyWith<_$SecondarySaleReceiptDTOImpl>
      get copyWith => __$$SecondarySaleReceiptDTOImplCopyWithImpl<
          _$SecondarySaleReceiptDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondarySaleReceiptDTOImplToJson(
      this,
    );
  }
}

abstract class _SecondarySaleReceiptDTO extends SecondarySaleReceiptDTO {
  const factory _SecondarySaleReceiptDTO(
      {@JsonKey(
          name: "secondary_sales_payment_receive_id", includeToJson: false)
      final int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      final String invoiceCode,
      @JsonKey(name: "payment_receive_code", includeToJson: false)
      final String code,
      @JsonKey(name: "secondary_sales_invoice_id")
      final int secondarySalesInvoiceId,
      @JsonKey(name: "payment_receive_amount")
      final double paymentReceiveAmount,
      @JsonKey(name: "payment_receive_date") final String paymentReceiveDate,
      @JsonKey(name: "invoiceData") final List<InvoiceDataDTO> invoiceDataDto,
      @JsonKey(name: 'payment_method_id') final int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      final String paymentMethodName,
      @JsonKey(name: 'signature', includeToJson: false) final String signUrl,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'first_issue_date', includeToJson: false)
      final String goodIssueDate,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName}) = _$SecondarySaleReceiptDTOImpl;
  const _SecondarySaleReceiptDTO._() : super._();

  factory _SecondarySaleReceiptDTO.fromJson(Map<String, dynamic> json) =
      _$SecondarySaleReceiptDTOImpl.fromJson;

  @override
  @JsonKey(name: "secondary_sales_payment_receive_id", includeToJson: false)
  int get id;
  @override
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  String get invoiceCode;
  @override
  @JsonKey(name: "payment_receive_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "secondary_sales_invoice_id")
  int get secondarySalesInvoiceId;
  @override
  @JsonKey(name: "payment_receive_amount")
  double get paymentReceiveAmount;
  @override
  @JsonKey(name: "payment_receive_date")
  String get paymentReceiveDate;
  @override
  @JsonKey(name: "invoiceData")
  List<InvoiceDataDTO> get invoiceDataDto;
  @override
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'first_issue_date', includeToJson: false)
  String get goodIssueDate;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleReceiptDTOImplCopyWith<_$SecondarySaleReceiptDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceDataDTO _$InvoiceDataDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceDataDTO.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDataDTO {
  @JsonKey(name: "warehouse_id")
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "due_date")
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_id")
  int get paymentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total_amount")
  double get grandTotalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "business_unit_id")
  int get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDataDTOCopyWith<InvoiceDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataDTOCopyWith<$Res> {
  factory $InvoiceDataDTOCopyWith(
          InvoiceDataDTO value, $Res Function(InvoiceDataDTO) then) =
      _$InvoiceDataDTOCopyWithImpl<$Res, InvoiceDataDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "warehouse_id") int warehouseId,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: "payment_type_id") int paymentTypeId,
      @JsonKey(name: "grand_total_amount") double grandTotalAmount,
      @JsonKey(name: "business_unit_id") int businessUnitId,
      @JsonKey(name: "balance") double balance});
}

/// @nodoc
class _$InvoiceDataDTOCopyWithImpl<$Res, $Val extends InvoiceDataDTO>
    implements $InvoiceDataDTOCopyWith<$Res> {
  _$InvoiceDataDTOCopyWithImpl(this._value, this._then);

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
    Object? businessUnitId = null,
    Object? balance = null,
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
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDataDTOImplCopyWith<$Res>
    implements $InvoiceDataDTOCopyWith<$Res> {
  factory _$$InvoiceDataDTOImplCopyWith(_$InvoiceDataDTOImpl value,
          $Res Function(_$InvoiceDataDTOImpl) then) =
      __$$InvoiceDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "warehouse_id") int warehouseId,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: "payment_type_id") int paymentTypeId,
      @JsonKey(name: "grand_total_amount") double grandTotalAmount,
      @JsonKey(name: "business_unit_id") int businessUnitId,
      @JsonKey(name: "balance") double balance});
}

/// @nodoc
class __$$InvoiceDataDTOImplCopyWithImpl<$Res>
    extends _$InvoiceDataDTOCopyWithImpl<$Res, _$InvoiceDataDTOImpl>
    implements _$$InvoiceDataDTOImplCopyWith<$Res> {
  __$$InvoiceDataDTOImplCopyWithImpl(
      _$InvoiceDataDTOImpl _value, $Res Function(_$InvoiceDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseId = null,
    Object? dueDate = null,
    Object? paymentTypeId = null,
    Object? grandTotalAmount = null,
    Object? businessUnitId = null,
    Object? balance = null,
  }) {
    return _then(_$InvoiceDataDTOImpl(
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
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceDataDTOImpl implements _InvoiceDataDTO {
  const _$InvoiceDataDTOImpl(
      {@JsonKey(name: "warehouse_id") this.warehouseId = -1,
      @JsonKey(name: "due_date") this.dueDate = '',
      @JsonKey(name: "payment_type_id") this.paymentTypeId = -1,
      @JsonKey(name: "grand_total_amount") this.grandTotalAmount = 0,
      @JsonKey(name: "business_unit_id") this.businessUnitId = -1,
      @JsonKey(name: "balance") this.balance = 0});

  factory _$InvoiceDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDataDTOImplFromJson(json);

  @override
  @JsonKey(name: "warehouse_id")
  final int warehouseId;
  @override
  @JsonKey(name: "due_date")
  final String dueDate;
  @override
  @JsonKey(name: "payment_type_id")
  final int paymentTypeId;
  @override
  @JsonKey(name: "grand_total_amount")
  final double grandTotalAmount;
  @override
  @JsonKey(name: "business_unit_id")
  final int businessUnitId;
  @override
  @JsonKey(name: "balance")
  final double balance;

  @override
  String toString() {
    return 'InvoiceDataDTO(warehouseId: $warehouseId, dueDate: $dueDate, paymentTypeId: $paymentTypeId, grandTotalAmount: $grandTotalAmount, businessUnitId: $businessUnitId, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDataDTOImpl &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.grandTotalAmount, grandTotalAmount) ||
                other.grandTotalAmount == grandTotalAmount) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, warehouseId, dueDate,
      paymentTypeId, grandTotalAmount, businessUnitId, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDataDTOImplCopyWith<_$InvoiceDataDTOImpl> get copyWith =>
      __$$InvoiceDataDTOImplCopyWithImpl<_$InvoiceDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDataDTOImplToJson(
      this,
    );
  }
}

abstract class _InvoiceDataDTO implements InvoiceDataDTO {
  const factory _InvoiceDataDTO(
      {@JsonKey(name: "warehouse_id") final int warehouseId,
      @JsonKey(name: "due_date") final String dueDate,
      @JsonKey(name: "payment_type_id") final int paymentTypeId,
      @JsonKey(name: "grand_total_amount") final double grandTotalAmount,
      @JsonKey(name: "business_unit_id") final int businessUnitId,
      @JsonKey(name: "balance") final double balance}) = _$InvoiceDataDTOImpl;

  factory _InvoiceDataDTO.fromJson(Map<String, dynamic> json) =
      _$InvoiceDataDTOImpl.fromJson;

  @override
  @JsonKey(name: "warehouse_id")
  int get warehouseId;
  @override
  @JsonKey(name: "due_date")
  String get dueDate;
  @override
  @JsonKey(name: "payment_type_id")
  int get paymentTypeId;
  @override
  @JsonKey(name: "grand_total_amount")
  double get grandTotalAmount;
  @override
  @JsonKey(name: "business_unit_id")
  int get businessUnitId;
  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceDataDTOImplCopyWith<_$InvoiceDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
