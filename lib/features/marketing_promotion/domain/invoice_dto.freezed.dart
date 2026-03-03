// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceDTO _$InvoiceDTOFromJson(Map<String, dynamic> json) {
  return _InvoiceDTO.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDTO {
  @JsonKey(name: 'marketing_promotion_invoice_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_name')
  String get promotionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_invoice_code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get planId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get planCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date')
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id')
  int? get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  double get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  double get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_type')
  String get taxType => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_charges')
  double get otherCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total_amount')
  double get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_id')
  int? get paymentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_type_id')
  int? get creditTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason')
  String? get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String? get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_status')
  String get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus')
  double get bonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_type')
  String get bonusType => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_amt')
  double get bonusAmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_amount')
  double get bonusAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback')
  double get cashback => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_type')
  String get cashbackType => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_amt')
  double get cashbackAmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_amount')
  double get cashbackAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_receives', includeToJson: false)
  List<ReceiptDTO> get paymentReceivedHistoryDto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_good_requisition_id')
  int get marketingGoodRequisitionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  MarketingPromotionPlanDTO get marketingPromotionPlanDto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_duration')
  int get bonusDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_duration')
  int get cashbackDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDTOCopyWith<InvoiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDTOCopyWith<$Res> {
  factory $InvoiceDTOCopyWith(
          InvoiceDTO value, $Res Function(InvoiceDTO) then) =
      _$InvoiceDTOCopyWithImpl<$Res, InvoiceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_invoice_id') int id,
      @JsonKey(name: 'marketing_promotion_name') String promotionName,
      @JsonKey(name: 'marketing_promotion_invoice_code') String code,
      @JsonKey(name: 'marketing_promotion_plan_id') int planId,
      @JsonKey(name: 'marketing_promotion_plan_code') String planCode,
      @JsonKey(name: 'invoice_date') String invoiceDate,
      @JsonKey(name: 'due_date') String dueDate,
      @JsonKey(name: 'warehouse_id') int? warehouseId,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int? paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'credit_type_id') int? creditTypeId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'delete_reason') String? deleteReason,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'remark') String? remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'invoice_status') String invoiceStatus,
      @JsonKey(name: 'bonus') double bonus,
      @JsonKey(name: 'bonus_type') String bonusType,
      @JsonKey(name: 'bonus_amt') double bonusAmt,
      @JsonKey(name: 'bonus_amount') double bonusAmount,
      @JsonKey(name: 'cashback') double cashback,
      @JsonKey(name: 'cashback_type') String cashbackType,
      @JsonKey(name: 'cashback_amt') double cashbackAmt,
      @JsonKey(name: 'cashback_amount') double cashbackAmount,
      @JsonKey(name: 'payment_receives', includeToJson: false)
      List<ReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'marketing_good_requisition_id')
      int marketingGoodRequisitionId,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'bonus_duration') int bonusDuration,
      @JsonKey(name: 'cashback_duration') int cashbackDuration,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos});

  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto;
}

