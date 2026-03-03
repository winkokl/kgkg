// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_sale_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SecondarySaleInvoice {
  int get id => throw _privateConstructorUsedError;
  int get saleOrderId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get saleOrderCode => throw _privateConstructorUsedError;
  String get invoiceDate => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  String get saleDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  double get totalInvoiceAmount => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get paidAmount => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  BusinessUnit get businessUnit => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentTerm get paymentTerm =>
      throw _privateConstructorUsedError; // @Default(Warehouse()) Warehouse warehouse,
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get deleteReason => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get taxType => throw _privateConstructorUsedError;
  double get otherChargesAmount => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get grandtotal => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<SecondarySaleReceipt> get paymentReceivedHistory =>
      throw _privateConstructorUsedError;
  SalePromotion? get salePromotion => throw _privateConstructorUsedError;
  double get bonus => throw _privateConstructorUsedError;
  double get cashBack => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondarySaleInvoiceCopyWith<SecondarySaleInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondarySaleInvoiceCopyWith<$Res> {
  factory $SecondarySaleInvoiceCopyWith(SecondarySaleInvoice value,
          $Res Function(SecondarySaleInvoice) then) =
      _$SecondarySaleInvoiceCopyWithImpl<$Res, SecondarySaleInvoice>;
  @useResult
  $Res call(
      {int id,
      int saleOrderId,
      String code,
      String saleOrderCode,
      String invoiceDate,
      String dueDate,
      String saleDate,
      String deliveryDate,
      double totalInvoiceAmount,
      double balance,
      double paidAmount,
      Customer customer,
      BusinessUnit businessUnit,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      PaymentStatus paymentStatus,
      List<Product> products,
      List<SecondarySaleReceipt> paymentReceivedHistory,
      SalePromotion? salePromotion,
      double bonus,
      double cashBack});

  $CustomerCopyWith<$Res> get customer;
  $BusinessUnitCopyWith<$Res> get businessUnit;
  $PaymentTypeCopyWith<$Res> get paymentType;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $SalePromotionCopyWith<$Res>? get salePromotion;
}

