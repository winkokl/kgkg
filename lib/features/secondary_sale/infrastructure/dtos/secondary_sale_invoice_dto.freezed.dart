// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale_invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecondarySaleInvoiceDTO _$SecondarySaleInvoiceDTOFromJson(
    Map<String, dynamic> json) {
  return _SecondarySaleInvoiceDTO.fromJson(json);
}

/// @nodoc
mixin _$SecondarySaleInvoiceDTO {
  @JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
  String get saleOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_date")
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_date")
  String get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "due_date")
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date')
  String get saleDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  int get saleOrderId => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
// @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<SecondarySaleReceiptDTO> get paymentReceivedHistoryDto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  SalePromotionDTO? get salePromotionDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_promotion_id')
  int? get salePromotionId => throw _privateConstructorUsedError;
  @JsonKey(name: "bonus")
  double get bonus => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_back")
  double get cashBack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondarySaleInvoiceDTOCopyWith<SecondarySaleInvoiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleInvoiceDTOCopyWith<$Res> {
  factory $SecondarySaleInvoiceDTOCopyWith(SecondarySaleInvoiceDTO value,
          $Res Function(SecondarySaleInvoiceDTO) then) =
      _$SecondarySaleInvoiceDTOCopyWithImpl<$Res, SecondarySaleInvoiceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
      int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      String code,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      String saleOrderCode,
      @JsonKey(name: "invoice_date") String invoiceDate,
      @JsonKey(name: "delivery_date") String deliveryDate,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      int saleOrderId,
      double balance,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
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
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "product_detail") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) String paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      List<SecondarySaleReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      SalePromotionDTO? salePromotionDTO,
      @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
      @JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "cash_back") double cashBack});

  $SalePromotionDTOCopyWith<$Res>? get salePromotionDTO;
}

