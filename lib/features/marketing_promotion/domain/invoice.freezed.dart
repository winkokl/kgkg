// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Invoice {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get planId => throw _privateConstructorUsedError;
  String get planCode => throw _privateConstructorUsedError;
  String get invoiceDate => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  int? get warehouseId => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get taxType => throw _privateConstructorUsedError;
  double get otherCharges => throw _privateConstructorUsedError;
  double get grandTotal => throw _privateConstructorUsedError;
  int? get paymentTypeId => throw _privateConstructorUsedError;
  int? get paymentTermsId => throw _privateConstructorUsedError;
  int? get creditTypeId => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;
  String? get deleteReason => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  int? get businessUnitId => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  double get bonus => throw _privateConstructorUsedError;
  AmountOrPercentStatus get bonusType => throw _privateConstructorUsedError;
  double get bonusAmt => throw _privateConstructorUsedError;
  double get cashback => throw _privateConstructorUsedError;
  AmountOrPercentStatus get cashbackType => throw _privateConstructorUsedError;
  double get cashbackAmt => throw _privateConstructorUsedError;
  List<Receipt> get paymentReceivedHistory =>
      throw _privateConstructorUsedError;
  int get marketingGoodRequisitionId => throw _privateConstructorUsedError;
  MarketingPromotionPlan get marketingPromotionPlan =>
      throw _privateConstructorUsedError;
  int get bonusDuration => throw _privateConstructorUsedError;
  int get cashbackDuration => throw _privateConstructorUsedError;
  List<PromotionProduct> get products => throw _privateConstructorUsedError;
  List<GiftItem> get giftItems => throw _privateConstructorUsedError;
  String get paymentReceiveDate => throw _privateConstructorUsedError;
  double get paidAmt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {int id,
      String code,
      int planId,
      String planCode,
      String invoiceDate,
      String dueDate,
      int? warehouseId,
      double subTotal,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherCharges,
      double grandTotal,
      int? paymentTypeId,
      int? paymentTermsId,
      int? creditTypeId,
      int? customerId,
      String? deleteReason,
      String status,
      String? remark,
      String description,
      double balance,
      double tax,
      double discount,
      int? businessUnitId,
      PaymentStatus paymentStatus,
      double bonus,
      AmountOrPercentStatus bonusType,
      double bonusAmt,
      double cashback,
      AmountOrPercentStatus cashbackType,
      double cashbackAmt,
      List<Receipt> paymentReceivedHistory,
      int marketingGoodRequisitionId,
      MarketingPromotionPlan marketingPromotionPlan,
      int bonusDuration,
      int cashbackDuration,
      List<PromotionProduct> products,
      List<GiftItem> giftItems,
      String paymentReceiveDate,
      double paidAmt});

  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? deleteReason = freezed,
    Object? status = null,
    Object? remark = freezed,
    Object? description = null,
    Object? balance = null,
    Object? tax = null,
    Object? discount = null,
    Object? businessUnitId = freezed,
    Object? paymentStatus = null,
    Object? bonus = null,
    Object? bonusType = null,
    Object? bonusAmt = null,
    Object? cashback = null,
    Object? cashbackType = null,
    Object? cashbackAmt = null,
    Object? paymentReceivedHistory = null,
    Object? marketingGoodRequisitionId = null,
    Object? marketingPromotionPlan = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? products = null,
    Object? giftItems = null,
    Object? paymentReceiveDate = null,
    Object? paidAmt = null,
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
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value.paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      marketingGoodRequisitionId: null == marketingGoodRequisitionId
          ? _value.marketingGoodRequisitionId
          : marketingGoodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionPlan: null == marketingPromotionPlan
          ? _value.marketingPromotionPlan
          : marketingPromotionPlan // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlan,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PromotionProduct>,
      giftItems: null == giftItems
          ? _value.giftItems
          : giftItems // ignore: cast_nullable_to_non_nullable
              as List<GiftItem>,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmt: null == paidAmt
          ? _value.paidAmt
          : paidAmt // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan {
    return $MarketingPromotionPlanCopyWith<$Res>(_value.marketingPromotionPlan,
        (value) {
      return _then(_value.copyWith(marketingPromotionPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      int planId,
      String planCode,
      String invoiceDate,
      String dueDate,
      int? warehouseId,
      double subTotal,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherCharges,
      double grandTotal,
      int? paymentTypeId,
      int? paymentTermsId,
      int? creditTypeId,
      int? customerId,
      String? deleteReason,
      String status,
      String? remark,
      String description,
      double balance,
      double tax,
      double discount,
      int? businessUnitId,
      PaymentStatus paymentStatus,
      double bonus,
      AmountOrPercentStatus bonusType,
      double bonusAmt,
      double cashback,
      AmountOrPercentStatus cashbackType,
      double cashbackAmt,
      List<Receipt> paymentReceivedHistory,
      int marketingGoodRequisitionId,
      MarketingPromotionPlan marketingPromotionPlan,
      int bonusDuration,
      int cashbackDuration,
      List<PromotionProduct> products,
      List<GiftItem> giftItems,
      String paymentReceiveDate,
      double paidAmt});

  @override
  $MarketingPromotionPlanCopyWith<$Res> get marketingPromotionPlan;
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? deleteReason = freezed,
    Object? status = null,
    Object? remark = freezed,
    Object? description = null,
    Object? balance = null,
    Object? tax = null,
    Object? discount = null,
    Object? businessUnitId = freezed,
    Object? paymentStatus = null,
    Object? bonus = null,
    Object? bonusType = null,
    Object? bonusAmt = null,
    Object? cashback = null,
    Object? cashbackType = null,
    Object? cashbackAmt = null,
    Object? paymentReceivedHistory = null,
    Object? marketingGoodRequisitionId = null,
    Object? marketingPromotionPlan = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? products = null,
    Object? giftItems = null,
    Object? paymentReceiveDate = null,
    Object? paidAmt = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as AmountOrPercentStatus,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusType: null == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      bonusAmt: null == bonusAmt
          ? _value.bonusAmt
          : bonusAmt // ignore: cast_nullable_to_non_nullable
              as double,
      cashback: null == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackType: null == cashbackType
          ? _value.cashbackType
          : cashbackType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      cashbackAmt: null == cashbackAmt
          ? _value.cashbackAmt
          : cashbackAmt // ignore: cast_nullable_to_non_nullable
              as double,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value._paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      marketingGoodRequisitionId: null == marketingGoodRequisitionId
          ? _value.marketingGoodRequisitionId
          : marketingGoodRequisitionId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionPlan: null == marketingPromotionPlan
          ? _value.marketingPromotionPlan
          : marketingPromotionPlan // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlan,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PromotionProduct>,
      giftItems: null == giftItems
          ? _value._giftItems
          : giftItems // ignore: cast_nullable_to_non_nullable
              as List<GiftItem>,
      paymentReceiveDate: null == paymentReceiveDate
          ? _value.paymentReceiveDate
          : paymentReceiveDate // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmt: null == paidAmt
          ? _value.paidAmt
          : paidAmt // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {this.id = -1,
      this.code = '',
      this.planId = -1,
      this.planCode = '',
      this.invoiceDate = '',
      this.dueDate = '',
      this.warehouseId,
      this.subTotal = 0,
      this.discountAmount = 0,
      this.discountType = AmountOrPercentStatus.amount,
      this.taxAmount = 0,
      this.taxType = AmountOrPercentStatus.amount,
      this.otherCharges = 0,
      this.grandTotal = 0,
      this.paymentTypeId,
      this.paymentTermsId,
      this.creditTypeId,
      this.customerId,
      this.deleteReason,
      this.status = '',
      this.remark,
      this.description = '',
      this.balance = 0,
      this.tax = 0,
      this.discount = 0,
      this.businessUnitId,
      this.paymentStatus = PaymentStatus.none,
      this.bonus = 0,
      this.bonusType = AmountOrPercentStatus.amount,
      this.bonusAmt = 0,
      this.cashback = 0,
      this.cashbackType = AmountOrPercentStatus.amount,
      this.cashbackAmt = 0,
      final List<Receipt> paymentReceivedHistory = const [],
      this.marketingGoodRequisitionId = -1,
      this.marketingPromotionPlan = const MarketingPromotionPlan(),
      this.bonusDuration = 0,
      this.cashbackDuration = 0,
      final List<PromotionProduct> products = const [],
      final List<GiftItem> giftItems = const [],
      this.paymentReceiveDate = '',
      this.paidAmt = 0})
      : _paymentReceivedHistory = paymentReceivedHistory,
        _products = products,
        _giftItems = giftItems;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int planId;
  @override
  @JsonKey()
  final String planCode;
  @override
  @JsonKey()
  final String invoiceDate;
  @override
  @JsonKey()
  final String dueDate;
  @override
  final int? warehouseId;
  @override
  @JsonKey()
  final double subTotal;
  @override
  @JsonKey()
  final double discountAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus discountType;
  @override
  @JsonKey()
  final double taxAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus taxType;
  @override
  @JsonKey()
  final double otherCharges;
  @override
  @JsonKey()
  final double grandTotal;
  @override
  final int? paymentTypeId;
  @override
  final int? paymentTermsId;
  @override
  final int? creditTypeId;
  @override
  final int? customerId;
  @override
  final String? deleteReason;
  @override
  @JsonKey()
  final String status;
  @override
  final String? remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double tax;
  @override
  @JsonKey()
  final double discount;
  @override
  final int? businessUnitId;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final double bonus;
  @override
  @JsonKey()
  final AmountOrPercentStatus bonusType;
  @override
  @JsonKey()
  final double bonusAmt;
  @override
  @JsonKey()
  final double cashback;
  @override
  @JsonKey()
  final AmountOrPercentStatus cashbackType;
  @override
  @JsonKey()
  final double cashbackAmt;
  final List<Receipt> _paymentReceivedHistory;
  @override
  @JsonKey()
  List<Receipt> get paymentReceivedHistory {
    if (_paymentReceivedHistory is EqualUnmodifiableListView)
      return _paymentReceivedHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistory);
  }

  @override
  @JsonKey()
  final int marketingGoodRequisitionId;
  @override
  @JsonKey()
  final MarketingPromotionPlan marketingPromotionPlan;
  @override
  @JsonKey()
  final int bonusDuration;
  @override
  @JsonKey()
  final int cashbackDuration;
  final List<PromotionProduct> _products;
  @override
  @JsonKey()
  List<PromotionProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<GiftItem> _giftItems;
  @override
  @JsonKey()
  List<GiftItem> get giftItems {
    if (_giftItems is EqualUnmodifiableListView) return _giftItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftItems);
  }

  @override
  @JsonKey()
  final String paymentReceiveDate;
  @override
  @JsonKey()
  final double paidAmt;

  @override
  String toString() {
    return 'Invoice(id: $id, code: $code, planId: $planId, planCode: $planCode, invoiceDate: $invoiceDate, dueDate: $dueDate, warehouseId: $warehouseId, subTotal: $subTotal, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, creditTypeId: $creditTypeId, customerId: $customerId, deleteReason: $deleteReason, status: $status, remark: $remark, description: $description, balance: $balance, tax: $tax, discount: $discount, businessUnitId: $businessUnitId, paymentStatus: $paymentStatus, bonus: $bonus, bonusType: $bonusType, bonusAmt: $bonusAmt, cashback: $cashback, cashbackType: $cashbackType, cashbackAmt: $cashbackAmt, paymentReceivedHistory: $paymentReceivedHistory, marketingGoodRequisitionId: $marketingGoodRequisitionId, marketingPromotionPlan: $marketingPromotionPlan, bonusDuration: $bonusDuration, cashbackDuration: $cashbackDuration, products: $products, giftItems: $giftItems, paymentReceiveDate: $paymentReceiveDate, paidAmt: $paidAmt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.bonusType, bonusType) ||
                other.bonusType == bonusType) &&
            (identical(other.bonusAmt, bonusAmt) ||
                other.bonusAmt == bonusAmt) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback) &&
            (identical(other.cashbackType, cashbackType) ||
                other.cashbackType == cashbackType) &&
            (identical(other.cashbackAmt, cashbackAmt) ||
                other.cashbackAmt == cashbackAmt) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistory, _paymentReceivedHistory) &&
            (identical(other.marketingGoodRequisitionId,
                    marketingGoodRequisitionId) ||
                other.marketingGoodRequisitionId ==
                    marketingGoodRequisitionId) &&
            (identical(other.marketingPromotionPlan, marketingPromotionPlan) ||
                other.marketingPromotionPlan == marketingPromotionPlan) &&
            (identical(other.bonusDuration, bonusDuration) ||
                other.bonusDuration == bonusDuration) &&
            (identical(other.cashbackDuration, cashbackDuration) ||
                other.cashbackDuration == cashbackDuration) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._giftItems, _giftItems) &&
            (identical(other.paymentReceiveDate, paymentReceiveDate) ||
                other.paymentReceiveDate == paymentReceiveDate) &&
            (identical(other.paidAmt, paidAmt) || other.paidAmt == paidAmt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
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
        deleteReason,
        status,
        remark,
        description,
        balance,
        tax,
        discount,
        businessUnitId,
        paymentStatus,
        bonus,
        bonusType,
        bonusAmt,
        cashback,
        cashbackType,
        cashbackAmt,
        const DeepCollectionEquality().hash(_paymentReceivedHistory),
        marketingGoodRequisitionId,
        marketingPromotionPlan,
        bonusDuration,
        cashbackDuration,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_giftItems),
        paymentReceiveDate,
        paidAmt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {final int id,
      final String code,
      final int planId,
      final String planCode,
      final String invoiceDate,
      final String dueDate,
      final int? warehouseId,
      final double subTotal,
      final double discountAmount,
      final AmountOrPercentStatus discountType,
      final double taxAmount,
      final AmountOrPercentStatus taxType,
      final double otherCharges,
      final double grandTotal,
      final int? paymentTypeId,
      final int? paymentTermsId,
      final int? creditTypeId,
      final int? customerId,
      final String? deleteReason,
      final String status,
      final String? remark,
      final String description,
      final double balance,
      final double tax,
      final double discount,
      final int? businessUnitId,
      final PaymentStatus paymentStatus,
      final double bonus,
      final AmountOrPercentStatus bonusType,
      final double bonusAmt,
      final double cashback,
      final AmountOrPercentStatus cashbackType,
      final double cashbackAmt,
      final List<Receipt> paymentReceivedHistory,
      final int marketingGoodRequisitionId,
      final MarketingPromotionPlan marketingPromotionPlan,
      final int bonusDuration,
      final int cashbackDuration,
      final List<PromotionProduct> products,
      final List<GiftItem> giftItems,
      final String paymentReceiveDate,
      final double paidAmt}) = _$InvoiceImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  int get planId;
  @override
  String get planCode;
  @override
  String get invoiceDate;
  @override
  String get dueDate;
  @override
  int? get warehouseId;
  @override
  double get subTotal;
  @override
  double get discountAmount;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double get taxAmount;
  @override
  AmountOrPercentStatus get taxType;
  @override
  double get otherCharges;
  @override
  double get grandTotal;
  @override
  int? get paymentTypeId;
  @override
  int? get paymentTermsId;
  @override
  int? get creditTypeId;
  @override
  int? get customerId;
  @override
  String? get deleteReason;
  @override
  String get status;
  @override
  String? get remark;
  @override
  String get description;
  @override
  double get balance;
  @override
  double get tax;
  @override
  double get discount;
  @override
  int? get businessUnitId;
  @override
  PaymentStatus get paymentStatus;
  @override
  double get bonus;
  @override
  AmountOrPercentStatus get bonusType;
  @override
  double get bonusAmt;
  @override
  double get cashback;
  @override
  AmountOrPercentStatus get cashbackType;
  @override
  double get cashbackAmt;
  @override
  List<Receipt> get paymentReceivedHistory;
  @override
  int get marketingGoodRequisitionId;
  @override
  MarketingPromotionPlan get marketingPromotionPlan;
  @override
  int get bonusDuration;
  @override
  int get cashbackDuration;
  @override
  List<PromotionProduct> get products;
  @override
  List<GiftItem> get giftItems;
  @override
  String get paymentReceiveDate;
  @override
  double get paidAmt;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
