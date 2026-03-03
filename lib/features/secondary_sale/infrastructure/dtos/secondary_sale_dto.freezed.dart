// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecondarySaleDTO _$SecondarySaleDTOFromJson(Map<String, dynamic> json) {
  return _SecondarySaleDTO.fromJson(json);
}

/// @nodoc
mixin _$SecondarySaleDTO {
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  String get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
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
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type_id')
  int? get saleTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type_name', includeToJson: false)
  String get saleTypeName => throw _privateConstructorUsedError;
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
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: "bonus")
  double get bonus => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_back")
  double get cashBack => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_promotion_id')
  int? get salePromotionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  SalePromotionDTO get salePromotionDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', includeFromJson: false)
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondarySaleDTOCopyWith<SecondarySaleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleDTOCopyWith<$Res> {
  factory $SecondarySaleDTOCopyWith(
          SecondarySaleDTO value, $Res Function(SecondarySaleDTO) then) =
      _$SecondarySaleDTOCopyWithImpl<$Res, SecondarySaleDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sales_date') String date,
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false) int id,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'sale_type_id') int? saleTypeId,
      @JsonKey(name: 'sale_type_name', includeToJson: false)
      String saleTypeName,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "product_detail") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) String orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "cash_back") double cashBack,
      @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      SalePromotionDTO salePromotionDTO,
      @JsonKey(name: 'type', includeFromJson: false) String type});

  $SalePromotionDTOCopyWith<$Res> get salePromotionDTO;
}

/// @nodoc
class _$SecondarySaleDTOCopyWithImpl<$Res, $Val extends SecondarySaleDTO>
    implements $SecondarySaleDTOCopyWith<$Res> {
  _$SecondarySaleDTOCopyWithImpl(this._value, this._then);

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
    Object? deliveryDate = null,
    Object? formattedDate = null,
    Object? id = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? discount = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = freezed,
    Object? customerId = null,
    Object? saleTypeId = freezed,
    Object? saleTypeName = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? bonus = null,
    Object? cashBack = null,
    Object? salePromotionId = freezed,
    Object? salePromotionDTO = null,
    Object? type = null,
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
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      saleTypeId: freezed == saleTypeId
          ? _value.saleTypeId
          : saleTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      saleTypeName: null == saleTypeName
          ? _value.saleTypeName
          : saleTypeName // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      salePromotionDTO: null == salePromotionDTO
          ? _value.salePromotionDTO
          : salePromotionDTO // ignore: cast_nullable_to_non_nullable
              as SalePromotionDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalePromotionDTOCopyWith<$Res> get salePromotionDTO {
    return $SalePromotionDTOCopyWith<$Res>(_value.salePromotionDTO, (value) {
      return _then(_value.copyWith(salePromotionDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SecondarySaleDTOImplCopyWith<$Res>
    implements $SecondarySaleDTOCopyWith<$Res> {
  factory _$$SecondarySaleDTOImplCopyWith(_$SecondarySaleDTOImpl value,
          $Res Function(_$SecondarySaleDTOImpl) then) =
      __$$SecondarySaleDTOImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false) int id,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      String code,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'sale_type_id') int? saleTypeId,
      @JsonKey(name: 'sale_type_name', includeToJson: false)
      String saleTypeName,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: "product_detail") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) String orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "cash_back") double cashBack,
      @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      SalePromotionDTO salePromotionDTO,
      @JsonKey(name: 'type', includeFromJson: false) String type});

  @override
  $SalePromotionDTOCopyWith<$Res> get salePromotionDTO;
}