/// @nodoc
class _$SecondarySaleInvoiceDTOCopyWithImpl<$Res,
        $Val extends SecondarySaleInvoiceDTO>
    implements $SecondarySaleInvoiceDTOCopyWith<$Res> {
  _$SecondarySaleInvoiceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? saleOrderCode = null,
    Object? invoiceDate = null,
    Object? deliveryDate = null,
    Object? dueDate = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? saleDate = null,
    Object? formattedDate = null,
    Object? saleOrderId = null,
    Object? balance = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
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
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistoryDto = null,
    Object? salePromotionDTO = freezed,
    Object? salePromotionId = freezed,
    Object? bonus = null,
    Object? cashBack = null,
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
      saleOrderCode: null == saleOrderCode
          ? _value.saleOrderCode
          : saleOrderCode // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
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
      saleOrderId: null == saleOrderId
          ? _value.saleOrderId
          : saleOrderId // ignore: cast_nullable_to_non_nullable
              as int,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value.paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<SecondarySaleReceiptDTO>,
      salePromotionDTO: freezed == salePromotionDTO
          ? _value.salePromotionDTO
          : salePromotionDTO // ignore: cast_nullable_to_non_nullable
              as SalePromotionDTO?,
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalePromotionDTOCopyWith<$Res>? get salePromotionDTO {
    if (_value.salePromotionDTO == null) {
      return null;
    }

    return $SalePromotionDTOCopyWith<$Res>(_value.salePromotionDTO!, (value) {
      return _then(_value.copyWith(salePromotionDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SecondarySaleInvoiceDTOImplCopyWith<$Res>
    implements $SecondarySaleInvoiceDTOCopyWith<$Res> {
  factory _$$SecondarySaleInvoiceDTOImplCopyWith(
          _$SecondarySaleInvoiceDTOImpl value,
          $Res Function(_$SecondarySaleInvoiceDTOImpl) then) =
      __$$SecondarySaleInvoiceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
      int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      String code,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      String saleOrderCode,
      @JsonKey(name: "invoice_date") String invoiceDate,
      @JsonKey(name: "delivery_date") String deliveryDate,
      @JsonKey(name: "due_date") String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      int saleOrderId,
      double balance,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
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
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "product_detail") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) String paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      List<SecondarySaleReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      SalePromotionDTO? salePromotionDTO,
      @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
      @JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "cash_back") double cashBack});

  @override
  $SalePromotionDTOCopyWith<$Res>? get salePromotionDTO;
}

/// @nodoc
class __$$SecondarySaleInvoiceDTOImplCopyWithImpl<$Res>
    extends _$SecondarySaleInvoiceDTOCopyWithImpl<$Res,
        _$SecondarySaleInvoiceDTOImpl>
    implements _$$SecondarySaleInvoiceDTOImplCopyWith<$Res> {
  __$$SecondarySaleInvoiceDTOImplCopyWithImpl(
      _$SecondarySaleInvoiceDTOImpl _value,
      $Res Function(_$SecondarySaleInvoiceDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? saleOrderCode = null,
    Object? invoiceDate = null,
    Object? deliveryDate = null,
    Object? dueDate = null,
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? saleDate = null,
    Object? formattedDate = null,
    Object? saleOrderId = null,
    Object? balance = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
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
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistoryDto = null,
    Object? salePromotionDTO = freezed,
    Object? salePromotionId = freezed,
    Object? bonus = null,
    Object? cashBack = null,
  }) {
    return _then(_$SecondarySaleInvoiceDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      saleOrderCode: null == saleOrderCode
          ? _value.saleOrderCode
          : saleOrderCode // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
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
      saleOrderId: null == saleOrderId
          ? _value.saleOrderId
          : saleOrderId // ignore: cast_nullable_to_non_nullable
              as int,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value._paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<SecondarySaleReceiptDTO>,
      salePromotionDTO: freezed == salePromotionDTO
          ? _value.salePromotionDTO
          : salePromotionDTO // ignore: cast_nullable_to_non_nullable
              as SalePromotionDTO?,
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondarySaleInvoiceDTOImpl extends _SecondarySaleInvoiceDTO {
  const _$SecondarySaleInvoiceDTOImpl(
      {@JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
      this.id = -1,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      this.code = "",
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      this.saleOrderCode = '',
      @JsonKey(name: "invoice_date") this.invoiceDate = "",
      @JsonKey(name: "delivery_date") this.deliveryDate = "",
      @JsonKey(name: "due_date") this.dueDate = "",
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = '',
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_terms', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sales_date') this.saleDate = '',
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      this.formattedDate = '',
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      this.saleOrderId = -1,
      this.balance = 0,
      @JsonKey(name: 'business_unit_id') this.businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = '',
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
      @JsonKey(name: 'payment_terms_id') this.paymentTermsId,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: "product_detail")
      final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'status', includeToJson: false) this.paymentStatus = '',
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      final List<SecondarySaleReceiptDTO> paymentReceivedHistoryDto = const [],
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      this.salePromotionDTO,
      @JsonKey(name: 'sale_promotion_id') this.salePromotionId,
      @JsonKey(name: "bonus") this.bonus = 0,
      @JsonKey(name: "cash_back") this.cashBack = 0})
      : _procutDto = procutDto,
        _paymentReceivedHistoryDto = paymentReceivedHistoryDto,
        super._();

  factory _$SecondarySaleInvoiceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondarySaleInvoiceDTOImplFromJson(json);

  @override
  @JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
  final String saleOrderCode;
  @override
  @JsonKey(name: "invoice_date")
  final String invoiceDate;
  @override
  @JsonKey(name: "delivery_date")
  final String deliveryDate;
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
  @JsonKey(name: 'payment_terms', includeToJson: false)
  final String paymentTermName;
  @override
  @JsonKey(name: 'sales_date')
  final String saleDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  final String formattedDate;
  @override
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  final int saleOrderId;
  @override
  @JsonKey()
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
  @JsonKey(name: 'payment_terms_id')
  final int? paymentTermsId;
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
// @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
// @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
  final List<ProductDTO> _procutDto;
// @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
// @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
  @override
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto {
    if (_procutDto is EqualUnmodifiableListView) return _procutDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_procutDto);
  }

  @override
  @JsonKey(name: 'status', includeToJson: false)
  final String paymentStatus;
  final List<SecondarySaleReceiptDTO> _paymentReceivedHistoryDto;
  @override
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<SecondarySaleReceiptDTO> get paymentReceivedHistoryDto {
    if (_paymentReceivedHistoryDto is EqualUnmodifiableListView)
      return _paymentReceivedHistoryDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistoryDto);
  }

  @override
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  final SalePromotionDTO? salePromotionDTO;
  @override
  @JsonKey(name: 'sale_promotion_id')
  final int? salePromotionId;
  @override
  @JsonKey(name: "bonus")
  final double bonus;
  @override
  @JsonKey(name: "cash_back")
  final double cashBack;

  @override
  String toString() {
    return 'SecondarySaleInvoiceDTO(id: $id, code: $code, saleOrderCode: $saleOrderCode, invoiceDate: $invoiceDate, deliveryDate: $deliveryDate, dueDate: $dueDate, customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, saleDate: $saleDate, formattedDate: $formattedDate, saleOrderId: $saleOrderId, balance: $balance, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, subtotal: $subtotal, discountAmount: $discountAmount, discountType: $discountType, discount: $discount, taxAmount: $taxAmount, taxType: $taxType, tax: $tax, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, paymentStatus: $paymentStatus, paymentReceivedHistoryDto: $paymentReceivedHistoryDto, salePromotionDTO: $salePromotionDTO, salePromotionId: $salePromotionId, bonus: $bonus, cashBack: $cashBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleInvoiceDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.saleOrderCode, saleOrderCode) ||
                other.saleOrderCode == saleOrderCode) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
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
            (identical(other.saleOrderId, saleOrderId) ||
                other.saleOrderId == saleOrderId) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
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
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistoryDto, _paymentReceivedHistoryDto) &&
            (identical(other.salePromotionDTO, salePromotionDTO) ||
                other.salePromotionDTO == salePromotionDTO) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        saleOrderCode,
        invoiceDate,
        deliveryDate,
        dueDate,
        customerName,
        paymentTypeName,
        paymentTermName,
        saleDate,
        formattedDate,
        saleOrderId,
        balance,
        businessUnitId,
        businessUnitName,
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
        paymentStatus,
        const DeepCollectionEquality().hash(_paymentReceivedHistoryDto),
        salePromotionDTO,
        salePromotionId,
        bonus,
        cashBack
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleInvoiceDTOImplCopyWith<_$SecondarySaleInvoiceDTOImpl>
      get copyWith => __$$SecondarySaleInvoiceDTOImplCopyWithImpl<
          _$SecondarySaleInvoiceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondarySaleInvoiceDTOImplToJson(
      this,
    );
  }
}

