// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentInvoiceDTO _$ConsignmentInvoiceDTOFromJson(
    Map<String, dynamic> json) {
  return _ConsignmentInvoiceDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentInvoiceDTO {
  @JsonKey(name: 'consignment_invoice_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_type_id')
  int get consignmentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_date")
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "due_date")
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_term', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date', includeToJson: false)
  String get saleDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_id')
  int get consignmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get consignmentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance', includeToJson: false)
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'payment_term_id', includeToJson: false)
  int get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  String get warehouseName => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  int get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<ConsignmentReceiptDTO> get paymentReceivedHistoryDto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "region_id")
  int get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name", includeToJson: false)
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_method")
  int get consignmentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentInvoiceDTOCopyWith<ConsignmentInvoiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentInvoiceDTOCopyWith<$Res> {
  factory $ConsignmentInvoiceDTOCopyWith(ConsignmentInvoiceDTO value,
          $Res Function(ConsignmentInvoiceDTO) then) =
      _$ConsignmentInvoiceDTOCopyWithImpl<$Res, ConsignmentInvoiceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'consignment_invoice_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_type_id') int consignmentTypeId,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      String code,
      @JsonKey(name: "invoice_date") String invoiceDate,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_term', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date', includeToJson: false) String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'consignment_id') int consignmentId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      String consignmentCode,
      @JsonKey(name: 'balance', includeToJson: false) double balance,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
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
      @JsonKey(name: 'payment_term_id', includeToJson: false)
      int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'warehouse_id', includeToJson: false) int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      String warehouseName,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      List<ConsignmentReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: "region_id") int regionId,
      @JsonKey(name: "region_name", includeToJson: false) String regionName,
      @JsonKey(name: "consignment_method") int consignmentMethod});
}

/// @nodoc
class _$ConsignmentInvoiceDTOCopyWithImpl<$Res,
        $Val extends ConsignmentInvoiceDTO>
    implements $ConsignmentInvoiceDTOCopyWith<$Res> {
  _$ConsignmentInvoiceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? saleDate = null,
    Object? formattedDate = null,
    Object? consignmentId = null,
    Object? consignmentCode = null,
    Object? balance = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
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
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? procutDto = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistoryDto = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? consignmentMethod = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
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
      saleDate: null == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentId: null == consignmentId
          ? _value.consignmentId
          : consignmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentCode: null == consignmentCode
          ? _value.consignmentCode
          : consignmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
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
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value.procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value.paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<ConsignmentReceiptDTO>,
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
abstract class _$$ConsignmentInvoiceDTOImplCopyWith<$Res>
    implements $ConsignmentInvoiceDTOCopyWith<$Res> {
  factory _$$ConsignmentInvoiceDTOImplCopyWith(
          _$ConsignmentInvoiceDTOImpl value,
          $Res Function(_$ConsignmentInvoiceDTOImpl) then) =
      __$$ConsignmentInvoiceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'consignment_invoice_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_type_id') int consignmentTypeId,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      String code,
      @JsonKey(name: "invoice_date") String invoiceDate,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_term', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date', includeToJson: false) String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'consignment_id') int consignmentId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      String consignmentCode,
      @JsonKey(name: 'balance', includeToJson: false) double balance,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
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
      @JsonKey(name: 'payment_term_id', includeToJson: false)
      int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'warehouse_id', includeToJson: false) int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      String warehouseName,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      List<ConsignmentReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: "region_id") int regionId,
      @JsonKey(name: "region_name", includeToJson: false) String regionName,
      @JsonKey(name: "consignment_method") int consignmentMethod});
}