/// @nodoc
class __$$SecondarySaleDTOImplCopyWithImpl<$Res>
    extends _$SecondarySaleDTOCopyWithImpl<$Res, _$SecondarySaleDTOImpl>
    implements _$$SecondarySaleDTOImplCopyWith<$Res> {
  __$$SecondarySaleDTOImplCopyWithImpl(_$SecondarySaleDTOImpl _value,
      $Res Function(_$SecondarySaleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? date = null,
    Object? deliveryDate = null,
    Object? formattedDate = null,
    Object? id = null,
    Object? code = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? discount = null,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = freezed,
    Object? customerId = null,
    Object? saleTypeId = freezed,
    Object? saleTypeName = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? orderStatus = null,
    Object? rejectReason = null,
    Object? bonus = null,
    Object? cashBack = null,
    Object? salePromotionId = freezed,
    Object? salePromotionDTO = null,
    Object? type = null,
  }) {
    return _then(_$SecondarySaleDTOImpl(
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
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      saleTypeId: freezed == saleTypeId
          ? _value.saleTypeId
          : saleTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      saleTypeName: null == saleTypeName
          ? _value.saleTypeName
          : saleTypeName // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      salePromotionId: freezed == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      salePromotionDTO: null == salePromotionDTO
          ? _value.salePromotionDTO
          : salePromotionDTO // ignore: cast_nullable_to_non_nullable
              as SalePromotionDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondarySaleDTOImpl extends _SecondarySaleDTO {
  const _$SecondarySaleDTOImpl(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerName = '',
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_terms', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sales_date') this.date = '',
      @JsonKey(name: 'delivery_date') this.deliveryDate = '',
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      this.formattedDate = '',
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      this.id = -1,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      this.code = '',
      @JsonKey(name: 'sub_total') this.subtotal = 0,
      @JsonKey(name: 'discount_amount') this.discountAmount = 0,
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'tax_amount') this.taxAmount = 0,
      @JsonKey(name: 'tax') this.tax = 0,
      @JsonKey(name: 'tax_type') this.taxType = '',
      @JsonKey(name: 'other_charges') this.otherCharges = 0,
      @JsonKey(name: 'grand_total_amount') this.grandTotal = 0,
      @JsonKey(name: 'payment_type_id') this.paymentTypeId = -1,
      @JsonKey(name: 'payment_terms_id') this.paymentTermsId,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'sale_type_id') this.saleTypeId,
      @JsonKey(name: 'sale_type_name', includeToJson: false)
      this.saleTypeName = '',
      @JsonKey(name: 'business_unit_id') this.businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = '',
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: "product_detail")
      final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'status', includeToJson: false) this.orderStatus = "",
      @JsonKey(name: 'reject_reason', includeToJson: false)
      this.rejectReason = "",
      @JsonKey(name: "bonus") this.bonus = 0,
      @JsonKey(name: "cash_back") this.cashBack = 0,
      @JsonKey(name: 'sale_promotion_id') this.salePromotionId,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      this.salePromotionDTO = const SalePromotionDTO(),
      @JsonKey(name: 'type', includeFromJson: false) this.type = 'Secondary'})
      : _procutDto = procutDto,
        super._();

  factory _$SecondarySaleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondarySaleDTOImplFromJson(json);

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
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  final String formattedDate;
  @override
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
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
  @JsonKey(name: 'payment_terms_id')
  final int? paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'sale_type_id')
  final int? saleTypeId;
  @override
  @JsonKey(name: 'sale_type_name', includeToJson: false)
  final String saleTypeName;
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
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto {
    if (_procutDto is EqualUnmodifiableListView) return _procutDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_procutDto);
  }

  @override
  @JsonKey(name: 'status', includeToJson: false)
  final String orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  final String rejectReason;
  @override
  @JsonKey(name: "bonus")
  final double bonus;
  @override
  @JsonKey(name: "cash_back")
  final double cashBack;
  @override
  @JsonKey(name: 'sale_promotion_id')
  final int? salePromotionId;
  @override
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  final SalePromotionDTO salePromotionDTO;
  @override
  @JsonKey(name: 'type', includeFromJson: false)
  final String type;

  @override
  String toString() {
    return 'SecondarySaleDTO(customerName: $customerName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, date: $date, deliveryDate: $deliveryDate, formattedDate: $formattedDate, id: $id, code: $code, subtotal: $subtotal, discountAmount: $discountAmount, discountType: $discountType, discount: $discount, taxAmount: $taxAmount, tax: $tax, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, saleTypeId: $saleTypeId, saleTypeName: $saleTypeName, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, orderStatus: $orderStatus, rejectReason: $rejectReason, bonus: $bonus, cashBack: $cashBack, salePromotionId: $salePromotionId, salePromotionDTO: $salePromotionDTO, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleDTOImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.paymentTermName, paymentTermName) ||
                other.paymentTermName == paymentTermName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.saleTypeId, saleTypeId) ||
                other.saleTypeId == saleTypeId) &&
            (identical(other.saleTypeName, saleTypeName) ||
                other.saleTypeName == saleTypeName) &&
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
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.salePromotionDTO, salePromotionDTO) ||
                other.salePromotionDTO == salePromotionDTO) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerName,
        paymentTypeName,
        paymentTermName,
        date,
        deliveryDate,
        formattedDate,
        id,
        code,
        subtotal,
        discountAmount,
        discountType,
        discount,
        taxAmount,
        tax,
        taxType,
        otherCharges,
        grandTotal,
        paymentTypeId,
        paymentTermsId,
        customerId,
        saleTypeId,
        saleTypeName,
        businessUnitId,
        businessUnitName,
        deleteReason,
        remark,
        description,
        const DeepCollectionEquality().hash(_procutDto),
        orderStatus,
        rejectReason,
        bonus,
        cashBack,
        salePromotionId,
        salePromotionDTO,
        type
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleDTOImplCopyWith<_$SecondarySaleDTOImpl> get copyWith =>
      __$$SecondarySaleDTOImplCopyWithImpl<_$SecondarySaleDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondarySaleDTOImplToJson(
      this,
    );
  }
}

