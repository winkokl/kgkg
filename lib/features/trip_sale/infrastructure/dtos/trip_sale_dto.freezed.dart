// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripSaleDTO _$TripSaleDTOFromJson(Map<String, dynamic> json) {
  return _TripSaleDTO.fromJson(json);
}

/// @nodoc
mixin _$TripSaleDTO {
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'sale_promotion_id', fromJson: _intFromJson, includeToJson: false)
  int? get salePromotionId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'sale_promotion_detail_id', fromJson: _intFromJson, includeToJson: false) @Default(0) int? salePromotionDetailId,
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
  int? get tripSaleRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_id', includeIfNull: false)
  int? get tripProposalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
  String get tripSaleRequestCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_code', includeToJson: false)
  String get tripProposalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_code', includeToJson: false)
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
  int? get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  int get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  String get warehouseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripSaleDTOCopyWith<TripSaleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleDTOCopyWith<$Res> {
  factory $TripSaleDTOCopyWith(
          TripSaleDTO value, $Res Function(TripSaleDTO) then) =
      _$TripSaleDTOCopyWithImpl<$Res, TripSaleDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') int type,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String date,
      @JsonKey(
          name: 'sale_promotion_id',
          fromJson: _intFromJson,
          includeToJson: false)
      int? salePromotionId,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'trip_sale_id', includeToJson: false) int id,
      @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
      int? tripSaleRequestId,
      @JsonKey(name: 'trip_id', includeIfNull: false) int? tripProposalId,
      @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
      String tripSaleRequestCode,
      @JsonKey(name: 'trip_code', includeToJson: false) String tripProposalCode,
      @JsonKey(name: 'trip_sale_code', includeToJson: false) String code,
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
      @JsonKey(name: 'payment_term_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'warehouse_id', includeToJson: false) int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      String warehouseName});
}

