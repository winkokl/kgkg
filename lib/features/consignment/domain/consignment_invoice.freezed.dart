// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConsignmentInvoice {
  int get id => throw _privateConstructorUsedError;
  int get consignmentId => throw _privateConstructorUsedError;
  int get consignmentTypeId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get consignmentCode => throw _privateConstructorUsedError;
  String get invoiceDate => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  String get saleDate => throw _privateConstructorUsedError;
  double get totalInvoiceAmount => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get paidAmount => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  BusinessUnit get businessUnit => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentTerm get paymentTerm => throw _privateConstructorUsedError;
  Warehouse get warehouse => throw _privateConstructorUsedError;
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
  List<Product> get products => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  List<ConsignmentReceipt> get paymentReceivedHistory =>
      throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  ConsignmentMethod get consignmentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsignmentInvoiceCopyWith<ConsignmentInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentInvoiceCopyWith<$Res> {
  factory $ConsignmentInvoiceCopyWith(
          ConsignmentInvoice value, $Res Function(ConsignmentInvoice) then) =
      _$ConsignmentInvoiceCopyWithImpl<$Res, ConsignmentInvoice>;
  @useResult
  $Res call(
      {int id,
      int consignmentId,
      int consignmentTypeId,
      String code,
      String consignmentCode,
      String invoiceDate,
      String dueDate,
      String saleDate,
      double totalInvoiceAmount,
      double balance,
      double paidAmount,
      Customer customer,
      BusinessUnit businessUnit,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      Warehouse warehouse,
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
      List<Product> products,
      PaymentStatus paymentStatus,
      List<ConsignmentReceipt> paymentReceivedHistory,
      Region region,
      ConsignmentMethod consignmentMethod});

  $CustomerCopyWith<$Res> get customer;
  $BusinessUnitCopyWith<$Res> get businessUnit;
  $PaymentTypeCopyWith<$Res> get paymentType;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $WarehouseCopyWith<$Res> get warehouse;
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$ConsignmentInvoiceCopyWithImpl<$Res, $Val extends ConsignmentInvoice>
    implements $ConsignmentInvoiceCopyWith<$Res> {
  _$ConsignmentInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentId = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? consignmentCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? saleDate = null,
    Object? totalInvoiceAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? warehouse = null,
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
    Object? products = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistory = null,
    Object? region = null,
    Object? consignmentMethod = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentId: null == consignmentId
          ? _value.consignmentId
          : consignmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentCode: null == consignmentCode
          ? _value.consignmentCode
          : consignmentCode // ignore: cast_nullable_to_non_nullable
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
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
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
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value.paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<ConsignmentReceipt>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
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
  $WarehouseCopyWith<$Res> get warehouse {
    return $WarehouseCopyWith<$Res>(_value.warehouse, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsignmentInvoiceImplCopyWith<$Res>
    implements $ConsignmentInvoiceCopyWith<$Res> {
  factory _$$ConsignmentInvoiceImplCopyWith(_$ConsignmentInvoiceImpl value,
          $Res Function(_$ConsignmentInvoiceImpl) then) =
      __$$ConsignmentInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int consignmentId,
      int consignmentTypeId,
      String code,
      String consignmentCode,
      String invoiceDate,
      String dueDate,
      String saleDate,
      double totalInvoiceAmount,
      double balance,
      double paidAmount,
      Customer customer,
      BusinessUnit businessUnit,
      PaymentType paymentType,
      PaymentTerm paymentTerm,
      Warehouse warehouse,
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
      List<Product> products,
      PaymentStatus paymentStatus,
      List<ConsignmentReceipt> paymentReceivedHistory,
      Region region,
      ConsignmentMethod consignmentMethod});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $BusinessUnitCopyWith<$Res> get businessUnit;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $WarehouseCopyWith<$Res> get warehouse;
  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$ConsignmentInvoiceImplCopyWithImpl<$Res>
    extends _$ConsignmentInvoiceCopyWithImpl<$Res, _$ConsignmentInvoiceImpl>
    implements _$$ConsignmentInvoiceImplCopyWith<$Res> {
  __$$ConsignmentInvoiceImplCopyWithImpl(_$ConsignmentInvoiceImpl _value,
      $Res Function(_$ConsignmentInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentId = null,
    Object? consignmentTypeId = null,
    Object? code = null,
    Object? consignmentCode = null,
    Object? invoiceDate = null,
    Object? dueDate = null,
    Object? saleDate = null,
    Object? totalInvoiceAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? customer = null,
    Object? businessUnit = null,
    Object? paymentType = null,
    Object? paymentTerm = null,
    Object? warehouse = null,
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
    Object? products = null,
    Object? paymentStatus = null,
    Object? paymentReceivedHistory = null,
    Object? region = null,
    Object? consignmentMethod = null,
  }) {
    return _then(_$ConsignmentInvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentId: null == consignmentId
          ? _value.consignmentId
          : consignmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentTypeId: null == consignmentTypeId
          ? _value.consignmentTypeId
          : consignmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentCode: null == consignmentCode
          ? _value.consignmentCode
          : consignmentCode // ignore: cast_nullable_to_non_nullable
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
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
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
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentReceivedHistory: null == paymentReceivedHistory
          ? _value._paymentReceivedHistory
          : paymentReceivedHistory // ignore: cast_nullable_to_non_nullable
              as List<ConsignmentReceipt>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
    ));
  }
}

/// @nodoc

class _$ConsignmentInvoiceImpl implements _ConsignmentInvoice {
  const _$ConsignmentInvoiceImpl(
      {this.id = -1,
      this.consignmentId = -1,
      this.consignmentTypeId = -1,
      this.code = "",
      this.consignmentCode = "",
      this.invoiceDate = "",
      this.dueDate = "",
      this.saleDate = "",
      this.totalInvoiceAmount = 0,
      this.balance = 0,
      this.paidAmount = 0,
      this.customer = const Customer(),
      this.businessUnit = const BusinessUnit(),
      this.paymentType = const PaymentType(),
      this.paymentTerm = const PaymentTerm(),
      this.warehouse = const Warehouse(),
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
      final List<Product> products = const [],
      this.paymentStatus = PaymentStatus.none,
      final List<ConsignmentReceipt> paymentReceivedHistory = const [],
      this.region = const Region(),
      this.consignmentMethod = ConsignmentMethod.stockRefill})
      : _products = products,
        _paymentReceivedHistory = paymentReceivedHistory;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int consignmentId;
  @override
  @JsonKey()
  final int consignmentTypeId;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String consignmentCode;
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
  @override
  @JsonKey()
  final Warehouse warehouse;
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
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  final List<ConsignmentReceipt> _paymentReceivedHistory;
  @override
  @JsonKey()
  List<ConsignmentReceipt> get paymentReceivedHistory {
    if (_paymentReceivedHistory is EqualUnmodifiableListView)
      return _paymentReceivedHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentReceivedHistory);
  }

  @override
  @JsonKey()
  final Region region;
  @override
  @JsonKey()
  final ConsignmentMethod consignmentMethod;

  @override
  String toString() {
    return 'ConsignmentInvoice(id: $id, consignmentId: $consignmentId, consignmentTypeId: $consignmentTypeId, code: $code, consignmentCode: $consignmentCode, invoiceDate: $invoiceDate, dueDate: $dueDate, saleDate: $saleDate, totalInvoiceAmount: $totalInvoiceAmount, balance: $balance, paidAmount: $paidAmount, customer: $customer, businessUnit: $businessUnit, paymentType: $paymentType, paymentTerm: $paymentTerm, warehouse: $warehouse, remark: $remark, description: $description, deleteReason: $deleteReason, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, products: $products, paymentStatus: $paymentStatus, paymentReceivedHistory: $paymentReceivedHistory, region: $region, consignmentMethod: $consignmentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentId, consignmentId) ||
                other.consignmentId == consignmentId) &&
            (identical(other.consignmentTypeId, consignmentTypeId) ||
                other.consignmentTypeId == consignmentTypeId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.consignmentCode, consignmentCode) ||
                other.consignmentCode == consignmentCode) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.saleDate, saleDate) ||
                other.saleDate == saleDate) &&
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
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
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
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(
                other._paymentReceivedHistory, _paymentReceivedHistory) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.consignmentMethod, consignmentMethod) ||
                other.consignmentMethod == consignmentMethod));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consignmentId,
        consignmentTypeId,
        code,
        consignmentCode,
        invoiceDate,
        dueDate,
        saleDate,
        totalInvoiceAmount,
        balance,
        paidAmount,
        customer,
        businessUnit,
        paymentType,
        paymentTerm,
        warehouse,
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
        const DeepCollectionEquality().hash(_products),
        paymentStatus,
        const DeepCollectionEquality().hash(_paymentReceivedHistory),
        region,
        consignmentMethod
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentInvoiceImplCopyWith<_$ConsignmentInvoiceImpl> get copyWith =>
      __$$ConsignmentInvoiceImplCopyWithImpl<_$ConsignmentInvoiceImpl>(
          this, _$identity);
}