abstract class _SecondarySaleDTO extends SecondarySaleDTO {
  const factory _SecondarySaleDTO(
      {@JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sales_date') final String date,
      @JsonKey(name: 'delivery_date') final String deliveryDate,
      @JsonKey(name: 'formatted_sales_date', includeToJson: false)
      final String formattedDate,
      @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
      final int id,
      @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'sub_total') final double subtotal,
      @JsonKey(name: 'discount_amount') final double discountAmount,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'discount') final double discount,
      @JsonKey(name: 'tax_amount') final double taxAmount,
      @JsonKey(name: 'tax') final double tax,
      @JsonKey(name: 'tax_type') final String taxType,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total_amount') final double grandTotal,
      @JsonKey(name: 'payment_type_id') final int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') final int? paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'sale_type_id') final int? saleTypeId,
      @JsonKey(name: 'sale_type_name', includeToJson: false)
      final String saleTypeName,
      @JsonKey(name: 'business_unit_id') final int? businessUnitId,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: "product_detail") final List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) final String orderStatus,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      final String rejectReason,
      @JsonKey(name: "bonus") final double bonus,
      @JsonKey(name: "cash_back") final double cashBack,
      @JsonKey(name: 'sale_promotion_id') final int? salePromotionId,
      @JsonKey(name: 'sale_promotion', includeToJson: false)
      final SalePromotionDTO salePromotionDTO,
      @JsonKey(name: 'type', includeFromJson: false)
      final String type}) = _$SecondarySaleDTOImpl;
  const _SecondarySaleDTO._() : super._();

  factory _SecondarySaleDTO.fromJson(Map<String, dynamic> json) =
      _$SecondarySaleDTOImpl.fromJson;

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
  @JsonKey(name: 'delivery_date')
  String get deliveryDate;
  @override
  @JsonKey(name: 'formatted_sales_date', includeToJson: false)
  String get formattedDate;
  @override
  @JsonKey(name: 'secondary_sales_order_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'secondary_sales_order_code', includeToJson: false)
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
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'sale_type_id')
  int? get saleTypeId;
  @override
  @JsonKey(name: 'sale_type_name', includeToJson: false)
  String get saleTypeName;
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
  @JsonKey(name: "product_detail")
  List<ProductDTO> get procutDto;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  String get orderStatus;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason;
  @override
  @JsonKey(name: "bonus")
  double get bonus;
  @override
  @JsonKey(name: "cash_back")
  double get cashBack;
  @override
  @JsonKey(name: 'sale_promotion_id')
  int? get salePromotionId;
  @override
  @JsonKey(name: 'sale_promotion', includeToJson: false)
  SalePromotionDTO get salePromotionDTO;
  @override
  @JsonKey(name: 'type', includeFromJson: false)
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleDTOImplCopyWith<_$SecondarySaleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
