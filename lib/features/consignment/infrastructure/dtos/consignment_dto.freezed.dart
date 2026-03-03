// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentDTO _$ConsignmentDTOFromJson(Map<String, dynamic> json) {
  return _ConsignmentDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentDTO {
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
  @JsonKey(name: 'consignment_contract_id')
  int get consignmentContractId => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get consignmentContractCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  double get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  double get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_type')
  String get taxType => throw _privateConstructorUsedError;
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
  @JsonKey(name: "region_id")
  int get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name", includeToJson: false)
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_method")
  int get consignmentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentDTOCopyWith<ConsignmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentDTOCopyWith<$Res> {
  factory $ConsignmentDTOCopyWith(
          ConsignmentDTO value, $Res Function(ConsignmentDTO) then) =
      _$ConsignmentDTOCopyWithImpl<$Res, ConsignmentDTO>;
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
      @JsonKey(name: 'consignment_contract_id') int consignmentContractId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      String consignmentContractCode,
      @JsonKey(name: 'consignment_code', includeToJson: false) String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_term_id') int paymentTermsId,
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
      @JsonKey(name: "region_id") int regionId,
      @JsonKey(name: "region_name", includeToJson: false) String regionName,
      @JsonKey(name: "consignment_method") int consignmentMethod});
}

/// @nodoc
class _$ConsignmentDTOCopyWithImpl<$Res, $Val extends ConsignmentDTO>
    implements $ConsignmentDTOCopyWith<$Res> {
  _$ConsignmentDTOCopyWithImpl(this._value, this._then);

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
    Object? consignmentContractId = null,
    Object? consignmentContractCode = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? consignmentMethod = null,
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
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractCode: null == consignmentContractCode
          ? _value.consignmentContractCode
          : consignmentContractCode // ignore: cast_nullable_to_non_nullable
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
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
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsignmentDTOImplCopyWith<$Res>
    implements $ConsignmentDTOCopyWith<$Res> {
  factory _$$ConsignmentDTOImplCopyWith(_$ConsignmentDTOImpl value,
          $Res Function(_$ConsignmentDTOImpl) then) =
      __$$ConsignmentDTOImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'consignment_contract_id') int consignmentContractId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      String consignmentContractCode,
      @JsonKey(name: 'consignment_code', includeToJson: false) String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_term_id') int paymentTermsId,
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
      @JsonKey(name: "region_id") int regionId,
      @JsonKey(name: "region_name", includeToJson: false) String regionName,
      @JsonKey(name: "consignment_method") int consignmentMethod});
}