abstract class _SecondarySaleInvoiceDTO extends SecondarySaleInvoiceDTO {
  const factory _SecondarySaleInvoiceDTO(
      {@JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
      final int id,
      @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
      final String code,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      final String saleOrderCode,
      @JsonKey(name: "invoice_date") final String invoiceDate,
      @JsonKey(name: "delivery_date") final String deliveryDate,
      @JsonKey(name: "due_date") final String dueDate,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sales_date') final String saleDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      final String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      final int saleOrderId,
      final double balance,
      @JsonKey(name: 'business_unit_id') final int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName,
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
      @JsonKey(name: 'payment_terms_id') final int? paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: "product_detail") final List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) final String paymentStatus,
      @JsonKey(name: 'payment_receive_data', includeToJson: false)
      final List<SecondarySaleReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      final SalePromotionDTO? salePromotionDTO,
      @JsonKey(name: 'sale_promotion_id') final int? salePromotionId,
      @JsonKey(name: "bonus") final double bonus,
      @JsonKey(name: "cash_back")
      final double cashBack}) = _$SecondarySaleInvoiceDTOImpl;
  const _SecondarySaleInvoiceDTO._() : super._();

  factory _SecondarySaleInvoiceDTO.fromJson(Map<String, dynamic> json) =
      _$SecondarySaleInvoiceDTOImpl.fromJson;

  @override
  @JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
  String get saleOrderCode;
  @override
  @JsonKey(name: "invoice_date")
  String get invoiceDate;
  @override
  @JsonKey(name: "delivery_date")
  String get deliveryDate;
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
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName;
  @override
  @JsonKey(name: 'sales_date')
  String get saleDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate;
  @override
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  int get saleOrderId;
  @override
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
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId;
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
  @override // @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
// @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  String get paymentStatus;
  @override
  @JsonKey(name: 'payment_receive_data', includeToJson: false)
  List<SecondarySaleReceiptDTO> get paymentReceivedHistoryDto;
  @override
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  SalePromotionDTO? get salePromotionDTO;
  @override
  @JsonKey(name: 'sale_promotion_id')
  int? get salePromotionId;
  @override
  @JsonKey(name: "bonus")
  double get bonus;
  @override
  @JsonKey(name: "cash_back")
  double get cashBack;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleInvoiceDTOImplCopyWith<_$SecondarySaleInvoiceDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