/// @nodoc
class _$TripSaleDTOCopyWithImpl<$Res, $Val extends TripSaleDTO>
    implements $TripSaleDTOCopyWith<$Res> {
  _$TripSaleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? date = null,
    Object? salePromotionId = freezed,
    Object? formattedDate = null,
    Object? id = null,
    Object? tripSaleRequestId = freezed,
    Object? tripProposalId = freezed,
    Object? tripSaleRequestCode = null,
    Object? tripProposalCode = null,
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
    Object? paymentTermsId = freezed,
    Object? customerId = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequestId: freezed == tripSaleRequestId
          ? _value.tripSaleRequestId
          : tripSaleRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      tripProposalId: freezed == tripProposalId
          ? _value.tripProposalId
          : tripProposalId // ignore: cast_nullable_to_non_nullable
              as int?,
      tripSaleRequestCode: null == tripSaleRequestCode
          ? _value.tripSaleRequestCode
          : tripSaleRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      tripProposalCode: null == tripProposalCode
          ? _value.tripProposalCode
          : tripProposalCode // ignore: cast_nullable_to_non_nullable
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
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
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
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripSaleDTOImplCopyWith<$Res>
    implements $TripSaleDTOCopyWith<$Res> {
  factory _$$TripSaleDTOImplCopyWith(
          _$TripSaleDTOImpl value, $Res Function(_$TripSaleDTOImpl) then) =
      __$$TripSaleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') int type,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String date,
      @JsonKey(
          name: 'sale_promotion_id',
          fromJson: _intFromJson,
          includeToJson: false)
      int? salePromotionId,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'trip_sale_id', includeToJson: false) int id,
      @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
      int? tripSaleRequestId,
      @JsonKey(name: 'trip_id', includeIfNull: false) int? tripProposalId,
      @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
      String tripSaleRequestCode,
      @JsonKey(name: 'trip_code', includeToJson: false) String tripProposalCode,
      @JsonKey(name: 'trip_sale_code', includeToJson: false) String code,
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
      @JsonKey(name: 'payment_term_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'warehouse_id', includeToJson: false) int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      String warehouseName});
}

/// @nodoc
class __$$TripSaleDTOImplCopyWithImpl<$Res>
    extends _$TripSaleDTOCopyWithImpl<$Res, _$TripSaleDTOImpl>
    implements _$$TripSaleDTOImplCopyWith<$Res> {
  __$$TripSaleDTOImplCopyWithImpl(
      _$TripSaleDTOImpl _value, $Res Function(_$TripSaleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? date = null,
    Object? salePromotionId = freezed,
    Object? formattedDate = null,
    Object? id = null,
    Object? tripSaleRequestId = freezed,
    Object? tripProposalId = freezed,
    Object? tripSaleRequestCode = null,
    Object? tripProposalCode = null,
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
    Object? paymentTermsId = freezed,
    Object? customerId = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
  }) {
    return _then(_$TripSaleDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequestId: freezed == tripSaleRequestId
          ? _value.tripSaleRequestId
          : tripSaleRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      tripProposalId: freezed == tripProposalId
          ? _value.tripProposalId
          : tripProposalId // ignore: cast_nullable_to_non_nullable
              as int?,
      tripSaleRequestCode: null == tripSaleRequestCode
          ? _value.tripSaleRequestCode
          : tripSaleRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      tripProposalCode: null == tripProposalCode
          ? _value.tripProposalCode
          : tripProposalCode // ignore: cast_nullable_to_non_nullable
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
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
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
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripSaleDTOImpl extends _TripSaleDTO {
  const _$TripSaleDTOImpl(
      {@JsonKey(name: 'type') this.type = 1,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = '',
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_terms', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sales_date') this.date = '',
      @JsonKey(
          name: 'sale_promotion_id',
          fromJson: _intFromJson,
          includeToJson: false)
      this.salePromotionId = 0,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      this.formattedDate = '',
      @JsonKey(name: 'trip_sale_id', includeToJson: false) this.id = -1,
      @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
      this.tripSaleRequestId,
      @JsonKey(name: 'trip_id', includeIfNull: false) this.tripProposalId,
      @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
      this.tripSaleRequestCode = '',
      @JsonKey(name: 'trip_code', includeToJson: false)
      this.tripProposalCode = '',
      @JsonKey(name: 'trip_sale_code', includeToJson: false) this.code = '',
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
      @JsonKey(name: 'business_unit_id') this.businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = '',
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: "products") final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'status', includeToJson: false) this.orderStatus = -1,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      this.rejectReason = "",
      @JsonKey(name: 'warehouse_id', includeToJson: false)
      this.warehouseId = -1,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      this.warehouseName = ""})
      : _procutDto = procutDto,
        super._();

  factory _$TripSaleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripSaleDTOImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int type;
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
  @JsonKey(
      name: 'sale_promotion_id', fromJson: _intFromJson, includeToJson: false)
  final int? salePromotionId;
// @JsonKey(name: 'sale_promotion_detail_id', fromJson: _intFromJson, includeToJson: false) @Default(0) int? salePromotionDetailId,
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  final String formattedDate;
  @override
  @JsonKey(name: 'trip_sale_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
  final int? tripSaleRequestId;
  @override
  @JsonKey(name: 'trip_id', includeIfNull: false)
  final int? tripProposalId;
  @override
  @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
  final String tripSaleRequestCode;
  @override
  @JsonKey(name: 'trip_code', includeToJson: false)
  final String tripProposalCode;
  @override
  @JsonKey(name: 'trip_sale_code', includeToJson: false)
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
  final int? paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  final int? businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;
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
  @JsonKey(name: 'status', includeToJson: false)
  final int orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  final String rejectReason;
  @override
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  final int warehouseId;
  @override
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  final String warehouseName;

  @override
  String toString() {
    return 'TripSaleDTO(type: $type, customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, date: $date, salePromotionId: $salePromotionId, formattedDate: $formattedDate, id: $id, tripSaleRequestId: $tripSaleRequestId, tripProposalId: $tripProposalId, tripSaleRequestCode: $tripSaleRequestCode, tripProposalCode: $tripProposalCode, code: $code, subtotal: $subtotal, discountAmount: $discountAmount, discountType: $discountType, discount: $discount, taxAmount: $taxAmount, taxType: $taxType, tax: $tax, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, orderStatus: $orderStatus, rejectReason: $rejectReason, warehouseId: $warehouseId, warehouseName: $warehouseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.paymentTermName, paymentTermName) ||
                other.paymentTermName == paymentTermName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripSaleRequestId, tripSaleRequestId) ||
                other.tripSaleRequestId == tripSaleRequestId) &&
            (identical(other.tripProposalId, tripProposalId) ||
                other.tripProposalId == tripProposalId) &&
            (identical(other.tripSaleRequestCode, tripSaleRequestCode) ||
                other.tripSaleRequestCode == tripSaleRequestCode) &&
            (identical(other.tripProposalCode, tripProposalCode) ||
                other.tripProposalCode == tripProposalCode) &&
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
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
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
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        customerName,
        paymentTypeName,
        paymentTermName,
        date,
        salePromotionId,
        formattedDate,
        id,
        tripSaleRequestId,
        tripProposalId,
        tripSaleRequestCode,
        tripProposalCode,
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
        businessUnitId,
        businessUnitName,
        deleteReason,
        remark,
        description,
        const DeepCollectionEquality().hash(_procutDto),
        orderStatus,
        rejectReason,
        warehouseId,
        warehouseName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleDTOImplCopyWith<_$TripSaleDTOImpl> get copyWith =>
      __$$TripSaleDTOImplCopyWithImpl<_$TripSaleDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripSaleDTOImplToJson(
      this,
    );
  }
}