/// @nodoc
class __$$ConsignmentDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentDTOCopyWithImpl<$Res, _$ConsignmentDTOImpl>
    implements _$$ConsignmentDTOImplCopyWith<$Res> {
  __$$ConsignmentDTOImplCopyWithImpl(
      _$ConsignmentDTOImpl _value, $Res Function(_$ConsignmentDTOImpl) _then)
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
    Object? consignmentContractId = null,
    Object? consignmentContractCode = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? consignmentMethod = null,
  }) {
    return _then(_$ConsignmentDTOImpl(
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
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractCode: null == consignmentContractCode
          ? _value.consignmentContractCode
          : consignmentContractCode // ignore: cast_nullable_to_non_nullable
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
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
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsignmentDTOImpl extends _ConsignmentDTO {
  const _$ConsignmentDTOImpl(
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
      @JsonKey(name: 'consignment_contract_id') this.consignmentContractId = -1,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      this.consignmentContractCode = '',
      @JsonKey(name: 'consignment_code', includeToJson: false) this.code = '',
      @JsonKey(name: 'sub_total') this.subtotal = 0,
      @JsonKey(name: 'discount_amount') this.discountAmount = 0,
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'tax_amount') this.taxAmount = 0,
      @JsonKey(name: 'tax') this.tax = 0,
      @JsonKey(name: 'tax_type') this.taxType = '',
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
      @JsonKey(name: "region_id") this.regionId = -1,
      @JsonKey(name: "region_name", includeToJson: false) this.regionName = "",
      @JsonKey(name: "consignment_method") this.consignmentMethod = 1})
      : _procutDto = procutDto,
        super._();

  factory _$ConsignmentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentDTOImplFromJson(json);

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
  @JsonKey(name: 'consignment_contract_id')
  final int consignmentContractId;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  final String consignmentContractCode;
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
  @JsonKey(name: 'discount')
  final double discount;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  @JsonKey(name: 'tax_amount')
  final double taxAmount;
  @override
  @JsonKey(name: 'tax')
  final double tax;
  @override
  @JsonKey(name: 'tax_type')
  final String taxType;
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
  @JsonKey(name: "region_id")
  final int regionId;
  @override
  @JsonKey(name: "region_name", includeToJson: false)
  final String regionName;
  @override
  @JsonKey(name: "consignment_method")
  final int consignmentMethod;

  @override
  String toString() {
    return 'ConsignmentDTO(customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, date: $date, formattedDate: $formattedDate, id: $id, consignmentContractId: $consignmentContractId, consignmentContractCode: $consignmentContractCode, code: $code, subtotal: $subtotal, discountAmount: $discountAmount, discount: $discount, discountType: $discountType, taxAmount: $taxAmount, tax: $tax, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, orderStatus: $orderStatus, rejectReason: $rejectReason, regionId: $regionId, regionName: $regionName, consignmentMethod: $consignmentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentDTOImpl &&
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
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId) &&
            (identical(
                    other.consignmentContractCode, consignmentContractCode) ||
                other.consignmentContractCode == consignmentContractCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
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
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.consignmentMethod, consignmentMethod) ||
                other.consignmentMethod == consignmentMethod));
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
        consignmentContractId,
        consignmentContractCode,
        code,
        subtotal,
        discountAmount,
        discount,
        discountType,
        taxAmount,
        tax,
        taxType,
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
        regionId,
        regionName,
        consignmentMethod
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentDTOImplCopyWith<_$ConsignmentDTOImpl> get copyWith =>
      __$$ConsignmentDTOImplCopyWithImpl<_$ConsignmentDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentDTO extends ConsignmentDTO {
  const factory _ConsignmentDTO(
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
      @JsonKey(name: 'consignment_contract_id') final int consignmentContractId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      final String consignmentContractCode,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'sub_total') final double subtotal,
      @JsonKey(name: 'discount_amount') final double discountAmount,
      @JsonKey(name: 'discount') final double discount,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'tax_amount') final double taxAmount,
      @JsonKey(name: 'tax') final double tax,
      @JsonKey(name: 'tax_type') final String taxType,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total_amount') final double grandTotal,
      @JsonKey(name: 'payment_type_id') final int paymentTypeId,
      @JsonKey(name: 'payment_term_id') final int paymentTermsId,
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
      @JsonKey(name: "region_id") final int regionId,
      @JsonKey(name: "region_name", includeToJson: false)
      final String regionName,
      @JsonKey(name: "consignment_method")
      final int consignmentMethod}) = _$ConsignmentDTOImpl;
  const _ConsignmentDTO._() : super._();

  factory _ConsignmentDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentDTOImpl.fromJson;

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
  @JsonKey(name: 'consignment_contract_id')
  int get consignmentContractId;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get consignmentContractCode;
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
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  @JsonKey(name: 'tax_amount')
  double get taxAmount;
  @override
  @JsonKey(name: 'tax')
  double get tax;
  @override
  @JsonKey(name: 'tax_type')
  String get taxType;
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
  @JsonKey(name: "region_id")
  int get regionId;
  @override
  @JsonKey(name: "region_name", includeToJson: false)
  String get regionName;
  @override
  @JsonKey(name: "consignment_method")
  int get consignmentMethod;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentDTOImplCopyWith<_$ConsignmentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