/// @nodoc
class _$InvoiceDTOCopyWithImpl<$Res, $Val extends InvoiceDTO>
    implements $InvoiceDTOCopyWith<$Res> {
  _$InvoiceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? promotionName = null,
    Object? code = null,
    Object? planId = null,
    Object? planCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? warehouseId = freezed,
    Object? subTotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = freezed,
    Object? paymentTermsId = freezed,
    Object? creditTypeId = freezed,
    Object? customerId = freezed,
    Object? customerName = null,
    Object? deleteReason = freezed,
    Object? status = null,
    Object? remark = freezed,
    Object? description = null,
    Object? balance = null,
    Object? tax = null,
    Object? discount = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? invoiceStatus = null,
    Object? bonus = null,
    Object? bonusType = null,
    Object? bonusAmt = null,
    Object? bonusAmount = null,
    Object? cashback = null,
    Object? cashbackType = null,
    Object? cashbackAmt = null,
    Object? cashbackAmount = null,
    Object? paymentReceivedHistoryDto = null,
    Object? marketingGoodRequisitionId = null,
    Object? marketingPromotionPlanDto = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
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
      paymentTypeId: freezed == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      creditTypeId: freezed == creditTypeId
          ? _value.creditTypeId
          : creditTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: freezed == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceStatus: null == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as String,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      bonusAmount: null == bonusAmount
          ? _value.bonusAmount
          : bonusAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value.paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<ReceiptDTO>,
      marketingGoodRequisitionId: null == marketingGoodRequisitionId
          ? _value.marketingGoodRequisitionId
          : marketingGoodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionPlanDto: null == marketingPromotionPlanDto
          ? _value.marketingPromotionPlanDto
          : marketingPromotionPlanDto // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlanDTO,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value.giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto {
    return $MarketingPromotionPlanDTOCopyWith<$Res>(
        _value.marketingPromotionPlanDto, (value) {
      return _then(_value.copyWith(marketingPromotionPlanDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceDTOImplCopyWith<$Res>
    implements $InvoiceDTOCopyWith<$Res> {
  factory _$$InvoiceDTOImplCopyWith(
          _$InvoiceDTOImpl value, $Res Function(_$InvoiceDTOImpl) then) =
      __$$InvoiceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_invoice_id') int id,
      @JsonKey(name: 'marketing_promotion_name') String promotionName,
      @JsonKey(name: 'marketing_promotion_invoice_code') String code,
      @JsonKey(name: 'marketing_promotion_plan_id') int planId,
      @JsonKey(name: 'marketing_promotion_plan_code') String planCode,
      @JsonKey(name: 'invoice_date') String invoiceDate,
      @JsonKey(name: 'due_date') String dueDate,
      @JsonKey(name: 'warehouse_id') int? warehouseId,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int? paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
      @JsonKey(name: 'credit_type_id') int? creditTypeId,
      @JsonKey(name: 'customer_id') int? customerId,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'delete_reason') String? deleteReason,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'remark') String? remark,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'tax') double tax,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'business_unit_id') int? businessUnitId,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'invoice_status') String invoiceStatus,
      @JsonKey(name: 'bonus') double bonus,
      @JsonKey(name: 'bonus_type') String bonusType,
      @JsonKey(name: 'bonus_amt') double bonusAmt,
      @JsonKey(name: 'bonus_amount') double bonusAmount,
      @JsonKey(name: 'cashback') double cashback,
      @JsonKey(name: 'cashback_type') String cashbackType,
      @JsonKey(name: 'cashback_amt') double cashbackAmt,
      @JsonKey(name: 'cashback_amount') double cashbackAmount,
      @JsonKey(name: 'payment_receives', includeToJson: false)
      List<ReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'marketing_good_requisition_id')
      int marketingGoodRequisitionId,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'bonus_duration') int bonusDuration,
      @JsonKey(name: 'cashback_duration') int cashbackDuration,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos});

  @override
  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto;
}