abstract class _TripSaleDTO extends TripSaleDTO {
  const factory _TripSaleDTO(
      {@JsonKey(name: 'type') final int type,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sales_date') final String date,
      @JsonKey(
          name: 'sale_promotion_id',
          fromJson: _intFromJson,
          includeToJson: false)
      final int? salePromotionId,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      final String formattedDate,
      @JsonKey(name: 'trip_sale_id', includeToJson: false) final int id,
      @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
      final int? tripSaleRequestId,
      @JsonKey(name: 'trip_id', includeIfNull: false) final int? tripProposalId,
      @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
      final String tripSaleRequestCode,
      @JsonKey(name: 'trip_code', includeToJson: false)
      final String tripProposalCode,
      @JsonKey(name: 'trip_sale_code', includeToJson: false) final String code,
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
      @JsonKey(name: 'payment_term_id') final int? paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'business_unit_id') final int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: "products") final List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) final int orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      final String rejectReason,
      @JsonKey(name: 'warehouse_id', includeToJson: false)
      final int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      final String warehouseName}) = _$TripSaleDTOImpl;
  const _TripSaleDTO._() : super._();

  factory _TripSaleDTO.fromJson(Map<String, dynamic> json) =
      _$TripSaleDTOImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int get type;
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
  @JsonKey(
      name: 'sale_promotion_id', fromJson: _intFromJson, includeToJson: false)
  int? get salePromotionId;
  @override // @JsonKey(name: 'sale_promotion_detail_id', fromJson: _intFromJson, includeToJson: false) @Default(0) int? salePromotionDetailId,
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate;
  @override
  @JsonKey(name: 'trip_sale_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'trip_sale_request_id', includeIfNull: false)
  int? get tripSaleRequestId;
  @override
  @JsonKey(name: 'trip_id', includeIfNull: false)
  int? get tripProposalId;
  @override
  @JsonKey(name: 'trip_sale_request_code', includeToJson: false)
  String get tripSaleRequestCode;
  @override
  @JsonKey(name: 'trip_code', includeToJson: false)
  String get tripProposalCode;
  @override
  @JsonKey(name: 'trip_sale_code', includeToJson: false)
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
  int? get paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
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
  @JsonKey(name: 'status', includeToJson: false)
  int get orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason;
  @override
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  int get warehouseId;
  @override
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  String get warehouseName;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleDTOImplCopyWith<_$TripSaleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