abstract class _ConsignmentInvoice implements ConsignmentInvoice {
  const factory _ConsignmentInvoice(
      {final int id,
      final int consignmentId,
      final int consignmentTypeId,
      final String code,
      final String consignmentCode,
      final String invoiceDate,
      final String dueDate,
      final String saleDate,
      final double totalInvoiceAmount,
      final double balance,
      final double paidAmount,
      final Customer customer,
      final BusinessUnit businessUnit,
      final PaymentType paymentType,
      final PaymentTerm paymentTerm,
      final Warehouse warehouse,
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
      final List<Product> products,
      final PaymentStatus paymentStatus,
      final List<ConsignmentReceipt> paymentReceivedHistory,
      final Region region,
      final ConsignmentMethod consignmentMethod}) = _$ConsignmentInvoiceImpl;

  @override
  int get id;
  @override
  int get consignmentId;
  @override
  int get consignmentTypeId;
  @override
  String get code;
  @override
  String get consignmentCode;
  @override
  String get invoiceDate;
  @override
  String get dueDate;
  @override
  String get saleDate;
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
  @override
  Warehouse get warehouse;
  @override
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
  List<Product> get products;
  @override
  PaymentStatus get paymentStatus;
  @override
  List<ConsignmentReceipt> get paymentReceivedHistory;
  @override
  Region get region;
  @override
  ConsignmentMethod get consignmentMethod;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentInvoiceImplCopyWith<_$ConsignmentInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