/// @nodoc
class _$SecondarySaleInvoiceCopyWithImpl<$Res,
        $Val extends SecondarySaleInvoice>
    implements $SecondarySaleInvoiceCopyWith<$Res> {
  _$SecondarySaleInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? saleOrderId = null,
    Object? code = null,
    Object? saleOrderCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? saleDate = null,
    Object? deliveryDate = null,
    Object? totalInvoiceAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? paymentStatus = null,
    Object? products = null,
    Object? paymentReceivedHistory = null,
    Object? salePromotion = freezed,
    Object? bonus = null,
    Object? cashBack = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderId: null == saleOrderId
          ? _value.saleOrderId
          : saleOrderId // ignore: cast_nullable_to_non_nullable
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
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      saleDate: null == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      totalInvoiceAmount: null == totalInvoiceAmount
          ? _value.totalInvoiceAmount
          : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as BusinessUnit,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentTerm: null == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
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
      otherChargesAmount: null == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value.paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<SecondarySaleReceipt>,
      salePromotion: freezed == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion?,
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
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessUnitCopyWith<$Res> get businessUnit {
    return $BusinessUnitCopyWith<$Res>(_value.businessUnit, (value) {
      return _then(_value.copyWith(businessUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeCopyWith<$Res> get paymentType {
    return $PaymentTypeCopyWith<$Res>(_value.paymentType, (value) {
      return _then(_value.copyWith(paymentType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTermCopyWith<$Res> get paymentTerm {
    return $PaymentTermCopyWith<$Res>(_value.paymentTerm, (value) {
      return _then(_value.copyWith(paymentTerm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SalePromotionCopyWith<$Res>? get salePromotion {
    if (_value.salePromotion == null) {
      return null;
    }

    return $SalePromotionCopyWith<$Res>(_value.salePromotion!, (value) {
      return _then(_value.copyWith(salePromotion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SecondarySaleInvoiceImplCopyWith<$Res>
    implements $SecondarySaleInvoiceCopyWith<$Res> {
  factory _$$SecondarySaleInvoiceImplCopyWith(_$SecondarySaleInvoiceImpl value,
          $Res Function(_$SecondarySaleInvoiceImpl) then) =
      __$$SecondarySaleInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int saleOrderId,
      String code,
      String saleOrderCode,
      String invoiceDate,
      String dueDate,
      String saleDate,
      String deliveryDate,
      double totalInvoiceAmount,
      double balance,
      double paidAmount,
      Customer customer,
      BusinessUnit businessUnit,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      String remark,
      String description,
      String deleteReason,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double otherChargesAmount,
      double subtotal,
      double grandtotal,
      PaymentStatus paymentStatus,
      List<Product> products,
      List<SecondarySaleReceipt> paymentReceivedHistory,
      SalePromotion? salePromotion,
      double bonus,
      double cashBack});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $BusinessUnitCopyWith<$Res> get businessUnit;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $SalePromotionCopyWith<$Res>? get salePromotion;
}

/// @nodoc
class __$$SecondarySaleInvoiceImplCopyWithImpl<$Res>
    extends _$SecondarySaleInvoiceCopyWithImpl<$Res, _$SecondarySaleInvoiceImpl>
    implements _$$SecondarySaleInvoiceImplCopyWith<$Res> {
  __$$SecondarySaleInvoiceImplCopyWithImpl(_$SecondarySaleInvoiceImpl _value,
      $Res Function(_$SecondarySaleInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? saleOrderId = null,
    Object? code = null,
    Object? saleOrderCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? saleDate = null,
    Object? deliveryDate = null,
    Object? totalInvoiceAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? remark = null,
    Object? description = null,
    Object? deleteReason = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherChargesAmount = null,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? paymentStatus = null,
    Object? products = null,
    Object? paymentReceivedHistory = null,
    Object? salePromotion = freezed,
    Object? bonus = null,
    Object? cashBack = null,
  }) {
    return _then(_$SecondarySaleInvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderId: null == saleOrderId
          ? _value.saleOrderId
          : saleOrderId // ignore: cast_nullable_to_non_nullable
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
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      saleDate: null == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      totalInvoiceAmount: null == totalInvoiceAmount
          ? _value.totalInvoiceAmount
          : totalInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as BusinessUnit,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      paymentTerm: null == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
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
      otherChargesAmount: null == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value._paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<SecondarySaleReceipt>,
      salePromotion: freezed == salePromotion
          ? _value.salePromotion
          : salePromotion // ignore: cast_nullable_to_non_nullable
              as SalePromotion?,
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

class _$SecondarySaleInvoiceImpl implements _SecondarySaleInvoice {
  const _$SecondarySaleInvoiceImpl(
      {this.id = -1,
      this.saleOrderId = -1,
      this.code = "",
      this.saleOrderCode = "",
      this.invoiceDate = "",
      this.dueDate = "",
      this.saleDate = "",
      this.deliveryDate = "",
      this.totalInvoiceAmount = 0,
      this.balance = 0,
      this.paidAmount = 0,
      this.customer = const Customer(),
      this.businessUnit = const BusinessUnit(),
      this.paymentType = const PaymentType(),
      this.paymentTerm = const PaymentTerm(),
      this.remark = "",
      this.description = "",
      this.deleteReason = "",
      this.discountAmount = 0,
      this.discountType = AmountOrPercentStatus.amount,
      this.taxAmount = 0,
      this.taxType = AmountOrPercentStatus.amount,
      this.otherChargesAmount = 0,
      this.subtotal = 0,
      this.grandtotal = 0,
      this.paymentStatus = PaymentStatus.none,
      final List<Product> products = const [],
      final List<SecondarySaleReceipt> paymentReceivedHistory = const [],
      this.salePromotion,
      this.bonus = 0,
      this.cashBack = 0})
      : _products = products,
        _paymentReceivedHistory = paymentReceivedHistory;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int saleOrderId;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String saleOrderCode;
  @override
  @JsonKey()
  final String invoiceDate;
  @override
  @JsonKey()
  final String dueDate;
  @override
  @JsonKey()
  final String saleDate;
  @override
  @JsonKey()
  final String deliveryDate;
  @override
  @JsonKey()
  final double totalInvoiceAmount;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double paidAmount;
  @override
  @JsonKey()
  final Customer customer;
  @override
  @JsonKey()
  final BusinessUnit businessUnit;
  @override
  @JsonKey()
  final PaymentType paymentType;
  @override
  @JsonKey()
  final PaymentTerm paymentTerm;
// @Default(Warehouse()) Warehouse warehouse,
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String deleteReason;
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
  final double otherChargesAmount;
  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double grandtotal;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<SecondarySaleReceipt> _paymentReceivedHistory;
  @override
  @JsonKey()
  List<SecondarySaleReceipt> get paymentReceivedHistory {
    if (_paymentReceivedHistory is EqualUnmodifiableListView)
      return _paymentReceivedHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistory);
  }

  @override
  final SalePromotion? salePromotion;
  @override
  @JsonKey()
  final double bonus;
  @override
  @JsonKey()
  final double cashBack;

  @override
  String toString() {
    return 'SecondarySaleInvoice(id: $id, saleOrderId: $saleOrderId, code: $code, saleOrderCode: $saleOrderCode, invoiceDate: $invoiceDate, dueDate: $dueDate, saleDate: $saleDate, deliveryDate: $deliveryDate, totalInvoiceAmount: $totalInvoiceAmount, balance: $balance, paidAmount: $paidAmount, customer: $customer, businessUnit: $businessUnit, paymentType: $paymentType, paymentTerm: $paymentTerm, remark: $remark, description: $description, deleteReason: $deleteReason, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, paymentStatus: $paymentStatus, products: $products, paymentReceivedHistory: $paymentReceivedHistory, salePromotion: $salePromotion, bonus: $bonus, cashBack: $cashBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondarySaleInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.saleOrderId, saleOrderId) ||
                other.saleOrderId == saleOrderId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.saleOrderCode, saleOrderCode) ||
                other.saleOrderCode == saleOrderCode) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.saleDate, saleDate) ||
                other.saleDate == saleDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.totalInvoiceAmount, totalInvoiceAmount) ||
                other.totalInvoiceAmount == totalInvoiceAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTerm, paymentTerm) ||
                other.paymentTerm == paymentTerm) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.otherChargesAmount, otherChargesAmount) ||
                other.otherChargesAmount == otherChargesAmount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistory, _paymentReceivedHistory) &&
            (identical(other.salePromotion, salePromotion) ||
                other.salePromotion == salePromotion) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        saleOrderId,
        code,
        saleOrderCode,
        invoiceDate,
        dueDate,
        saleDate,
        deliveryDate,
        totalInvoiceAmount,
        balance,
        paidAmount,
        customer,
        businessUnit,
        paymentType,
        paymentTerm,
        remark,
        description,
        deleteReason,
        discountAmount,
        discountType,
        taxAmount,
        taxType,
        otherChargesAmount,
        subtotal,
        grandtotal,
        paymentStatus,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_paymentReceivedHistory),
        salePromotion,
        bonus,
        cashBack
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondarySaleInvoiceImplCopyWith<_$SecondarySaleInvoiceImpl>
      get copyWith =>
          __$$SecondarySaleInvoiceImplCopyWithImpl<_$SecondarySaleInvoiceImpl>(
              this, _$identity);
}

abstract class _SecondarySaleInvoice implements SecondarySaleInvoice {
  const factory _SecondarySaleInvoice(
      {final int id,
      final int saleOrderId,
      final String code,
      final String saleOrderCode,
      final String invoiceDate,
      final String dueDate,
      final String saleDate,
      final String deliveryDate,
      final double totalInvoiceAmount,
      final double balance,
      final double paidAmount,
      final Customer customer,
      final BusinessUnit businessUnit,
      final PaymentType paymentType,
      final PaymentTerm paymentTerm,
      final String remark,
      final String description,
      final String deleteReason,
      final double discountAmount,
      final AmountOrPercentStatus discountType,
      final double taxAmount,
      final AmountOrPercentStatus taxType,
      final double otherChargesAmount,
      final double subtotal,
      final double grandtotal,
      final PaymentStatus paymentStatus,
      final List<Product> products,
      final List<SecondarySaleReceipt> paymentReceivedHistory,
      final SalePromotion? salePromotion,
      final double bonus,
      final double cashBack}) = _$SecondarySaleInvoiceImpl;

  @override
  int get id;
  @override
  int get saleOrderId;
  @override
  String get code;
  @override
  String get saleOrderCode;
  @override
  String get invoiceDate;
  @override
  String get dueDate;
  @override
  String get saleDate;
  @override
  String get deliveryDate;
  @override
  double get totalInvoiceAmount;
  @override
  double get balance;
  @override
  double get paidAmount;
  @override
  Customer get customer;
  @override
  BusinessUnit get businessUnit;
  @override
  PaymentType get paymentType;
  @override
  PaymentTerm get paymentTerm;
  @override // @Default(Warehouse()) Warehouse warehouse,
  String get remark;
  @override
  String get description;
  @override
  String get deleteReason;
  @override
  double get discountAmount;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double get taxAmount;
  @override
  AmountOrPercentStatus get taxType;
  @override
  double get otherChargesAmount;
  @override
  double get subtotal;
  @override
  double get grandtotal;
  @override
  PaymentStatus get paymentStatus;
  @override
  List<Product> get products;
  @override
  List<SecondarySaleReceipt> get paymentReceivedHistory;
  @override
  SalePromotion? get salePromotion;
  @override
  double get bonus;
  @override
  double get cashBack;
  @override
  @JsonKey(ignore: true)
  _$$SecondarySaleInvoiceImplCopyWith<_$SecondarySaleInvoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