/// @nodoc
class __$$InvoiceDTOImplCopyWithImpl<$Res>
    extends _$InvoiceDTOCopyWithImpl<$Res, _$InvoiceDTOImpl>
    implements _$$InvoiceDTOImplCopyWith<$Res> {
  __$$InvoiceDTOImplCopyWithImpl(
      _$InvoiceDTOImpl _value, $Res Function(_$InvoiceDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? promotionName = null,
    Object? code = null,
    Object? planId = null,
    Object? planCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? warehouseId = freezed,
    Object? subTotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = freezed,
    Object? paymentTermsId = freezed,
    Object? creditTypeId = freezed,
    Object? customerId = freezed,
    Object? customerName = null,
    Object? deleteReason = freezed,
    Object? status = null,
    Object? remark = freezed,
    Object? description = null,
    Object? balance = null,
    Object? tax = null,
    Object? discount = null,
    Object? businessUnitId = freezed,
    Object? businessUnitName = null,
    Object? invoiceStatus = null,
    Object? bonus = null,
    Object? bonusType = null,
    Object? bonusAmt = null,
    Object? bonusAmount = null,
    Object? cashback = null,
    Object? cashbackType = null,
    Object? cashbackAmt = null,
    Object? cashbackAmount = null,
    Object? paymentReceivedHistoryDto = null,
    Object? marketingGoodRequisitionId = null,
    Object? marketingPromotionPlanDto = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
  }) {
    return _then(_$InvoiceDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
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
      paymentTypeId: freezed == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentTermsId: freezed == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int?,
      creditTypeId: freezed == creditTypeId
          ? _value.creditTypeId
          : creditTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: freezed == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      businessUnitId: freezed == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceStatus: null == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as String,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      bonusAmount: null == bonusAmount
          ? _value.bonusAmount
          : bonusAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceivedHistoryDto: null == paymentReceivedHistoryDto
          ? _value._paymentReceivedHistoryDto
          : paymentReceivedHistoryDto // ignore: cast_nullable_to_non_nullable
              as List<ReceiptDTO>,
      marketingGoodRequisitionId: null == marketingGoodRequisitionId
          ? _value.marketingGoodRequisitionId
          : marketingGoodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionPlanDto: null == marketingPromotionPlanDto
          ? _value.marketingPromotionPlanDto
          : marketingPromotionPlanDto // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlanDTO,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value._giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceDTOImpl extends _InvoiceDTO {
  const _$InvoiceDTOImpl(
      {@JsonKey(name: 'marketing_promotion_invoice_id') this.id = -1,
      @JsonKey(name: 'marketing_promotion_name') this.promotionName = '',
      @JsonKey(name: 'marketing_promotion_invoice_code') this.code = '',
      @JsonKey(name: 'marketing_promotion_plan_id') this.planId = -1,
      @JsonKey(name: 'marketing_promotion_plan_code') this.planCode = '',
      @JsonKey(name: 'invoice_date') this.invoiceDate = '',
      @JsonKey(name: 'due_date') this.dueDate = '',
      @JsonKey(name: 'warehouse_id') this.warehouseId,
      @JsonKey(name: 'sub_total') this.subTotal = 0,
      @JsonKey(name: 'discount_amount') this.discountAmount = 0,
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'tax_amount') this.taxAmount = 0,
      @JsonKey(name: 'tax_type') this.taxType = '',
      @JsonKey(name: 'other_charges') this.otherCharges = 0,
      @JsonKey(name: 'grand_total_amount') this.grandTotal = 0,
      @JsonKey(name: 'payment_type_id') this.paymentTypeId,
      @JsonKey(name: 'payment_terms_id') this.paymentTermsId,
      @JsonKey(name: 'credit_type_id') this.creditTypeId,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'customer_name') this.customerName = '',
      @JsonKey(name: 'delete_reason') this.deleteReason,
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'remark') this.remark,
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'balance') this.balance = 0,
      @JsonKey(name: 'tax') this.tax = 0,
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'business_unit_id') this.businessUnitId,
      @JsonKey(name: 'business_unit_name') this.businessUnitName = '',
      @JsonKey(name: 'invoice_status') this.invoiceStatus = '',
      @JsonKey(name: 'bonus') this.bonus = 0,
      @JsonKey(name: 'bonus_type') this.bonusType = '',
      @JsonKey(name: 'bonus_amt') this.bonusAmt = 0,
      @JsonKey(name: 'bonus_amount') this.bonusAmount = 0,
      @JsonKey(name: 'cashback') this.cashback = 0,
      @JsonKey(name: 'cashback_type') this.cashbackType = '',
      @JsonKey(name: 'cashback_amt') this.cashbackAmt = 0,
      @JsonKey(name: 'cashback_amount') this.cashbackAmount = 0,
      @JsonKey(name: 'payment_receives', includeToJson: false)
      final List<ReceiptDTO> paymentReceivedHistoryDto = const [],
      @JsonKey(name: 'marketing_good_requisition_id')
      this.marketingGoodRequisitionId = -1,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      this.marketingPromotionPlanDto = const MarketingPromotionPlanDTO(),
      @JsonKey(name: 'bonus_duration') this.bonusDuration = 0,
      @JsonKey(name: 'cashback_duration') this.cashbackDuration = 0,
      @JsonKey(name: 'products')
      final List<PromotionProductDTO> productDtos = const [],
      @JsonKey(name: 'gift_items')
      final List<GiftItemDTO> giftItemDtos = const []})
      : _paymentReceivedHistoryDto = paymentReceivedHistoryDto,
        _productDtos = productDtos,
        _giftItemDtos = giftItemDtos,
        super._();

  factory _$InvoiceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDTOImplFromJson(json);

  @override
  @JsonKey(name: 'marketing_promotion_invoice_id')
  final int id;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  final String promotionName;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_code')
  final String code;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  final int planId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  final String planCode;
  @override
  @JsonKey(name: 'invoice_date')
  final String invoiceDate;
  @override
  @JsonKey(name: 'due_date')
  final String dueDate;
  @override
  @JsonKey(name: 'warehouse_id')
  final int? warehouseId;
  @override
  @JsonKey(name: 'sub_total')
  final double subTotal;
  @override
  @JsonKey(name: 'discount_amount')
  final double discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  @JsonKey(name: 'tax_amount')
  final double taxAmount;
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
  final int? paymentTypeId;
  @override
  @JsonKey(name: 'payment_terms_id')
  final int? paymentTermsId;
  @override
  @JsonKey(name: 'credit_type_id')
  final int? creditTypeId;
  @override
  @JsonKey(name: 'customer_id')
  final int? customerId;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'delete_reason')
  final String? deleteReason;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'remark')
  final String? remark;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'balance')
  final double balance;
  @override
  @JsonKey(name: 'tax')
  final double tax;
  @override
  @JsonKey(name: 'discount')
  final double discount;
  @override
  @JsonKey(name: 'business_unit_id')
  final int? businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name')
  final String businessUnitName;
  @override
  @JsonKey(name: 'invoice_status')
  final String invoiceStatus;
  @override
  @JsonKey(name: 'bonus')
  final double bonus;
  @override
  @JsonKey(name: 'bonus_type')
  final String bonusType;
  @override
  @JsonKey(name: 'bonus_amt')
  final double bonusAmt;
  @override
  @JsonKey(name: 'bonus_amount')
  final double bonusAmount;
  @override
  @JsonKey(name: 'cashback')
  final double cashback;
  @override
  @JsonKey(name: 'cashback_type')
  final String cashbackType;
  @override
  @JsonKey(name: 'cashback_amt')
  final double cashbackAmt;
  @override
  @JsonKey(name: 'cashback_amount')
  final double cashbackAmount;
  final List<ReceiptDTO> _paymentReceivedHistoryDto;
  @override
  @JsonKey(name: 'payment_receives', includeToJson: false)
  List<ReceiptDTO> get paymentReceivedHistoryDto {
    if (_paymentReceivedHistoryDto is EqualUnmodifiableListView)
      return _paymentReceivedHistoryDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistoryDto);
  }

  @override
  @JsonKey(name: 'marketing_good_requisition_id')
  final int marketingGoodRequisitionId;
  @override
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  final MarketingPromotionPlanDTO marketingPromotionPlanDto;
  @override
  @JsonKey(name: 'bonus_duration')
  final int bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration')
  final int cashbackDuration;
  final List<PromotionProductDTO> _productDtos;
  @override
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos {
    if (_productDtos is EqualUnmodifiableListView) return _productDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDtos);
  }

  final List<GiftItemDTO> _giftItemDtos;
  @override
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos {
    if (_giftItemDtos is EqualUnmodifiableListView) return _giftItemDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftItemDtos);
  }

  @override
  String toString() {
    return 'InvoiceDTO(id: $id, promotionName: $promotionName, code: $code, planId: $planId, planCode: $planCode, invoiceDate: $invoiceDate, dueDate: $dueDate, warehouseId: $warehouseId, subTotal: $subTotal, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, creditTypeId: $creditTypeId, customerId: $customerId, customerName: $customerName, deleteReason: $deleteReason, status: $status, remark: $remark, description: $description, balance: $balance, tax: $tax, discount: $discount, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, invoiceStatus: $invoiceStatus, bonus: $bonus, bonusType: $bonusType, bonusAmt: $bonusAmt, bonusAmount: $bonusAmount, cashback: $cashback, cashbackType: $cashbackType, cashbackAmt: $cashbackAmt, cashbackAmount: $cashbackAmount, paymentReceivedHistoryDto: $paymentReceivedHistoryDto, marketingGoodRequisitionId: $marketingGoodRequisitionId, marketingPromotionPlanDto: $marketingPromotionPlanDto, bonusDuration: $bonusDuration, cashbackDuration: $cashbackDuration, productDtos: $productDtos, giftItemDtos: $giftItemDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.promotionName, promotionName) ||
                other.promotionName == promotionName) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.otherCharges, otherCharges) ||
                other.otherCharges == otherCharges) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.paymentTermsId, paymentTermsId) ||
                other.paymentTermsId == paymentTermsId) &&
            (identical(other.creditTypeId, creditTypeId) ||
                other.creditTypeId == creditTypeId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.bonusType, bonusType) ||
                other.bonusType == bonusType) &&
            (identical(other.bonusAmt, bonusAmt) ||
                other.bonusAmt == bonusAmt) &&
            (identical(other.bonusAmount, bonusAmount) ||
                other.bonusAmount == bonusAmount) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback) &&
            (identical(other.cashbackType, cashbackType) ||
                other.cashbackType == cashbackType) &&
            (identical(other.cashbackAmt, cashbackAmt) ||
                other.cashbackAmt == cashbackAmt) &&
            (identical(other.cashbackAmount, cashbackAmount) ||
                other.cashbackAmount == cashbackAmount) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistoryDto, _paymentReceivedHistoryDto) &&
            (identical(other.marketingGoodRequisitionId,
                    marketingGoodRequisitionId) ||
                other.marketingGoodRequisitionId ==
                    marketingGoodRequisitionId) &&
            (identical(other.marketingPromotionPlanDto,
                    marketingPromotionPlanDto) ||
                other.marketingPromotionPlanDto == marketingPromotionPlanDto) &&
            (identical(other.bonusDuration, bonusDuration) ||
                other.bonusDuration == bonusDuration) &&
            (identical(other.cashbackDuration, cashbackDuration) ||
                other.cashbackDuration == cashbackDuration) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos) &&
            const DeepCollectionEquality()
                .equals(other._giftItemDtos, _giftItemDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        promotionName,
        code,
        planId,
        planCode,
        invoiceDate,
        dueDate,
        warehouseId,
        subTotal,
        discountAmount,
        discountType,
        taxAmount,
        taxType,
        otherCharges,
        grandTotal,
        paymentTypeId,
        paymentTermsId,
        creditTypeId,
        customerId,
        customerName,
        deleteReason,
        status,
        remark,
        description,
        balance,
        tax,
        discount,
        businessUnitId,
        businessUnitName,
        invoiceStatus,
        bonus,
        bonusType,
        bonusAmt,
        bonusAmount,
        cashback,
        cashbackType,
        cashbackAmt,
        cashbackAmount,
        const DeepCollectionEquality().hash(_paymentReceivedHistoryDto),
        marketingGoodRequisitionId,
        marketingPromotionPlanDto,
        bonusDuration,
        cashbackDuration,
        const DeepCollectionEquality().hash(_productDtos),
        const DeepCollectionEquality().hash(_giftItemDtos)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDTOImplCopyWith<_$InvoiceDTOImpl> get copyWith =>
      __$$InvoiceDTOImplCopyWithImpl<_$InvoiceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDTOImplToJson(
      this,
    );
  }
}

