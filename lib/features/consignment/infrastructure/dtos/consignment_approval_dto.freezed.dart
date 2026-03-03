// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_approval_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentApprovalDTO _$ConsignmentApprovalDTOFromJson(
    Map<String, dynamic> json) {
  return _ConsignmentApprovalDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentApprovalDTO {
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_request_id', includeIfNull: false)
  int? get consignmentRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_request_code', includeToJson: false)
  String get consignmentRequestCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  double get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  double get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_type')
  String get taxType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_charges')
  double get otherCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total_amount')
  double get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_id')
  int get paymentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_term_id')
  int get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status', includeToJson: false)
  int get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentApprovalDTOCopyWith<ConsignmentApprovalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentApprovalDTOCopyWith<$Res> {
  factory $ConsignmentApprovalDTOCopyWith(ConsignmentApprovalDTO value,
          $Res Function(ConsignmentApprovalDTO) then) =
      _$ConsignmentApprovalDTOCopyWithImpl<$Res, ConsignmentApprovalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String date,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'consignment_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_request_id', includeIfNull: false)
      int? consignmentRequestId,
      @JsonKey(name: 'consignment_request_code', includeToJson: false)
      String consignmentRequestCode,
      @JsonKey(name: 'consignment_code', includeToJson: false) String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_term_id') int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'order_status', includeToJson: false) int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class _$ConsignmentApprovalDTOCopyWithImpl<$Res,
        $Val extends ConsignmentApprovalDTO>
    implements $ConsignmentApprovalDTOCopyWith<$Res> {
  _$ConsignmentApprovalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? date = null,
    Object? formattedDate = null,
    Object? id = null,
    Object? consignmentRequestId = freezed,
    Object? consignmentRequestCode = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? discount = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? tax = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? businessUnitName = null,
  }) {
    return _then(_value.copyWith(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTermName: null == paymentTermName
          ? _value.paymentTermName
          : paymentTermName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentRequestId: freezed == consignmentRequestId
          ? _value.consignmentRequestId
          : consignmentRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentRequestCode: null == consignmentRequestCode
          ? _value.consignmentRequestCode
          : consignmentRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTermsId: null == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value.procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsignmentApprovalDTOImplCopyWith<$Res>
    implements $ConsignmentApprovalDTOCopyWith<$Res> {
  factory _$$ConsignmentApprovalDTOImplCopyWith(
          _$ConsignmentApprovalDTOImpl value,
          $Res Function(_$ConsignmentApprovalDTOImpl) then) =
      __$$ConsignmentApprovalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String date,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'consignment_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_request_id', includeIfNull: false)
      int? consignmentRequestId,
      @JsonKey(name: 'consignment_request_code', includeToJson: false)
      String consignmentRequestCode,
      @JsonKey(name: 'consignment_code', includeToJson: false) String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_term_id') int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'order_status', includeToJson: false) int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName});
}

/// @nodoc
class __$$ConsignmentApprovalDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentApprovalDTOCopyWithImpl<$Res,
        _$ConsignmentApprovalDTOImpl>
    implements _$$ConsignmentApprovalDTOImplCopyWith<$Res> {
  __$$ConsignmentApprovalDTOImplCopyWithImpl(
      _$ConsignmentApprovalDTOImpl _value,
      $Res Function(_$ConsignmentApprovalDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? date = null,
    Object? formattedDate = null,
    Object? id = null,
    Object? consignmentRequestId = freezed,
    Object? consignmentRequestCode = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? discount = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? tax = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? businessUnitName = null,
  }) {
    return _then(_$ConsignmentApprovalDTOImpl(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTermName: null == paymentTermName
          ? _value.paymentTermName
          : paymentTermName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentRequestId: freezed == consignmentRequestId
          ? _value.consignmentRequestId
          : consignmentRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentRequestCode: null == consignmentRequestCode
          ? _value.consignmentRequestCode
          : consignmentRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTermsId: null == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value._procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
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
class _$ConsignmentApprovalDTOImpl extends _ConsignmentApprovalDTO {
  const _$ConsignmentApprovalDTOImpl(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = '',
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_terms', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sales_date') this.date = '',
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      this.formattedDate = '',
      @JsonKey(name: 'consignment_id', includeToJson: false) this.id = -1,
      @JsonKey(name: 'consignment_request_id', includeIfNull: false)
      this.consignmentRequestId,
      @JsonKey(name: 'consignment_request_code', includeToJson: false)
      this.consignmentRequestCode = '',
      @JsonKey(name: 'consignment_code', includeToJson: false) this.code = '',
      @JsonKey(name: 'sub_total') this.subtotal = 0,
      @JsonKey(name: 'discount_amount') this.discountAmount = 0,
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'tax_amount') this.taxAmount = 0,
      @JsonKey(name: 'tax_type') this.taxType = '',
      @JsonKey(name: 'tax') this.tax = 0,
      @JsonKey(name: 'other_charges') this.otherCharges = 0,
      @JsonKey(name: 'grand_total_amount') this.grandTotal = 0,
      @JsonKey(name: 'payment_type_id') this.paymentTypeId = -1,
      @JsonKey(name: 'payment_term_id') this.paymentTermsId = -1,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: "products") final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'order_status', includeToJson: false)
      this.orderStatus = -1,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      this.rejectReason = "",
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = ''})
      : _procutDto = procutDto,
        super._();

  factory _$ConsignmentApprovalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentApprovalDTOImplFromJson(json);

  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  final String customerName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  final String paymentTypeName;
  @override
  @JsonKey(name: 'payment_terms', includeToJson: false)
  final String paymentTermName;
  @override
  @JsonKey(name: 'sales_date')
  final String date;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  final String formattedDate;
  @override
  @JsonKey(name: 'consignment_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'consignment_request_id', includeIfNull: false)
  final int? consignmentRequestId;
  @override
  @JsonKey(name: 'consignment_request_code', includeToJson: false)
  final String consignmentRequestCode;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  final String code;
  @override
  @JsonKey(name: 'sub_total')
  final double subtotal;
  @override
  @JsonKey(name: 'discount_amount')
  final double discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  @JsonKey(name: 'discount')
  final double discount;
  @override
  @JsonKey(name: 'tax_amount')
  final double taxAmount;
  @override
  @JsonKey(name: 'tax_type')
  final String taxType;
  @override
  @JsonKey(name: 'tax')
  final double tax;
  @override
  @JsonKey(name: 'other_charges')
  final double otherCharges;
  @override
  @JsonKey(name: 'grand_total_amount')
  final double grandTotal;
  @override
  @JsonKey(name: 'payment_type_id')
  final int paymentTypeId;
  @override
  @JsonKey(name: 'payment_term_id')
  final int paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'delete_reason', includeToJson: false)
  final String deleteReason;
  @override
  @JsonKey(name: 'remark')
  final String remark;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<ProductDTO> _procutDto;
  @override
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto {
    if (_procutDto is EqualUnmodifiableListView) return _procutDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_procutDto);
  }

  @override
  @JsonKey(name: 'order_status', includeToJson: false)
  final int orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  final String rejectReason;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;

  @override
  String toString() {
    return 'ConsignmentApprovalDTO(customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, date: $date, formattedDate: $formattedDate, id: $id, consignmentRequestId: $consignmentRequestId, consignmentRequestCode: $consignmentRequestCode, code: $code, subtotal: $subtotal, discountAmount: $discountAmount, discountType: $discountType, discount: $discount, taxAmount: $taxAmount, taxType: $taxType, tax: $tax, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, orderStatus: $orderStatus, rejectReason: $rejectReason, businessUnitName: $businessUnitName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentApprovalDTOImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.paymentTermName, paymentTermName) ||
                other.paymentTermName == paymentTermName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentRequestId, consignmentRequestId) ||
                other.consignmentRequestId == consignmentRequestId) &&
            (identical(other.consignmentRequestCode, consignmentRequestCode) ||
                other.consignmentRequestCode == consignmentRequestCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.otherCharges, otherCharges) ||
                other.otherCharges == otherCharges) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.paymentTermsId, paymentTermsId) ||
                other.paymentTermsId == paymentTermsId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._procutDto, _procutDto) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerName,
        paymentTypeName,
        paymentTermName,
        date,
        formattedDate,
        id,
        consignmentRequestId,
        consignmentRequestCode,
        code,
        subtotal,
        discountAmount,
        discountType,
        discount,
        taxAmount,
        taxType,
        tax,
        otherCharges,
        grandTotal,
        paymentTypeId,
        paymentTermsId,
        customerId,
        deleteReason,
        remark,
        description,
        const DeepCollectionEquality().hash(_procutDto),
        orderStatus,
        rejectReason,
        businessUnitName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentApprovalDTOImplCopyWith<_$ConsignmentApprovalDTOImpl>
      get copyWith => __$$ConsignmentApprovalDTOImplCopyWithImpl<
          _$ConsignmentApprovalDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentApprovalDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentApprovalDTO extends ConsignmentApprovalDTO {
  const factory _ConsignmentApprovalDTO(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sales_date') final String date,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      final String formattedDate,
      @JsonKey(name: 'consignment_id', includeToJson: false) final int id,
      @JsonKey(name: 'consignment_request_id', includeIfNull: false)
      final int? consignmentRequestId,
      @JsonKey(name: 'consignment_request_code', includeToJson: false)
      final String consignmentRequestCode,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'sub_total') final double subtotal,
      @JsonKey(name: 'discount_amount') final double discountAmount,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'discount') final double discount,
      @JsonKey(name: 'tax_amount') final double taxAmount,
      @JsonKey(name: 'tax_type') final String taxType,
      @JsonKey(name: 'tax') final double tax,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total_amount') final double grandTotal,
      @JsonKey(name: 'payment_type_id') final int paymentTypeId,
      @JsonKey(name: 'payment_term_id') final int paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: "products") final List<ProductDTO> procutDto,
      @JsonKey(name: 'order_status', includeToJson: false)
      final int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      final String rejectReason,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName}) = _$ConsignmentApprovalDTOImpl;
  const _ConsignmentApprovalDTO._() : super._();

  factory _ConsignmentApprovalDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentApprovalDTOImpl.fromJson;

  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName;
  @override
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName;
  @override
  @JsonKey(name: 'sales_date')
  String get date;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate;
  @override
  @JsonKey(name: 'consignment_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'consignment_request_id', includeIfNull: false)
  int? get consignmentRequestId;
  @override
  @JsonKey(name: 'consignment_request_code', includeToJson: false)
  String get consignmentRequestCode;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get code;
  @override
  @JsonKey(name: 'sub_total')
  double get subtotal;
  @override
  @JsonKey(name: 'discount_amount')
  double get discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(name: 'tax_amount')
  double get taxAmount;
  @override
  @JsonKey(name: 'tax_type')
  String get taxType;
  @override
  @JsonKey(name: 'tax')
  double get tax;
  @override
  @JsonKey(name: 'other_charges')
  double get otherCharges;
  @override
  @JsonKey(name: 'grand_total_amount')
  double get grandTotal;
  @override
  @JsonKey(name: 'payment_type_id')
  int get paymentTypeId;
  @override
  @JsonKey(name: 'payment_term_id')
  int get paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason;
  @override
  @JsonKey(name: 'remark')
  String get remark;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto;
  @override
  @JsonKey(name: 'order_status', includeToJson: false)
  int get orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentApprovalDTOImplCopyWith<_$ConsignmentApprovalDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
