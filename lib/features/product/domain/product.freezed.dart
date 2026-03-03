// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  int? get secondarySaleReturnDetailId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get apiLevel => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  int get unitTypeId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get salePrice => throw _privateConstructorUsedError;
  double get primarySalePrice => throw _privateConstructorUsedError;
  double get secondarySalePrice => throw _privateConstructorUsedError;
  double get secondarySaleTax => throw _privateConstructorUsedError;
  AmountOrPercentStatus get secondarySaleTaxType =>
      throw _privateConstructorUsedError;
  double get consignmentSalePrice => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get discountType => throw _privateConstructorUsedError;
  double? get normalDiscount => throw _privateConstructorUsedError;
  AmountOrPercentStatus? get normalDiscountType =>
      throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  AmountOrPercentStatus get taxType => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  bool get isViewOnly => throw _privateConstructorUsedError;
  int get returnQty => throw _privateConstructorUsedError;
  int get consignmentContractQty => throw _privateConstructorUsedError;
  double get consignmentContractAmount => throw _privateConstructorUsedError;
  int get availableReturnQty => throw _privateConstructorUsedError;
  double get returnAmount => throw _privateConstructorUsedError;
  ProductSalePriceStatus get productSalePriceStatus =>
      throw _privateConstructorUsedError;
  Warehouse get warehouse => throw _privateConstructorUsedError;
  int get availableQty => throw _privateConstructorUsedError;
  bool get isTrip => throw _privateConstructorUsedError;
  bool get isConsignment => throw _privateConstructorUsedError;
  bool get isConsignmentContract => throw _privateConstructorUsedError;
  int? get proposalQty => throw _privateConstructorUsedError;
  int get totalIssuedQty => throw _privateConstructorUsedError;
  int get issuedBalanceQty => throw _privateConstructorUsedError;
  int get issueQty => throw _privateConstructorUsedError;
  int get requestQty => throw _privateConstructorUsedError;
  List<UnitType> get unitTypes => throw _privateConstructorUsedError;
  bool get isPromotionItem => throw _privateConstructorUsedError;
  PromotionDetail get promotionDetail => throw _privateConstructorUsedError;
  Info get promotionInfo => throw _privateConstructorUsedError;
  Sku get promotionSku => throw _privateConstructorUsedError;
  ConsignmentMethod get consignmentMethod => throw _privateConstructorUsedError;
  int get terminateSaleQty => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  dynamic get promoDiscount => throw _privateConstructorUsedError;
  dynamic get promoDiscountType => throw _privateConstructorUsedError;
  dynamic get promoCashback => throw _privateConstructorUsedError;
  dynamic get promoBonus => throw _privateConstructorUsedError;
  Info get itemBackProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      int? secondarySaleReturnDetailId,
      String code,
      String apiLevel,
      String barcode,
      String categoryName,
      String name,
      String typeName,
      Unit unit,
      int unitTypeId,
      int quantity,
      double salePrice,
      double primarySalePrice,
      double secondarySalePrice,
      double secondarySaleTax,
      AmountOrPercentStatus secondarySaleTaxType,
      double consignmentSalePrice,
      double amount,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double? normalDiscount,
      AmountOrPercentStatus? normalDiscountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double totalAmount,
      bool isSelected,
      bool isViewOnly,
      int returnQty,
      int consignmentContractQty,
      double consignmentContractAmount,
      int availableReturnQty,
      double returnAmount,
      ProductSalePriceStatus productSalePriceStatus,
      Warehouse warehouse,
      int availableQty,
      bool isTrip,
      bool isConsignment,
      bool isConsignmentContract,
      int? proposalQty,
      int totalIssuedQty,
      int issuedBalanceQty,
      int issueQty,
      int requestQty,
      List<UnitType> unitTypes,
      bool isPromotionItem,
      PromotionDetail promotionDetail,
      Info promotionInfo,
      Sku promotionSku,
      ConsignmentMethod consignmentMethod,
      int terminateSaleQty,
      String? prefix,
      dynamic promoDiscount,
      dynamic promoDiscountType,
      dynamic promoCashback,
      dynamic promoBonus,
      Info itemBackProduct});

  $UnitCopyWith<$Res> get unit;
  $WarehouseCopyWith<$Res> get warehouse;
  $PromotionDetailCopyWith<$Res> get promotionDetail;
  $InfoCopyWith<$Res> get promotionInfo;
  $SkuCopyWith<$Res> get promotionSku;
  $InfoCopyWith<$Res> get itemBackProduct;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? secondarySaleReturnDetailId = freezed,
    Object? code = null,
    Object? apiLevel = null,
    Object? barcode = null,
    Object? categoryName = null,
    Object? name = null,
    Object? typeName = null,
    Object? unit = null,
    Object? unitTypeId = null,
    Object? quantity = null,
    Object? salePrice = null,
    Object? primarySalePrice = null,
    Object? secondarySalePrice = null,
    Object? secondarySaleTax = null,
    Object? secondarySaleTaxType = null,
    Object? consignmentSalePrice = null,
    Object? amount = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? normalDiscount = freezed,
    Object? normalDiscountType = freezed,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? totalAmount = null,
    Object? isSelected = null,
    Object? isViewOnly = null,
    Object? returnQty = null,
    Object? consignmentContractQty = null,
    Object? consignmentContractAmount = null,
    Object? availableReturnQty = null,
    Object? returnAmount = null,
    Object? productSalePriceStatus = null,
    Object? warehouse = null,
    Object? availableQty = null,
    Object? isTrip = null,
    Object? isConsignment = null,
    Object? isConsignmentContract = null,
    Object? proposalQty = freezed,
    Object? totalIssuedQty = null,
    Object? issuedBalanceQty = null,
    Object? issueQty = null,
    Object? requestQty = null,
    Object? unitTypes = null,
    Object? isPromotionItem = null,
    Object? promotionDetail = null,
    Object? promotionInfo = null,
    Object? promotionSku = null,
    Object? consignmentMethod = null,
    Object? terminateSaleQty = null,
    Object? prefix = freezed,
    Object? promoDiscount = freezed,
    Object? promoDiscountType = freezed,
    Object? promoCashback = freezed,
    Object? promoBonus = freezed,
    Object? itemBackProduct = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      secondarySaleReturnDetailId: freezed == secondarySaleReturnDetailId
          ? _value.secondarySaleReturnDetailId
          : secondarySaleReturnDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      primarySalePrice: null == primarySalePrice
          ? _value.primarySalePrice
          : primarySalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySalePrice: null == secondarySalePrice
          ? _value.secondarySalePrice
          : secondarySalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySaleTax: null == secondarySaleTax
          ? _value.secondarySaleTax
          : secondarySaleTax // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySaleTaxType: null == secondarySaleTaxType
          ? _value.secondarySaleTaxType
          : secondarySaleTaxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      consignmentSalePrice: null == consignmentSalePrice
          ? _value.consignmentSalePrice
          : consignmentSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      normalDiscount: freezed == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      normalDiscountType: freezed == normalDiscountType
          ? _value.normalDiscountType
          : normalDiscountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus?,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewOnly: null == isViewOnly
          ? _value.isViewOnly
          : isViewOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractQty: null == consignmentContractQty
          ? _value.consignmentContractQty
          : consignmentContractQty // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractAmount: null == consignmentContractAmount
          ? _value.consignmentContractAmount
          : consignmentContractAmount // ignore: cast_nullable_to_non_nullable
              as double,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnAmount: null == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productSalePriceStatus: null == productSalePriceStatus
          ? _value.productSalePriceStatus
          : productSalePriceStatus // ignore: cast_nullable_to_non_nullable
              as ProductSalePriceStatus,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
      availableQty: null == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int,
      isTrip: null == isTrip
          ? _value.isTrip
          : isTrip // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsignment: null == isConsignment
          ? _value.isConsignment
          : isConsignment // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsignmentContract: null == isConsignmentContract
          ? _value.isConsignmentContract
          : isConsignmentContract // ignore: cast_nullable_to_non_nullable
              as bool,
      proposalQty: freezed == proposalQty
          ? _value.proposalQty
          : proposalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIssuedQty: null == totalIssuedQty
          ? _value.totalIssuedQty
          : totalIssuedQty // ignore: cast_nullable_to_non_nullable
              as int,
      issuedBalanceQty: null == issuedBalanceQty
          ? _value.issuedBalanceQty
          : issuedBalanceQty // ignore: cast_nullable_to_non_nullable
              as int,
      issueQty: null == issueQty
          ? _value.issueQty
          : issueQty // ignore: cast_nullable_to_non_nullable
              as int,
      requestQty: null == requestQty
          ? _value.requestQty
          : requestQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypes: null == unitTypes
          ? _value.unitTypes
          : unitTypes // ignore: cast_nullable_to_non_nullable
              as List<UnitType>,
      isPromotionItem: null == isPromotionItem
          ? _value.isPromotionItem
          : isPromotionItem // ignore: cast_nullable_to_non_nullable
              as bool,
      promotionDetail: null == promotionDetail
          ? _value.promotionDetail
          : promotionDetail // ignore: cast_nullable_to_non_nullable
              as PromotionDetail,
      promotionInfo: null == promotionInfo
          ? _value.promotionInfo
          : promotionInfo // ignore: cast_nullable_to_non_nullable
              as Info,
      promotionSku: null == promotionSku
          ? _value.promotionSku
          : promotionSku // ignore: cast_nullable_to_non_nullable
              as Sku,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
      terminateSaleQty: null == terminateSaleQty
          ? _value.terminateSaleQty
          : terminateSaleQty // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      promoDiscount: freezed == promoDiscount
          ? _value.promoDiscount
          : promoDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoDiscountType: freezed == promoDiscountType
          ? _value.promoDiscountType
          : promoDiscountType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCashback: freezed == promoCashback
          ? _value.promoCashback
          : promoCashback // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoBonus: freezed == promoBonus
          ? _value.promoBonus
          : promoBonus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemBackProduct: null == itemBackProduct
          ? _value.itemBackProduct
          : itemBackProduct // ignore: cast_nullable_to_non_nullable
              as Info,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitCopyWith<$Res> get unit {
    return $UnitCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
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
  $PromotionDetailCopyWith<$Res> get promotionDetail {
    return $PromotionDetailCopyWith<$Res>(_value.promotionDetail, (value) {
      return _then(_value.copyWith(promotionDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get promotionInfo {
    return $InfoCopyWith<$Res>(_value.promotionInfo, (value) {
      return _then(_value.copyWith(promotionInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SkuCopyWith<$Res> get promotionSku {
    return $SkuCopyWith<$Res>(_value.promotionSku, (value) {
      return _then(_value.copyWith(promotionSku: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get itemBackProduct {
    return $InfoCopyWith<$Res>(_value.itemBackProduct, (value) {
      return _then(_value.copyWith(itemBackProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? secondarySaleReturnDetailId,
      String code,
      String apiLevel,
      String barcode,
      String categoryName,
      String name,
      String typeName,
      Unit unit,
      int unitTypeId,
      int quantity,
      double salePrice,
      double primarySalePrice,
      double secondarySalePrice,
      double secondarySaleTax,
      AmountOrPercentStatus secondarySaleTaxType,
      double consignmentSalePrice,
      double amount,
      double discountAmount,
      AmountOrPercentStatus discountType,
      double? normalDiscount,
      AmountOrPercentStatus? normalDiscountType,
      double taxAmount,
      AmountOrPercentStatus taxType,
      double totalAmount,
      bool isSelected,
      bool isViewOnly,
      int returnQty,
      int consignmentContractQty,
      double consignmentContractAmount,
      int availableReturnQty,
      double returnAmount,
      ProductSalePriceStatus productSalePriceStatus,
      Warehouse warehouse,
      int availableQty,
      bool isTrip,
      bool isConsignment,
      bool isConsignmentContract,
      int? proposalQty,
      int totalIssuedQty,
      int issuedBalanceQty,
      int issueQty,
      int requestQty,
      List<UnitType> unitTypes,
      bool isPromotionItem,
      PromotionDetail promotionDetail,
      Info promotionInfo,
      Sku promotionSku,
      ConsignmentMethod consignmentMethod,
      int terminateSaleQty,
      String? prefix,
      dynamic promoDiscount,
      dynamic promoDiscountType,
      dynamic promoCashback,
      dynamic promoBonus,
      Info itemBackProduct});

  @override
  $UnitCopyWith<$Res> get unit;
  @override
  $WarehouseCopyWith<$Res> get warehouse;
  @override
  $PromotionDetailCopyWith<$Res> get promotionDetail;
  @override
  $InfoCopyWith<$Res> get promotionInfo;
  @override
  $SkuCopyWith<$Res> get promotionSku;
  @override
  $InfoCopyWith<$Res> get itemBackProduct;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? secondarySaleReturnDetailId = freezed,
    Object? code = null,
    Object? apiLevel = null,
    Object? barcode = null,
    Object? categoryName = null,
    Object? name = null,
    Object? typeName = null,
    Object? unit = null,
    Object? unitTypeId = null,
    Object? quantity = null,
    Object? salePrice = null,
    Object? primarySalePrice = null,
    Object? secondarySalePrice = null,
    Object? secondarySaleTax = null,
    Object? secondarySaleTaxType = null,
    Object? consignmentSalePrice = null,
    Object? amount = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? normalDiscount = freezed,
    Object? normalDiscountType = freezed,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? totalAmount = null,
    Object? isSelected = null,
    Object? isViewOnly = null,
    Object? returnQty = null,
    Object? consignmentContractQty = null,
    Object? consignmentContractAmount = null,
    Object? availableReturnQty = null,
    Object? returnAmount = null,
    Object? productSalePriceStatus = null,
    Object? warehouse = null,
    Object? availableQty = null,
    Object? isTrip = null,
    Object? isConsignment = null,
    Object? isConsignmentContract = null,
    Object? proposalQty = freezed,
    Object? totalIssuedQty = null,
    Object? issuedBalanceQty = null,
    Object? issueQty = null,
    Object? requestQty = null,
    Object? unitTypes = null,
    Object? isPromotionItem = null,
    Object? promotionDetail = null,
    Object? promotionInfo = null,
    Object? promotionSku = null,
    Object? consignmentMethod = null,
    Object? terminateSaleQty = null,
    Object? prefix = freezed,
    Object? promoDiscount = freezed,
    Object? promoDiscountType = freezed,
    Object? promoCashback = freezed,
    Object? promoBonus = freezed,
    Object? itemBackProduct = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      secondarySaleReturnDetailId: freezed == secondarySaleReturnDetailId
          ? _value.secondarySaleReturnDetailId
          : secondarySaleReturnDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      primarySalePrice: null == primarySalePrice
          ? _value.primarySalePrice
          : primarySalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySalePrice: null == secondarySalePrice
          ? _value.secondarySalePrice
          : secondarySalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySaleTax: null == secondarySaleTax
          ? _value.secondarySaleTax
          : secondarySaleTax // ignore: cast_nullable_to_non_nullable
              as double,
      secondarySaleTaxType: null == secondarySaleTaxType
          ? _value.secondarySaleTaxType
          : secondarySaleTaxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      consignmentSalePrice: null == consignmentSalePrice
          ? _value.consignmentSalePrice
          : consignmentSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      normalDiscount: freezed == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      normalDiscountType: freezed == normalDiscountType
          ? _value.normalDiscountType
          : normalDiscountType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus?,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as AmountOrPercentStatus,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewOnly: null == isViewOnly
          ? _value.isViewOnly
          : isViewOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractQty: null == consignmentContractQty
          ? _value.consignmentContractQty
          : consignmentContractQty // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractAmount: null == consignmentContractAmount
          ? _value.consignmentContractAmount
          : consignmentContractAmount // ignore: cast_nullable_to_non_nullable
              as double,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnAmount: null == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productSalePriceStatus: null == productSalePriceStatus
          ? _value.productSalePriceStatus
          : productSalePriceStatus // ignore: cast_nullable_to_non_nullable
              as ProductSalePriceStatus,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
      availableQty: null == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int,
      isTrip: null == isTrip
          ? _value.isTrip
          : isTrip // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsignment: null == isConsignment
          ? _value.isConsignment
          : isConsignment // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsignmentContract: null == isConsignmentContract
          ? _value.isConsignmentContract
          : isConsignmentContract // ignore: cast_nullable_to_non_nullable
              as bool,
      proposalQty: freezed == proposalQty
          ? _value.proposalQty
          : proposalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIssuedQty: null == totalIssuedQty
          ? _value.totalIssuedQty
          : totalIssuedQty // ignore: cast_nullable_to_non_nullable
              as int,
      issuedBalanceQty: null == issuedBalanceQty
          ? _value.issuedBalanceQty
          : issuedBalanceQty // ignore: cast_nullable_to_non_nullable
              as int,
      issueQty: null == issueQty
          ? _value.issueQty
          : issueQty // ignore: cast_nullable_to_non_nullable
              as int,
      requestQty: null == requestQty
          ? _value.requestQty
          : requestQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypes: null == unitTypes
          ? _value._unitTypes
          : unitTypes // ignore: cast_nullable_to_non_nullable
              as List<UnitType>,
      isPromotionItem: null == isPromotionItem
          ? _value.isPromotionItem
          : isPromotionItem // ignore: cast_nullable_to_non_nullable
              as bool,
      promotionDetail: null == promotionDetail
          ? _value.promotionDetail
          : promotionDetail // ignore: cast_nullable_to_non_nullable
              as PromotionDetail,
      promotionInfo: null == promotionInfo
          ? _value.promotionInfo
          : promotionInfo // ignore: cast_nullable_to_non_nullable
              as Info,
      promotionSku: null == promotionSku
          ? _value.promotionSku
          : promotionSku // ignore: cast_nullable_to_non_nullable
              as Sku,
      consignmentMethod: null == consignmentMethod
          ? _value.consignmentMethod
          : consignmentMethod // ignore: cast_nullable_to_non_nullable
              as ConsignmentMethod,
      terminateSaleQty: null == terminateSaleQty
          ? _value.terminateSaleQty
          : terminateSaleQty // ignore: cast_nullable_to_non_nullable
              as int,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      promoDiscount: freezed == promoDiscount
          ? _value.promoDiscount
          : promoDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoDiscountType: freezed == promoDiscountType
          ? _value.promoDiscountType
          : promoDiscountType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCashback: freezed == promoCashback
          ? _value.promoCashback
          : promoCashback // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoBonus: freezed == promoBonus
          ? _value.promoBonus
          : promoBonus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemBackProduct: null == itemBackProduct
          ? _value.itemBackProduct
          : itemBackProduct // ignore: cast_nullable_to_non_nullable
              as Info,
    ));
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.id = -1,
      this.secondarySaleReturnDetailId,
      this.code = "",
      this.apiLevel = "",
      this.barcode = "",
      this.categoryName = "",
      this.name = "",
      this.typeName = "",
      this.unit = const Unit(),
      this.unitTypeId = -1,
      this.quantity = 0,
      this.salePrice = 0,
      this.primarySalePrice = 0,
      this.secondarySalePrice = 0,
      this.secondarySaleTax = 0,
      this.secondarySaleTaxType = AmountOrPercentStatus.amount,
      this.consignmentSalePrice = 0,
      this.amount = 0,
      this.discountAmount = 0,
      this.discountType = AmountOrPercentStatus.amount,
      this.normalDiscount,
      this.normalDiscountType,
      this.taxAmount = 0,
      this.taxType = AmountOrPercentStatus.amount,
      this.totalAmount = 0,
      this.isSelected = false,
      this.isViewOnly = false,
      this.returnQty = 0,
      this.consignmentContractQty = 0,
      this.consignmentContractAmount = 0,
      this.availableReturnQty = 0,
      this.returnAmount = 0,
      this.productSalePriceStatus = ProductSalePriceStatus.nothing,
      this.warehouse = const Warehouse(),
      this.availableQty = 0,
      this.isTrip = false,
      this.isConsignment = false,
      this.isConsignmentContract = false,
      this.proposalQty,
      this.totalIssuedQty = 0,
      this.issuedBalanceQty = 0,
      this.issueQty = 0,
      this.requestQty = 0,
      final List<UnitType> unitTypes = const [],
      this.isPromotionItem = false,
      this.promotionDetail = const PromotionDetail(),
      this.promotionInfo = const Info(),
      this.promotionSku = const Sku(),
      this.consignmentMethod = ConsignmentMethod.stockRefill,
      this.terminateSaleQty = 0,
      this.prefix = '',
      this.promoDiscount = null,
      this.promoDiscountType = null,
      this.promoCashback = null,
      this.promoBonus = null,
      this.itemBackProduct = const Info()})
      : _unitTypes = unitTypes;

  @override
  @JsonKey()
  final int id;
  @override
  final int? secondarySaleReturnDetailId;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String apiLevel;
  @override
  @JsonKey()
  final String barcode;
  @override
  @JsonKey()
  final String categoryName;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String typeName;
  @override
  @JsonKey()
  final Unit unit;
  @override
  @JsonKey()
  final int unitTypeId;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final double salePrice;
  @override
  @JsonKey()
  final double primarySalePrice;
  @override
  @JsonKey()
  final double secondarySalePrice;
  @override
  @JsonKey()
  final double secondarySaleTax;
  @override
  @JsonKey()
  final AmountOrPercentStatus secondarySaleTaxType;
  @override
  @JsonKey()
  final double consignmentSalePrice;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final double discountAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus discountType;
  @override
  final double? normalDiscount;
  @override
  final AmountOrPercentStatus? normalDiscountType;
  @override
  @JsonKey()
  final double taxAmount;
  @override
  @JsonKey()
  final AmountOrPercentStatus taxType;
  @override
  @JsonKey()
  final double totalAmount;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @JsonKey()
  final bool isViewOnly;
  @override
  @JsonKey()
  final int returnQty;
  @override
  @JsonKey()
  final int consignmentContractQty;
  @override
  @JsonKey()
  final double consignmentContractAmount;
  @override
  @JsonKey()
  final int availableReturnQty;
  @override
  @JsonKey()
  final double returnAmount;
  @override
  @JsonKey()
  final ProductSalePriceStatus productSalePriceStatus;
  @override
  @JsonKey()
  final Warehouse warehouse;
  @override
  @JsonKey()
  final int availableQty;
  @override
  @JsonKey()
  final bool isTrip;
  @override
  @JsonKey()
  final bool isConsignment;
  @override
  @JsonKey()
  final bool isConsignmentContract;
  @override
  final int? proposalQty;
  @override
  @JsonKey()
  final int totalIssuedQty;
  @override
  @JsonKey()
  final int issuedBalanceQty;
  @override
  @JsonKey()
  final int issueQty;
  @override
  @JsonKey()
  final int requestQty;
  final List<UnitType> _unitTypes;
  @override
  @JsonKey()
  List<UnitType> get unitTypes {
    if (_unitTypes is EqualUnmodifiableListView) return _unitTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitTypes);
  }

  @override
  @JsonKey()
  final bool isPromotionItem;
  @override
  @JsonKey()
  final PromotionDetail promotionDetail;
  @override
  @JsonKey()
  final Info promotionInfo;
  @override
  @JsonKey()
  final Sku promotionSku;
  @override
  @JsonKey()
  final ConsignmentMethod consignmentMethod;
  @override
  @JsonKey()
  final int terminateSaleQty;
  @override
  @JsonKey()
  final String? prefix;
  @override
  @JsonKey()
  final dynamic promoDiscount;
  @override
  @JsonKey()
  final dynamic promoDiscountType;
  @override
  @JsonKey()
  final dynamic promoCashback;
  @override
  @JsonKey()
  final dynamic promoBonus;
  @override
  @JsonKey()
  final Info itemBackProduct;

  @override
  String toString() {
    return 'Product(id: $id, secondarySaleReturnDetailId: $secondarySaleReturnDetailId, code: $code, apiLevel: $apiLevel, barcode: $barcode, categoryName: $categoryName, name: $name, typeName: $typeName, unit: $unit, unitTypeId: $unitTypeId, quantity: $quantity, salePrice: $salePrice, primarySalePrice: $primarySalePrice, secondarySalePrice: $secondarySalePrice, secondarySaleTax: $secondarySaleTax, secondarySaleTaxType: $secondarySaleTaxType, consignmentSalePrice: $consignmentSalePrice, amount: $amount, discountAmount: $discountAmount, discountType: $discountType, normalDiscount: $normalDiscount, normalDiscountType: $normalDiscountType, taxAmount: $taxAmount, taxType: $taxType, totalAmount: $totalAmount, isSelected: $isSelected, isViewOnly: $isViewOnly, returnQty: $returnQty, consignmentContractQty: $consignmentContractQty, consignmentContractAmount: $consignmentContractAmount, availableReturnQty: $availableReturnQty, returnAmount: $returnAmount, productSalePriceStatus: $productSalePriceStatus, warehouse: $warehouse, availableQty: $availableQty, isTrip: $isTrip, isConsignment: $isConsignment, isConsignmentContract: $isConsignmentContract, proposalQty: $proposalQty, totalIssuedQty: $totalIssuedQty, issuedBalanceQty: $issuedBalanceQty, issueQty: $issueQty, requestQty: $requestQty, unitTypes: $unitTypes, isPromotionItem: $isPromotionItem, promotionDetail: $promotionDetail, promotionInfo: $promotionInfo, promotionSku: $promotionSku, consignmentMethod: $consignmentMethod, terminateSaleQty: $terminateSaleQty, prefix: $prefix, promoDiscount: $promoDiscount, promoDiscountType: $promoDiscountType, promoCashback: $promoCashback, promoBonus: $promoBonus, itemBackProduct: $itemBackProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.secondarySaleReturnDetailId, secondarySaleReturnDetailId) ||
                other.secondarySaleReturnDetailId ==
                    secondarySaleReturnDetailId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.apiLevel, apiLevel) ||
                other.apiLevel == apiLevel) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitTypeId, unitTypeId) ||
                other.unitTypeId == unitTypeId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.primarySalePrice, primarySalePrice) ||
                other.primarySalePrice == primarySalePrice) &&
            (identical(other.secondarySalePrice, secondarySalePrice) ||
                other.secondarySalePrice == secondarySalePrice) &&
            (identical(other.secondarySaleTax, secondarySaleTax) ||
                other.secondarySaleTax == secondarySaleTax) &&
            (identical(other.secondarySaleTaxType, secondarySaleTaxType) ||
                other.secondarySaleTaxType == secondarySaleTaxType) &&
            (identical(other.consignmentSalePrice, consignmentSalePrice) ||
                other.consignmentSalePrice == consignmentSalePrice) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.normalDiscount, normalDiscount) ||
                other.normalDiscount == normalDiscount) &&
            (identical(other.normalDiscountType, normalDiscountType) ||
                other.normalDiscountType == normalDiscountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.isViewOnly, isViewOnly) ||
                other.isViewOnly == isViewOnly) &&
            (identical(other.returnQty, returnQty) ||
                other.returnQty == returnQty) &&
            (identical(other.consignmentContractQty, consignmentContractQty) ||
                other.consignmentContractQty == consignmentContractQty) &&
            (identical(other.consignmentContractAmount, consignmentContractAmount) ||
                other.consignmentContractAmount == consignmentContractAmount) &&
            (identical(other.availableReturnQty, availableReturnQty) ||
                other.availableReturnQty == availableReturnQty) &&
            (identical(other.returnAmount, returnAmount) ||
                other.returnAmount == returnAmount) &&
            (identical(other.productSalePriceStatus, productSalePriceStatus) ||
                other.productSalePriceStatus == productSalePriceStatus) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.availableQty, availableQty) ||
                other.availableQty == availableQty) &&
            (identical(other.isTrip, isTrip) || other.isTrip == isTrip) &&
            (identical(other.isConsignment, isConsignment) ||
                other.isConsignment == isConsignment) &&
            (identical(other.isConsignmentContract, isConsignmentContract) ||
                other.isConsignmentContract == isConsignmentContract) &&
            (identical(other.proposalQty, proposalQty) ||
                other.proposalQty == proposalQty) &&
            (identical(other.totalIssuedQty, totalIssuedQty) ||
                other.totalIssuedQty == totalIssuedQty) &&
            (identical(other.issuedBalanceQty, issuedBalanceQty) || other.issuedBalanceQty == issuedBalanceQty) &&
            (identical(other.issueQty, issueQty) || other.issueQty == issueQty) &&
            (identical(other.requestQty, requestQty) || other.requestQty == requestQty) &&
            const DeepCollectionEquality().equals(other._unitTypes, _unitTypes) &&
            (identical(other.isPromotionItem, isPromotionItem) || other.isPromotionItem == isPromotionItem) &&
            (identical(other.promotionDetail, promotionDetail) || other.promotionDetail == promotionDetail) &&
            (identical(other.promotionInfo, promotionInfo) || other.promotionInfo == promotionInfo) &&
            (identical(other.promotionSku, promotionSku) || other.promotionSku == promotionSku) &&
            (identical(other.consignmentMethod, consignmentMethod) || other.consignmentMethod == consignmentMethod) &&
            (identical(other.terminateSaleQty, terminateSaleQty) || other.terminateSaleQty == terminateSaleQty) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other.promoDiscount, promoDiscount) &&
            const DeepCollectionEquality().equals(other.promoDiscountType, promoDiscountType) &&
            const DeepCollectionEquality().equals(other.promoCashback, promoCashback) &&
            const DeepCollectionEquality().equals(other.promoBonus, promoBonus) &&
            (identical(other.itemBackProduct, itemBackProduct) || other.itemBackProduct == itemBackProduct));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        secondarySaleReturnDetailId,
        code,
        apiLevel,
        barcode,
        categoryName,
        name,
        typeName,
        unit,
        unitTypeId,
        quantity,
        salePrice,
        primarySalePrice,
        secondarySalePrice,
        secondarySaleTax,
        secondarySaleTaxType,
        consignmentSalePrice,
        amount,
        discountAmount,
        discountType,
        normalDiscount,
        normalDiscountType,
        taxAmount,
        taxType,
        totalAmount,
        isSelected,
        isViewOnly,
        returnQty,
        consignmentContractQty,
        consignmentContractAmount,
        availableReturnQty,
        returnAmount,
        productSalePriceStatus,
        warehouse,
        availableQty,
        isTrip,
        isConsignment,
        isConsignmentContract,
        proposalQty,
        totalIssuedQty,
        issuedBalanceQty,
        issueQty,
        requestQty,
        const DeepCollectionEquality().hash(_unitTypes),
        isPromotionItem,
        promotionDetail,
        promotionInfo,
        promotionSku,
        consignmentMethod,
        terminateSaleQty,
        prefix,
        const DeepCollectionEquality().hash(promoDiscount),
        const DeepCollectionEquality().hash(promoDiscountType),
        const DeepCollectionEquality().hash(promoCashback),
        const DeepCollectionEquality().hash(promoBonus),
        itemBackProduct
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {final int id,
      final int? secondarySaleReturnDetailId,
      final String code,
      final String apiLevel,
      final String barcode,
      final String categoryName,
      final String name,
      final String typeName,
      final Unit unit,
      final int unitTypeId,
      final int quantity,
      final double salePrice,
      final double primarySalePrice,
      final double secondarySalePrice,
      final double secondarySaleTax,
      final AmountOrPercentStatus secondarySaleTaxType,
      final double consignmentSalePrice,
      final double amount,
      final double discountAmount,
      final AmountOrPercentStatus discountType,
      final double? normalDiscount,
      final AmountOrPercentStatus? normalDiscountType,
      final double taxAmount,
      final AmountOrPercentStatus taxType,
      final double totalAmount,
      final bool isSelected,
      final bool isViewOnly,
      final int returnQty,
      final int consignmentContractQty,
      final double consignmentContractAmount,
      final int availableReturnQty,
      final double returnAmount,
      final ProductSalePriceStatus productSalePriceStatus,
      final Warehouse warehouse,
      final int availableQty,
      final bool isTrip,
      final bool isConsignment,
      final bool isConsignmentContract,
      final int? proposalQty,
      final int totalIssuedQty,
      final int issuedBalanceQty,
      final int issueQty,
      final int requestQty,
      final List<UnitType> unitTypes,
      final bool isPromotionItem,
      final PromotionDetail promotionDetail,
      final Info promotionInfo,
      final Sku promotionSku,
      final ConsignmentMethod consignmentMethod,
      final int terminateSaleQty,
      final String? prefix,
      final dynamic promoDiscount,
      final dynamic promoDiscountType,
      final dynamic promoCashback,
      final dynamic promoBonus,
      final Info itemBackProduct}) = _$ProductImpl;

  @override
  int get id;
  @override
  int? get secondarySaleReturnDetailId;
  @override
  String get code;
  @override
  String get apiLevel;
  @override
  String get barcode;
  @override
  String get categoryName;
  @override
  String get name;
  @override
  String get typeName;
  @override
  Unit get unit;
  @override
  int get unitTypeId;
  @override
  int get quantity;
  @override
  double get salePrice;
  @override
  double get primarySalePrice;
  @override
  double get secondarySalePrice;
  @override
  double get secondarySaleTax;
  @override
  AmountOrPercentStatus get secondarySaleTaxType;
  @override
  double get consignmentSalePrice;
  @override
  double get amount;
  @override
  double get discountAmount;
  @override
  AmountOrPercentStatus get discountType;
  @override
  double? get normalDiscount;
  @override
  AmountOrPercentStatus? get normalDiscountType;
  @override
  double get taxAmount;
  @override
  AmountOrPercentStatus get taxType;
  @override
  double get totalAmount;
  @override
  bool get isSelected;
  @override
  bool get isViewOnly;
  @override
  int get returnQty;
  @override
  int get consignmentContractQty;
  @override
  double get consignmentContractAmount;
  @override
  int get availableReturnQty;
  @override
  double get returnAmount;
  @override
  ProductSalePriceStatus get productSalePriceStatus;
  @override
  Warehouse get warehouse;
  @override
  int get availableQty;
  @override
  bool get isTrip;
  @override
  bool get isConsignment;
  @override
  bool get isConsignmentContract;
  @override
  int? get proposalQty;
  @override
  int get totalIssuedQty;
  @override
  int get issuedBalanceQty;
  @override
  int get issueQty;
  @override
  int get requestQty;
  @override
  List<UnitType> get unitTypes;
  @override
  bool get isPromotionItem;
  @override
  PromotionDetail get promotionDetail;
  @override
  Info get promotionInfo;
  @override
  Sku get promotionSku;
  @override
  ConsignmentMethod get consignmentMethod;
  @override
  int get terminateSaleQty;
  @override
  String? get prefix;
  @override
  dynamic get promoDiscount;
  @override
  dynamic get promoDiscountType;
  @override
  dynamic get promoCashback;
  @override
  dynamic get promoBonus;
  @override
  Info get itemBackProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