abstract class _InvoiceDTO extends InvoiceDTO {
  const factory _InvoiceDTO(
      {@JsonKey(name: 'marketing_promotion_invoice_id') final int id,
      @JsonKey(name: 'marketing_promotion_name') final String promotionName,
      @JsonKey(name: 'marketing_promotion_invoice_code') final String code,
      @JsonKey(name: 'marketing_promotion_plan_id') final int planId,
      @JsonKey(name: 'marketing_promotion_plan_code') final String planCode,
      @JsonKey(name: 'invoice_date') final String invoiceDate,
      @JsonKey(name: 'due_date') final String dueDate,
      @JsonKey(name: 'warehouse_id') final int? warehouseId,
      @JsonKey(name: 'sub_total') final double subTotal,
      @JsonKey(name: 'discount_amount') final double discountAmount,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'tax_amount') final double taxAmount,
      @JsonKey(name: 'tax_type') final String taxType,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total_amount') final double grandTotal,
      @JsonKey(name: 'payment_type_id') final int? paymentTypeId,
      @JsonKey(name: 'payment_terms_id') final int? paymentTermsId,
      @JsonKey(name: 'credit_type_id') final int? creditTypeId,
      @JsonKey(name: 'customer_id') final int? customerId,
      @JsonKey(name: 'customer_name') final String customerName,
      @JsonKey(name: 'delete_reason') final String? deleteReason,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'remark') final String? remark,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'balance') final double balance,
      @JsonKey(name: 'tax') final double tax,
      @JsonKey(name: 'discount') final double discount,
      @JsonKey(name: 'business_unit_id') final int? businessUnitId,
      @JsonKey(name: 'business_unit_name') final String businessUnitName,
      @JsonKey(name: 'invoice_status') final String invoiceStatus,
      @JsonKey(name: 'bonus') final double bonus,
      @JsonKey(name: 'bonus_type') final String bonusType,
      @JsonKey(name: 'bonus_amt') final double bonusAmt,
      @JsonKey(name: 'bonus_amount') final double bonusAmount,
      @JsonKey(name: 'cashback') final double cashback,
      @JsonKey(name: 'cashback_type') final String cashbackType,
      @JsonKey(name: 'cashback_amt') final double cashbackAmt,
      @JsonKey(name: 'cashback_amount') final double cashbackAmount,
      @JsonKey(name: 'payment_receives', includeToJson: false)
      final List<ReceiptDTO> paymentReceivedHistoryDto,
      @JsonKey(name: 'marketing_good_requisition_id')
      final int marketingGoodRequisitionId,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      final MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'bonus_duration') final int bonusDuration,
      @JsonKey(name: 'cashback_duration') final int cashbackDuration,
      @JsonKey(name: 'products') final List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items')
      final List<GiftItemDTO> giftItemDtos}) = _$InvoiceDTOImpl;
  const _InvoiceDTO._() : super._();

  factory _InvoiceDTO.fromJson(Map<String, dynamic> json) =
      _$InvoiceDTOImpl.fromJson;

  @override
  @JsonKey(name: 'marketing_promotion_invoice_id')
  int get id;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  String get promotionName;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_code')
  String get code;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get planId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get planCode;
  @override
  @JsonKey(name: 'invoice_date')
  String get invoiceDate;
  @override
  @JsonKey(name: 'due_date')
  String get dueDate;
  @override
  @JsonKey(name: 'warehouse_id')
  int? get warehouseId;
  @override
  @JsonKey(name: 'sub_total')
  double get subTotal;
  @override
  @JsonKey(name: 'discount_amount')
  double get discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  @JsonKey(name: 'tax_amount')
  double get taxAmount;
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
  int? get paymentTypeId;
  @override
  @JsonKey(name: 'payment_terms_id')
  int? get paymentTermsId;
  @override
  @JsonKey(name: 'credit_type_id')
  int? get creditTypeId;
  @override
  @JsonKey(name: 'customer_id')
  int? get customerId;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'delete_reason')
  String? get deleteReason;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'remark')
  String? get remark;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'balance')
  double get balance;
  @override
  @JsonKey(name: 'tax')
  double get tax;
  @override
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(name: 'business_unit_id')
  int? get businessUnitId;
  @override
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName;
  @override
  @JsonKey(name: 'invoice_status')
  String get invoiceStatus;
  @override
  @JsonKey(name: 'bonus')
  double get bonus;
  @override
  @JsonKey(name: 'bonus_type')
  String get bonusType;
  @override
  @JsonKey(name: 'bonus_amt')
  double get bonusAmt;
  @override
  @JsonKey(name: 'bonus_amount')
  double get bonusAmount;
  @override
  @JsonKey(name: 'cashback')
  double get cashback;
  @override
  @JsonKey(name: 'cashback_type')
  String get cashbackType;
  @override
  @JsonKey(name: 'cashback_amt')
  double get cashbackAmt;
  @override
  @JsonKey(name: 'cashback_amount')
  double get cashbackAmount;
  @override
  @JsonKey(name: 'payment_receives', includeToJson: false)
  List<ReceiptDTO> get paymentReceivedHistoryDto;
  @override
  @JsonKey(name: 'marketing_good_requisition_id')
  int get marketingGoodRequisitionId;
  @override
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  MarketingPromotionPlanDTO get marketingPromotionPlanDto;
  @override
  @JsonKey(name: 'bonus_duration')
  int get bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration')
  int get cashbackDuration;
  @override
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos;
  @override
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceDTOImplCopyWith<_$InvoiceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