/// @nodoc
class __$$ConsignmentInvoiceDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentInvoiceDTOCopyWithImpl<$Res,
        _$ConsignmentInvoiceDTOImpl>
    implements _$$ConsignmentInvoiceDTOImplCopyWith<$Res> {
  __$$ConsignmentInvoiceDTOImplCopyWithImpl(_$ConsignmentInvoiceDTOImpl _value,
      $Res Function(_$ConsignmentInvoiceDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? saleDate = null,
    Object? formattedDate = null,
    Object? consignmentId = null,
    Object? consignmentCode = null,
    Object? balance = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
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
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? procutDto = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistoryDto = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? consignmentMethod = null,
  }) {
    return _then(_$ConsignmentInvoiceDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
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
      saleDate: null == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentId: null == consignmentId
          ? _value.consignmentId
          : consignmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentCode: null == consignmentCode
          ? _value.consignmentCode
          : consignmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
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
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value._procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value._paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<ConsignmentReceiptDTO>,
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
class _$ConsignmentInvoiceDTOImpl extends _ConsignmentInvoiceDTO {
  const _$ConsignmentInvoiceDTOImpl(
      {@JsonKey(name: 'consignment_invoice_id', includeToJson: false)
      this.id = -1,
      @JsonKey(name: 'consignment_type_id') this.consignmentTypeId = -1,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      this.code = "",
      @JsonKey(name: "invoice_date") this.invoiceDate = "",
      @JsonKey(name: "due_date") this.dueDate = "",
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = '',
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_term', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sales_date', includeToJson: false) this.saleDate = '',
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      this.formattedDate = '',
      @JsonKey(name: 'consignment_id') this.consignmentId = -1,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      this.consignmentCode = "",
      @JsonKey(name: 'balance', includeToJson: false) this.balance = 0,
      @JsonKey(name: 'business_unit_id') this.businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = '',
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
      @JsonKey(name: 'payment_term_id', includeToJson: false)
      this.paymentTermsId = -1,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'warehouse_id', includeToJson: false)
      this.warehouseId = -1,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      this.warehouseName = '',
      @JsonKey(name: "products") final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'status', includeToJson: false) this.paymentStatus = -1,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      final List<ConsignmentReceiptDTO> paymentReceivedHistoryDto = const [],
      @JsonKey(name: "region_id") this.regionId = -1,
      @JsonKey(name: "region_name", includeToJson: false) this.regionName = "",
      @JsonKey(name: "consignment_method") this.consignmentMethod = 1})
      : _procutDto = procutDto,
        _paymentReceivedHistoryDto = paymentReceivedHistoryDto,
        super._();

  factory _$ConsignmentInvoiceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentInvoiceDTOImplFromJson(json);

  @override
  @JsonKey(name: 'consignment_invoice_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'consignment_type_id')
  final int consignmentTypeId;
  @override
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "invoice_date")
  final String invoiceDate;
  @override
  @JsonKey(name: "due_date")
  final String dueDate;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  final String customerName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  final String paymentTypeName;
  @override
  @JsonKey(name: 'payment_term', includeToJson: false)
  final String paymentTermName;
  @override
  @JsonKey(name: 'sales_date', includeToJson: false)
  final String saleDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  final String formattedDate;
  @override
  @JsonKey(name: 'consignment_id')
  final int consignmentId;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  final String consignmentCode;
  @override
  @JsonKey(name: 'balance', includeToJson: false)
  final double balance;
  @override
  @JsonKey(name: 'business_unit_id')
  final int? businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;
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
  @JsonKey(name: 'payment_term_id', includeToJson: false)
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
  @override
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  final int warehouseId;
  @override
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  final String warehouseName;
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
  final int paymentStatus;
  final List<ConsignmentReceiptDTO> _paymentReceivedHistoryDto;
  @override
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<ConsignmentReceiptDTO> get paymentReceivedHistoryDto {
    if (_paymentReceivedHistoryDto is EqualUnmodifiableListView)
      return _paymentReceivedHistoryDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistoryDto);
  }

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
    return 'ConsignmentInvoiceDTO(id: $id, consignmentTypeId: $consignmentTypeId, code: $code, invoiceDate: $invoiceDate, dueDate: $dueDate, customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, saleDate: $saleDate, formattedDate: $formattedDate, consignmentId: $consignmentId, consignmentCode: $consignmentCode, balance: $balance, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, subtotal: $subtotal, discountAmount: $discountAmount, discount: $discount, discountType: $discountType, taxAmount: $taxAmount, tax: $tax, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, deleteReason: $deleteReason, remark: $remark, description: $description, warehouseId: $warehouseId, warehouseName: $warehouseName, procutDto: $procutDto, paymentStatus: $paymentStatus, paymentReceivedHistoryDto: $paymentReceivedHistoryDto, regionId: $regionId, regionName: $regionName, consignmentMethod: $consignmentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentInvoiceDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentTypeId, consignmentTypeId) ||
                other.consignmentTypeId == consignmentTypeId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.paymentTermName, paymentTermName) ||
                other.paymentTermName == paymentTermName) &&
            (identical(other.saleDate, saleDate) ||
                other.saleDate == saleDate) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.consignmentId, consignmentId) ||
                other.consignmentId == consignmentId) &&
            (identical(other.consignmentCode, consignmentCode) ||
                other.consignmentCode == consignmentCode) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
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
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            const DeepCollectionEquality()
                .equals(other._procutDto, _procutDto) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistoryDto, _paymentReceivedHistoryDto) &&
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
        id,
        consignmentTypeId,
        code,
        invoiceDate,
        dueDate,
        customerName,
        paymentTypeName,
        paymentTermName,
        saleDate,
        formattedDate,
        consignmentId,
        consignmentCode,
        balance,
        businessUnitId,
        businessUnitName,
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
        deleteReason,
        remark,
        description,
        warehouseId,
        warehouseName,
        const DeepCollectionEquality().hash(_procutDto),
        paymentStatus,
        const DeepCollectionEquality().hash(_paymentReceivedHistoryDto),
        regionId,
        regionName,
        consignmentMethod
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentInvoiceDTOImplCopyWith<_$ConsignmentInvoiceDTOImpl>
      get copyWith => __$$ConsignmentInvoiceDTOImplCopyWithImpl<
          _$ConsignmentInvoiceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentInvoiceDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentInvoiceDTO extends ConsignmentInvoiceDTO {
  const factory _ConsignmentInvoiceDTO(
      {@JsonKey(name: 'consignment_invoice_id', includeToJson: false)
      final int id,
      @JsonKey(name: 'consignment_type_id') final int consignmentTypeId,
      @JsonKey(name: "consignment_invoice_code", includeToJson: false)
      final String code,
      @JsonKey(name: "invoice_date") final String invoiceDate,
      @JsonKey(name: "due_date") final String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_term', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sales_date', includeToJson: false) final String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      final String formattedDate,
      @JsonKey(name: 'consignment_id') final int consignmentId,
      @JsonKey(name: 'consignment_code', includeToJson: false)
      final String consignmentCode,
      @JsonKey(name: 'balance', includeToJson: false) final double balance,
      @JsonKey(name: 'business_unit_id') final int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName,
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
      @JsonKey(name: 'payment_term_id', includeToJson: false)
      final int paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'warehouse_id', includeToJson: false)
      final int warehouseId,
      @JsonKey(name: 'warehouse_name', includeToJson: false)
      final String warehouseName,
      @JsonKey(name: "products") final List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) final int paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      final List<ConsignmentReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: "region_id") final int regionId,
      @JsonKey(name: "region_name", includeToJson: false)
      final String regionName,
      @JsonKey(name: "consignment_method")
      final int consignmentMethod}) = _$ConsignmentInvoiceDTOImpl;
  const _ConsignmentInvoiceDTO._() : super._();

  factory _ConsignmentInvoiceDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentInvoiceDTOImpl.fromJson;

  @override
  @JsonKey(name: 'consignment_invoice_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'consignment_type_id')
  int get consignmentTypeId;
  @override
  @JsonKey(name: "consignment_invoice_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "invoice_date")
  String get invoiceDate;
  @override
  @JsonKey(name: "due_date")
  String get dueDate;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName;
  @override
  @JsonKey(name: 'payment_term', includeToJson: false)
  String get paymentTermName;
  @override
  @JsonKey(name: 'sales_date', includeToJson: false)
  String get saleDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate;
  @override
  @JsonKey(name: 'consignment_id')
  int get consignmentId;
  @override
  @JsonKey(name: 'consignment_code', includeToJson: false)
  String get consignmentCode;
  @override
  @JsonKey(name: 'balance', includeToJson: false)
  double get balance;
  @override
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
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
  @JsonKey(name: 'payment_term_id', includeToJson: false)
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
  @JsonKey(name: 'warehouse_id', includeToJson: false)
  int get warehouseId;
  @override
  @JsonKey(name: 'warehouse_name', includeToJson: false)
  String get warehouseName;
  @override
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  int get paymentStatus;
  @override
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<ConsignmentReceiptDTO> get paymentReceivedHistoryDto;
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
  _$$ConsignmentInvoiceDTOImplCopyWith<_$ConsignmentInvoiceDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
