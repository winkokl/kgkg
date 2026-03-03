// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
  @JsonKey(name: "product_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
  int? get secondarySaleReturnDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_code", includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_name", includeToJson: false)
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "api_level", includeToJson: false)
  String get apiLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "product_type_name", includeToJson: false)
  String get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode", includeToJson: false)
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name", includeToJson: false)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_id")
  int get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_type_id", includeToJson: false)
  int get unitTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_name", includeToJson: false)
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
  int? get consignmentContractQty => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_contract_amount", includeToJson: false)
  double? get consignmentContractAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_price")
  double get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_sales_price", includeToJson: false)
  double get primarySalePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_price", includeToJson: false)
  double get secondarySalePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_sales_price", includeToJson: false)
  double get consignmentSalePrice => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_amount")
  double get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "normal_discount", includeIfNull: false)
  double? get normalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "normal_discount_type", includeIfNull: false)
  String? get normalDiscountType => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_amount")
  double get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tax")
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_type")
  String get taxType => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_tax", includeToJson: false)
  double get saleTax => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
  String get saleTaxType => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "return_qty", includeIfNull: false)
  int? get returnQty => throw _privateConstructorUsedError;
  @JsonKey(name: "available_return_qty", includeToJson: false)
  int get availableReturnQty => throw _privateConstructorUsedError;
  @JsonKey(name: "available_qty")
  int? get availableQty => throw _privateConstructorUsedError;
  @JsonKey(name: "return_amount", includeIfNull: false)
  double? get returnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_id")
  int? get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_name", includeToJson: false)
  String? get warehouseName => throw _privateConstructorUsedError;
  @JsonKey(name: "proposal_qty", includeToJson: false)
  int? get proposalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "total_issued_qty", includeToJson: false)
  int get totalIssuedQty => throw _privateConstructorUsedError;
  @JsonKey(name: "issued_balance_qty", includeToJson: false)
  int get issuedBalanceQty => throw _privateConstructorUsedError;
  @JsonKey(name: "issue_qty", includeToJson: false)
  int get issueQty => throw _privateConstructorUsedError;
  @JsonKey(name: "request_qty", includeToJson: false)
  int get requestQty => throw _privateConstructorUsedError;
  @JsonKey(name: "terminate_sale_qty", includeToJson: false)
  int get terminateSaleQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_type_data", includeToJson: false)
  List<UnitTypeDTO> get unitTypeDTOs => throw _privateConstructorUsedError;
  @JsonKey(
      name: "is_promotion_item", toJson: _booltoJson, fromJson: _boolfromJson)
  dynamic get isPromotionItem => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_promotion_detail_id")
  int? get salePromotionDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_promotion_item_list", includeToJson: false)
  PromotionDetailDTO? get promotionDetailDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "item_back_product")
  InfoDTO? get itemBackProduct => throw _privateConstructorUsedError;
  @JsonKey(name: "product_code_prefix", includeToJson: false)
  String? get productCodePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "available_quantity", includeToJson: false)
  int? get availableQtyFromWarehouse => throw _privateConstructorUsedError;
  @JsonKey(name: "_promo_discount", includeIfNull: false)
  dynamic get promoDiscount =>
      throw _privateConstructorUsedError; // Renamed for Dart style: _promo_discount -> promoDiscount
  @JsonKey(name: "_promo_discount_type", includeIfNull: false)
  dynamic get promoDiscountType =>
      throw _privateConstructorUsedError; // Renamed: _promo_discount_type -> promoDiscountType
  @JsonKey(name: "_promo_bonus", includeIfNull: false)
  dynamic get promoBonus =>
      throw _privateConstructorUsedError; // Renamed: _promo_bonus -> promoBonus
  @JsonKey(name: "_promo_cashback", includeIfNull: false)
  dynamic get promoCashback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res, ProductDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int id,
      @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
      int? secondarySaleReturnDetailId,
      @JsonKey(name: "product_code", includeToJson: false) String code,
      @JsonKey(name: "product_category_name", includeToJson: false)
      String categoryName,
      @JsonKey(name: "api_level", includeToJson: false) String apiLevel,
      @JsonKey(name: "product_type_name", includeToJson: false) String typeName,
      @JsonKey(name: "barcode", includeToJson: false) String barcode,
      @JsonKey(name: "product_name", includeToJson: false) String name,
      @JsonKey(name: "unit_id") int unitId,
      @JsonKey(name: "unit_type_id", includeToJson: false) int unitTypeId,
      @JsonKey(name: "unit_name", includeToJson: false) String unitName,
      @JsonKey(name: "qty") int quantity,
      @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
      int? consignmentContractQty,
      @JsonKey(name: "consignment_contract_amount", includeToJson: false)
      double? consignmentContractAmount,
      @JsonKey(name: "sales_price") double salePrice,
      @JsonKey(name: "primary_sales_price", includeToJson: false)
      double primarySalePrice,
      @JsonKey(name: "secondary_sales_price", includeToJson: false)
      double secondarySalePrice,
      @JsonKey(name: "consignment_sales_price", includeToJson: false)
      double consignmentSalePrice,
      double amount,
      @JsonKey(name: "discount_amount") double discountAmount,
      @JsonKey(name: "discount") double discount,
      @JsonKey(name: "discount_type") String discountType,
      @JsonKey(name: "normal_discount", includeIfNull: false)
      double? normalDiscount,
      @JsonKey(name: "normal_discount_type", includeIfNull: false)
      String? normalDiscountType,
      @JsonKey(name: "tax_amount") double taxAmount,
      @JsonKey(name: "tax") double tax,
      @JsonKey(name: "tax_type") String taxType,
      @JsonKey(name: "secondary_sales_tax", includeToJson: false)
      double saleTax,
      @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
      String saleTaxType,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "return_qty", includeIfNull: false) int? returnQty,
      @JsonKey(name: "available_return_qty", includeToJson: false)
      int availableReturnQty,
      @JsonKey(name: "available_qty") int? availableQty,
      @JsonKey(name: "return_amount", includeIfNull: false)
      double? returnAmount,
      @JsonKey(name: "warehouse_id") int? warehouseId,
      @JsonKey(name: "warehouse_name", includeToJson: false)
      String? warehouseName,
      @JsonKey(name: "proposal_qty", includeToJson: false) int? proposalQty,
      @JsonKey(name: "total_issued_qty", includeToJson: false)
      int totalIssuedQty,
      @JsonKey(name: "issued_balance_qty", includeToJson: false)
      int issuedBalanceQty,
      @JsonKey(name: "issue_qty", includeToJson: false) int issueQty,
      @JsonKey(name: "request_qty", includeToJson: false) int requestQty,
      @JsonKey(name: "terminate_sale_qty", includeToJson: false)
      int terminateSaleQty,
      @JsonKey(name: "unit_type_data", includeToJson: false)
      List<UnitTypeDTO> unitTypeDTOs,
      @JsonKey(
          name: "is_promotion_item",
          toJson: _booltoJson,
          fromJson: _boolfromJson)
      dynamic isPromotionItem,
      @JsonKey(name: "sale_promotion_detail_id") int? salePromotionDetailId,
      @JsonKey(name: "is_promotion_item_list", includeToJson: false)
      PromotionDetailDTO? promotionDetailDTO,
      @JsonKey(name: "item_back_product") InfoDTO? itemBackProduct,
      @JsonKey(name: "product_code_prefix", includeToJson: false)
      String? productCodePrefix,
      @JsonKey(name: "available_quantity", includeToJson: false)
      int? availableQtyFromWarehouse,
      @JsonKey(name: "_promo_discount", includeIfNull: false)
      dynamic promoDiscount,
      @JsonKey(name: "_promo_discount_type", includeIfNull: false)
      dynamic promoDiscountType,
      @JsonKey(name: "_promo_bonus", includeIfNull: false) dynamic promoBonus,
      @JsonKey(name: "_promo_cashback", includeIfNull: false)
      dynamic promoCashback});

  $PromotionDetailDTOCopyWith<$Res>? get promotionDetailDTO;
  $InfoDTOCopyWith<$Res>? get itemBackProduct;
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res, $Val extends ProductDTO>
    implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

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
    Object? categoryName = null,
    Object? apiLevel = null,
    Object? typeName = null,
    Object? barcode = null,
    Object? name = null,
    Object? unitId = null,
    Object? unitTypeId = null,
    Object? unitName = null,
    Object? quantity = null,
    Object? consignmentContractQty = freezed,
    Object? consignmentContractAmount = freezed,
    Object? salePrice = null,
    Object? primarySalePrice = null,
    Object? secondarySalePrice = null,
    Object? consignmentSalePrice = null,
    Object? amount = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? normalDiscount = freezed,
    Object? normalDiscountType = freezed,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? saleTax = null,
    Object? saleTaxType = null,
    Object? totalAmount = null,
    Object? returnQty = freezed,
    Object? availableReturnQty = null,
    Object? availableQty = freezed,
    Object? returnAmount = freezed,
    Object? warehouseId = freezed,
    Object? warehouseName = freezed,
    Object? proposalQty = freezed,
    Object? totalIssuedQty = null,
    Object? issuedBalanceQty = null,
    Object? issueQty = null,
    Object? requestQty = null,
    Object? terminateSaleQty = null,
    Object? unitTypeDTOs = null,
    Object? isPromotionItem = freezed,
    Object? salePromotionDetailId = freezed,
    Object? promotionDetailDTO = freezed,
    Object? itemBackProduct = freezed,
    Object? productCodePrefix = freezed,
    Object? availableQtyFromWarehouse = freezed,
    Object? promoDiscount = freezed,
    Object? promoDiscountType = freezed,
    Object? promoBonus = freezed,
    Object? promoCashback = freezed,
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
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractQty: freezed == consignmentContractQty
          ? _value.consignmentContractQty
          : consignmentContractQty // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentContractAmount: freezed == consignmentContractAmount
          ? _value.consignmentContractAmount
          : consignmentContractAmount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      normalDiscount: freezed == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      normalDiscountType: freezed == normalDiscountType
          ? _value.normalDiscountType
          : normalDiscountType // ignore: cast_nullable_to_non_nullable
              as String?,
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
      saleTax: null == saleTax
          ? _value.saleTax
          : saleTax // ignore: cast_nullable_to_non_nullable
              as double,
      saleTaxType: null == saleTaxType
          ? _value.saleTaxType
          : saleTaxType // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnQty: freezed == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      availableQty: freezed == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int?,
      returnAmount: freezed == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseName: freezed == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      terminateSaleQty: null == terminateSaleQty
          ? _value.terminateSaleQty
          : terminateSaleQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypeDTOs: null == unitTypeDTOs
          ? _value.unitTypeDTOs
          : unitTypeDTOs // ignore: cast_nullable_to_non_nullable
              as List<UnitTypeDTO>,
      isPromotionItem: freezed == isPromotionItem
          ? _value.isPromotionItem
          : isPromotionItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePromotionDetailId: freezed == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionDetailDTO: freezed == promotionDetailDTO
          ? _value.promotionDetailDTO
          : promotionDetailDTO // ignore: cast_nullable_to_non_nullable
              as PromotionDetailDTO?,
      itemBackProduct: freezed == itemBackProduct
          ? _value.itemBackProduct
          : itemBackProduct // ignore: cast_nullable_to_non_nullable
              as InfoDTO?,
      productCodePrefix: freezed == productCodePrefix
          ? _value.productCodePrefix
          : productCodePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQtyFromWarehouse: freezed == availableQtyFromWarehouse
          ? _value.availableQtyFromWarehouse
          : availableQtyFromWarehouse // ignore: cast_nullable_to_non_nullable
              as int?,
      promoDiscount: freezed == promoDiscount
          ? _value.promoDiscount
          : promoDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoDiscountType: freezed == promoDiscountType
          ? _value.promoDiscountType
          : promoDiscountType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoBonus: freezed == promoBonus
          ? _value.promoBonus
          : promoBonus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCashback: freezed == promoCashback
          ? _value.promoCashback
          : promoCashback // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionDetailDTOCopyWith<$Res>? get promotionDetailDTO {
    if (_value.promotionDetailDTO == null) {
      return null;
    }

    return $PromotionDetailDTOCopyWith<$Res>(_value.promotionDetailDTO!,
        (value) {
      return _then(_value.copyWith(promotionDetailDTO: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoDTOCopyWith<$Res>? get itemBackProduct {
    if (_value.itemBackProduct == null) {
      return null;
    }

    return $InfoDTOCopyWith<$Res>(_value.itemBackProduct!, (value) {
      return _then(_value.copyWith(itemBackProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDTOImplCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$ProductDTOImplCopyWith(
          _$ProductDTOImpl value, $Res Function(_$ProductDTOImpl) then) =
      __$$ProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int id,
      @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
      int? secondarySaleReturnDetailId,
      @JsonKey(name: "product_code", includeToJson: false) String code,
      @JsonKey(name: "product_category_name", includeToJson: false)
      String categoryName,
      @JsonKey(name: "api_level", includeToJson: false) String apiLevel,
      @JsonKey(name: "product_type_name", includeToJson: false) String typeName,
      @JsonKey(name: "barcode", includeToJson: false) String barcode,
      @JsonKey(name: "product_name", includeToJson: false) String name,
      @JsonKey(name: "unit_id") int unitId,
      @JsonKey(name: "unit_type_id", includeToJson: false) int unitTypeId,
      @JsonKey(name: "unit_name", includeToJson: false) String unitName,
      @JsonKey(name: "qty") int quantity,
      @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
      int? consignmentContractQty,
      @JsonKey(name: "consignment_contract_amount", includeToJson: false)
      double? consignmentContractAmount,
      @JsonKey(name: "sales_price") double salePrice,
      @JsonKey(name: "primary_sales_price", includeToJson: false)
      double primarySalePrice,
      @JsonKey(name: "secondary_sales_price", includeToJson: false)
      double secondarySalePrice,
      @JsonKey(name: "consignment_sales_price", includeToJson: false)
      double consignmentSalePrice,
      double amount,
      @JsonKey(name: "discount_amount") double discountAmount,
      @JsonKey(name: "discount") double discount,
      @JsonKey(name: "discount_type") String discountType,
      @JsonKey(name: "normal_discount", includeIfNull: false)
      double? normalDiscount,
      @JsonKey(name: "normal_discount_type", includeIfNull: false)
      String? normalDiscountType,
      @JsonKey(name: "tax_amount") double taxAmount,
      @JsonKey(name: "tax") double tax,
      @JsonKey(name: "tax_type") String taxType,
      @JsonKey(name: "secondary_sales_tax", includeToJson: false)
      double saleTax,
      @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
      String saleTaxType,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "return_qty", includeIfNull: false) int? returnQty,
      @JsonKey(name: "available_return_qty", includeToJson: false)
      int availableReturnQty,
      @JsonKey(name: "available_qty") int? availableQty,
      @JsonKey(name: "return_amount", includeIfNull: false)
      double? returnAmount,
      @JsonKey(name: "warehouse_id") int? warehouseId,
      @JsonKey(name: "warehouse_name", includeToJson: false)
      String? warehouseName,
      @JsonKey(name: "proposal_qty", includeToJson: false) int? proposalQty,
      @JsonKey(name: "total_issued_qty", includeToJson: false)
      int totalIssuedQty,
      @JsonKey(name: "issued_balance_qty", includeToJson: false)
      int issuedBalanceQty,
      @JsonKey(name: "issue_qty", includeToJson: false) int issueQty,
      @JsonKey(name: "request_qty", includeToJson: false) int requestQty,
      @JsonKey(name: "terminate_sale_qty", includeToJson: false)
      int terminateSaleQty,
      @JsonKey(name: "unit_type_data", includeToJson: false)
      List<UnitTypeDTO> unitTypeDTOs,
      @JsonKey(
          name: "is_promotion_item",
          toJson: _booltoJson,
          fromJson: _boolfromJson)
      dynamic isPromotionItem,
      @JsonKey(name: "sale_promotion_detail_id") int? salePromotionDetailId,
      @JsonKey(name: "is_promotion_item_list", includeToJson: false)
      PromotionDetailDTO? promotionDetailDTO,
      @JsonKey(name: "item_back_product") InfoDTO? itemBackProduct,
      @JsonKey(name: "product_code_prefix", includeToJson: false)
      String? productCodePrefix,
      @JsonKey(name: "available_quantity", includeToJson: false)
      int? availableQtyFromWarehouse,
      @JsonKey(name: "_promo_discount", includeIfNull: false)
      dynamic promoDiscount,
      @JsonKey(name: "_promo_discount_type", includeIfNull: false)
      dynamic promoDiscountType,
      @JsonKey(name: "_promo_bonus", includeIfNull: false) dynamic promoBonus,
      @JsonKey(name: "_promo_cashback", includeIfNull: false)
      dynamic promoCashback});

  @override
  $PromotionDetailDTOCopyWith<$Res>? get promotionDetailDTO;
  @override
  $InfoDTOCopyWith<$Res>? get itemBackProduct;
}

/// @nodoc
class __$$ProductDTOImplCopyWithImpl<$Res>
    extends _$ProductDTOCopyWithImpl<$Res, _$ProductDTOImpl>
    implements _$$ProductDTOImplCopyWith<$Res> {
  __$$ProductDTOImplCopyWithImpl(
      _$ProductDTOImpl _value, $Res Function(_$ProductDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? secondarySaleReturnDetailId = freezed,
    Object? code = null,
    Object? categoryName = null,
    Object? apiLevel = null,
    Object? typeName = null,
    Object? barcode = null,
    Object? name = null,
    Object? unitId = null,
    Object? unitTypeId = null,
    Object? unitName = null,
    Object? quantity = null,
    Object? consignmentContractQty = freezed,
    Object? consignmentContractAmount = freezed,
    Object? salePrice = null,
    Object? primarySalePrice = null,
    Object? secondarySalePrice = null,
    Object? consignmentSalePrice = null,
    Object? amount = null,
    Object? discountAmount = null,
    Object? discount = null,
    Object? discountType = null,
    Object? normalDiscount = freezed,
    Object? normalDiscountType = freezed,
    Object? taxAmount = null,
    Object? tax = null,
    Object? taxType = null,
    Object? saleTax = null,
    Object? saleTaxType = null,
    Object? totalAmount = null,
    Object? returnQty = freezed,
    Object? availableReturnQty = null,
    Object? availableQty = freezed,
    Object? returnAmount = freezed,
    Object? warehouseId = freezed,
    Object? warehouseName = freezed,
    Object? proposalQty = freezed,
    Object? totalIssuedQty = null,
    Object? issuedBalanceQty = null,
    Object? issueQty = null,
    Object? requestQty = null,
    Object? terminateSaleQty = null,
    Object? unitTypeDTOs = null,
    Object? isPromotionItem = freezed,
    Object? salePromotionDetailId = freezed,
    Object? promotionDetailDTO = freezed,
    Object? itemBackProduct = freezed,
    Object? productCodePrefix = freezed,
    Object? availableQtyFromWarehouse = freezed,
    Object? promoDiscount = freezed,
    Object? promoDiscountType = freezed,
    Object? promoBonus = freezed,
    Object? promoCashback = freezed,
  }) {
    return _then(_$ProductDTOImpl(
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
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: null == apiLevel
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypeId: null == unitTypeId
          ? _value.unitTypeId
          : unitTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractQty: freezed == consignmentContractQty
          ? _value.consignmentContractQty
          : consignmentContractQty // ignore: cast_nullable_to_non_nullable
              as int?,
      consignmentContractAmount: freezed == consignmentContractAmount
          ? _value.consignmentContractAmount
          : consignmentContractAmount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      normalDiscount: freezed == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      normalDiscountType: freezed == normalDiscountType
          ? _value.normalDiscountType
          : normalDiscountType // ignore: cast_nullable_to_non_nullable
              as String?,
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
      saleTax: null == saleTax
          ? _value.saleTax
          : saleTax // ignore: cast_nullable_to_non_nullable
              as double,
      saleTaxType: null == saleTaxType
          ? _value.saleTaxType
          : saleTaxType // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnQty: freezed == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      availableQty: freezed == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int?,
      returnAmount: freezed == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseName: freezed == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      terminateSaleQty: null == terminateSaleQty
          ? _value.terminateSaleQty
          : terminateSaleQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitTypeDTOs: null == unitTypeDTOs
          ? _value._unitTypeDTOs
          : unitTypeDTOs // ignore: cast_nullable_to_non_nullable
              as List<UnitTypeDTO>,
      isPromotionItem: freezed == isPromotionItem
          ? _value.isPromotionItem
          : isPromotionItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePromotionDetailId: freezed == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionDetailDTO: freezed == promotionDetailDTO
          ? _value.promotionDetailDTO
          : promotionDetailDTO // ignore: cast_nullable_to_non_nullable
              as PromotionDetailDTO?,
      itemBackProduct: freezed == itemBackProduct
          ? _value.itemBackProduct
          : itemBackProduct // ignore: cast_nullable_to_non_nullable
              as InfoDTO?,
      productCodePrefix: freezed == productCodePrefix
          ? _value.productCodePrefix
          : productCodePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQtyFromWarehouse: freezed == availableQtyFromWarehouse
          ? _value.availableQtyFromWarehouse
          : availableQtyFromWarehouse // ignore: cast_nullable_to_non_nullable
              as int?,
      promoDiscount: freezed == promoDiscount
          ? _value.promoDiscount
          : promoDiscount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoDiscountType: freezed == promoDiscountType
          ? _value.promoDiscountType
          : promoDiscountType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoBonus: freezed == promoBonus
          ? _value.promoBonus
          : promoBonus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCashback: freezed == promoCashback
          ? _value.promoCashback
          : promoCashback // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDTOImpl extends _ProductDTO {
  const _$ProductDTOImpl(
      {@JsonKey(name: "product_id") this.id = -1,
      @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
      this.secondarySaleReturnDetailId,
      @JsonKey(name: "product_code", includeToJson: false) this.code = "",
      @JsonKey(name: "product_category_name", includeToJson: false)
      this.categoryName = "",
      @JsonKey(name: "api_level", includeToJson: false) this.apiLevel = "",
      @JsonKey(name: "product_type_name", includeToJson: false)
      this.typeName = "",
      @JsonKey(name: "barcode", includeToJson: false) this.barcode = "",
      @JsonKey(name: "product_name", includeToJson: false) this.name = "",
      @JsonKey(name: "unit_id") this.unitId = -1,
      @JsonKey(name: "unit_type_id", includeToJson: false) this.unitTypeId = -1,
      @JsonKey(name: "unit_name", includeToJson: false) this.unitName = "",
      @JsonKey(name: "qty") this.quantity = 0,
      @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
      this.consignmentContractQty = 0,
      @JsonKey(name: "consignment_contract_amount", includeToJson: false)
      this.consignmentContractAmount = 0,
      @JsonKey(name: "sales_price") this.salePrice = 0,
      @JsonKey(name: "primary_sales_price", includeToJson: false)
      this.primarySalePrice = 0,
      @JsonKey(name: "secondary_sales_price", includeToJson: false)
      this.secondarySalePrice = 0,
      @JsonKey(name: "consignment_sales_price", includeToJson: false)
      this.consignmentSalePrice = 0,
      this.amount = 0,
      @JsonKey(name: "discount_amount") this.discountAmount = 0,
      @JsonKey(name: "discount") this.discount = 0,
      @JsonKey(name: "discount_type") this.discountType = "",
      @JsonKey(name: "normal_discount", includeIfNull: false)
      this.normalDiscount,
      @JsonKey(name: "normal_discount_type", includeIfNull: false)
      this.normalDiscountType,
      @JsonKey(name: "tax_amount") this.taxAmount = 0,
      @JsonKey(name: "tax") this.tax = 0,
      @JsonKey(name: "tax_type") this.taxType = "",
      @JsonKey(name: "secondary_sales_tax", includeToJson: false)
      this.saleTax = 0,
      @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
      this.saleTaxType = "",
      @JsonKey(name: "total_amount") this.totalAmount = 0,
      @JsonKey(name: "return_qty", includeIfNull: false) this.returnQty,
      @JsonKey(name: "available_return_qty", includeToJson: false)
      this.availableReturnQty = 0,
      @JsonKey(name: "available_qty") this.availableQty = 0,
      @JsonKey(name: "return_amount", includeIfNull: false) this.returnAmount,
      @JsonKey(name: "warehouse_id") this.warehouseId,
      @JsonKey(name: "warehouse_name", includeToJson: false) this.warehouseName,
      @JsonKey(name: "proposal_qty", includeToJson: false) this.proposalQty,
      @JsonKey(name: "total_issued_qty", includeToJson: false)
      this.totalIssuedQty = 0,
      @JsonKey(name: "issued_balance_qty", includeToJson: false)
      this.issuedBalanceQty = 0,
      @JsonKey(name: "issue_qty", includeToJson: false) this.issueQty = 0,
      @JsonKey(name: "request_qty", includeToJson: false) this.requestQty = 0,
      @JsonKey(name: "terminate_sale_qty", includeToJson: false)
      this.terminateSaleQty = 0,
      @JsonKey(name: "unit_type_data", includeToJson: false)
      final List<UnitTypeDTO> unitTypeDTOs = const [],
      @JsonKey(name: "is_promotion_item", toJson: _booltoJson, fromJson: _boolfromJson)
      this.isPromotionItem = false,
      @JsonKey(name: "sale_promotion_detail_id") this.salePromotionDetailId,
      @JsonKey(name: "is_promotion_item_list", includeToJson: false)
      this.promotionDetailDTO,
      @JsonKey(name: "item_back_product") this.itemBackProduct = null,
      @JsonKey(name: "product_code_prefix", includeToJson: false)
      this.productCodePrefix = "",
      @JsonKey(name: "available_quantity", includeToJson: false) this.availableQtyFromWarehouse = 0,
      @JsonKey(name: "_promo_discount", includeIfNull: false) this.promoDiscount = null,
      @JsonKey(name: "_promo_discount_type", includeIfNull: false) this.promoDiscountType = null,
      @JsonKey(name: "_promo_bonus", includeIfNull: false) this.promoBonus = null,
      @JsonKey(name: "_promo_cashback", includeIfNull: false) this.promoCashback = null})
      : _unitTypeDTOs = unitTypeDTOs,
        super._();

  factory _$ProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDTOImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int id;
  @override
  @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
  final int? secondarySaleReturnDetailId;
  @override
  @JsonKey(name: "product_code", includeToJson: false)
  final String code;
  @override
  @JsonKey(name: "product_category_name", includeToJson: false)
  final String categoryName;
  @override
  @JsonKey(name: "api_level", includeToJson: false)
  final String apiLevel;
  @override
  @JsonKey(name: "product_type_name", includeToJson: false)
  final String typeName;
  @override
  @JsonKey(name: "barcode", includeToJson: false)
  final String barcode;
  @override
  @JsonKey(name: "product_name", includeToJson: false)
  final String name;
  @override
  @JsonKey(name: "unit_id")
  final int unitId;
  @override
  @JsonKey(name: "unit_type_id", includeToJson: false)
  final int unitTypeId;
  @override
  @JsonKey(name: "unit_name", includeToJson: false)
  final String unitName;
  @override
  @JsonKey(name: "qty")
  final int quantity;
  @override
  @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
  final int? consignmentContractQty;
  @override
  @JsonKey(name: "consignment_contract_amount", includeToJson: false)
  final double? consignmentContractAmount;
  @override
  @JsonKey(name: "sales_price")
  final double salePrice;
  @override
  @JsonKey(name: "primary_sales_price", includeToJson: false)
  final double primarySalePrice;
  @override
  @JsonKey(name: "secondary_sales_price", includeToJson: false)
  final double secondarySalePrice;
  @override
  @JsonKey(name: "consignment_sales_price", includeToJson: false)
  final double consignmentSalePrice;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey(name: "discount_amount")
  final double discountAmount;
  @override
  @JsonKey(name: "discount")
  final double discount;
  @override
  @JsonKey(name: "discount_type")
  final String discountType;
  @override
  @JsonKey(name: "normal_discount", includeIfNull: false)
  final double? normalDiscount;
  @override
  @JsonKey(name: "normal_discount_type", includeIfNull: false)
  final String? normalDiscountType;
  @override
  @JsonKey(name: "tax_amount")
  final double taxAmount;
  @override
  @JsonKey(name: "tax")
  final double tax;
  @override
  @JsonKey(name: "tax_type")
  final String taxType;
  @override
  @JsonKey(name: "secondary_sales_tax", includeToJson: false)
  final double saleTax;
  @override
  @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
  final String saleTaxType;
  @override
  @JsonKey(name: "total_amount")
  final double totalAmount;
  @override
  @JsonKey(name: "return_qty", includeIfNull: false)
  final int? returnQty;
  @override
  @JsonKey(name: "available_return_qty", includeToJson: false)
  final int availableReturnQty;
  @override
  @JsonKey(name: "available_qty")
  final int? availableQty;
  @override
  @JsonKey(name: "return_amount", includeIfNull: false)
  final double? returnAmount;
  @override
  @JsonKey(name: "warehouse_id")
  final int? warehouseId;
  @override
  @JsonKey(name: "warehouse_name", includeToJson: false)
  final String? warehouseName;
  @override
  @JsonKey(name: "proposal_qty", includeToJson: false)
  final int? proposalQty;
  @override
  @JsonKey(name: "total_issued_qty", includeToJson: false)
  final int totalIssuedQty;
  @override
  @JsonKey(name: "issued_balance_qty", includeToJson: false)
  final int issuedBalanceQty;
  @override
  @JsonKey(name: "issue_qty", includeToJson: false)
  final int issueQty;
  @override
  @JsonKey(name: "request_qty", includeToJson: false)
  final int requestQty;
  @override
  @JsonKey(name: "terminate_sale_qty", includeToJson: false)
  final int terminateSaleQty;
  final List<UnitTypeDTO> _unitTypeDTOs;
  @override
  @JsonKey(name: "unit_type_data", includeToJson: false)
  List<UnitTypeDTO> get unitTypeDTOs {
    if (_unitTypeDTOs is EqualUnmodifiableListView) return _unitTypeDTOs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitTypeDTOs);
  }

  @override
  @JsonKey(
      name: "is_promotion_item", toJson: _booltoJson, fromJson: _boolfromJson)
  final dynamic isPromotionItem;
  @override
  @JsonKey(name: "sale_promotion_detail_id")
  final int? salePromotionDetailId;
  @override
  @JsonKey(name: "is_promotion_item_list", includeToJson: false)
  final PromotionDetailDTO? promotionDetailDTO;
  @override
  @JsonKey(name: "item_back_product")
  final InfoDTO? itemBackProduct;
  @override
  @JsonKey(name: "product_code_prefix", includeToJson: false)
  final String? productCodePrefix;
  @override
  @JsonKey(name: "available_quantity", includeToJson: false)
  final int? availableQtyFromWarehouse;
  @override
  @JsonKey(name: "_promo_discount", includeIfNull: false)
  final dynamic promoDiscount;
// Renamed for Dart style: _promo_discount -> promoDiscount
  @override
  @JsonKey(name: "_promo_discount_type", includeIfNull: false)
  final dynamic promoDiscountType;
// Renamed: _promo_discount_type -> promoDiscountType
  @override
  @JsonKey(name: "_promo_bonus", includeIfNull: false)
  final dynamic promoBonus;
// Renamed: _promo_bonus -> promoBonus
  @override
  @JsonKey(name: "_promo_cashback", includeIfNull: false)
  final dynamic promoCashback;

  @override
  String toString() {
    return 'ProductDTO(id: $id, secondarySaleReturnDetailId: $secondarySaleReturnDetailId, code: $code, categoryName: $categoryName, apiLevel: $apiLevel, typeName: $typeName, barcode: $barcode, name: $name, unitId: $unitId, unitTypeId: $unitTypeId, unitName: $unitName, quantity: $quantity, consignmentContractQty: $consignmentContractQty, consignmentContractAmount: $consignmentContractAmount, salePrice: $salePrice, primarySalePrice: $primarySalePrice, secondarySalePrice: $secondarySalePrice, consignmentSalePrice: $consignmentSalePrice, amount: $amount, discountAmount: $discountAmount, discount: $discount, discountType: $discountType, normalDiscount: $normalDiscount, normalDiscountType: $normalDiscountType, taxAmount: $taxAmount, tax: $tax, taxType: $taxType, saleTax: $saleTax, saleTaxType: $saleTaxType, totalAmount: $totalAmount, returnQty: $returnQty, availableReturnQty: $availableReturnQty, availableQty: $availableQty, returnAmount: $returnAmount, warehouseId: $warehouseId, warehouseName: $warehouseName, proposalQty: $proposalQty, totalIssuedQty: $totalIssuedQty, issuedBalanceQty: $issuedBalanceQty, issueQty: $issueQty, requestQty: $requestQty, terminateSaleQty: $terminateSaleQty, unitTypeDTOs: $unitTypeDTOs, isPromotionItem: $isPromotionItem, salePromotionDetailId: $salePromotionDetailId, promotionDetailDTO: $promotionDetailDTO, itemBackProduct: $itemBackProduct, productCodePrefix: $productCodePrefix, availableQtyFromWarehouse: $availableQtyFromWarehouse, promoDiscount: $promoDiscount, promoDiscountType: $promoDiscountType, promoBonus: $promoBonus, promoCashback: $promoCashback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.secondarySaleReturnDetailId, secondarySaleReturnDetailId) ||
                other.secondarySaleReturnDetailId ==
                    secondarySaleReturnDetailId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.apiLevel, apiLevel) ||
                other.apiLevel == apiLevel) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.unitTypeId, unitTypeId) ||
                other.unitTypeId == unitTypeId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.consignmentContractQty, consignmentContractQty) ||
                other.consignmentContractQty == consignmentContractQty) &&
            (identical(other.consignmentContractAmount, consignmentContractAmount) ||
                other.consignmentContractAmount == consignmentContractAmount) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.primarySalePrice, primarySalePrice) ||
                other.primarySalePrice == primarySalePrice) &&
            (identical(other.secondarySalePrice, secondarySalePrice) ||
                other.secondarySalePrice == secondarySalePrice) &&
            (identical(other.consignmentSalePrice, consignmentSalePrice) ||
                other.consignmentSalePrice == consignmentSalePrice) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.normalDiscount, normalDiscount) ||
                other.normalDiscount == normalDiscount) &&
            (identical(other.normalDiscountType, normalDiscountType) ||
                other.normalDiscountType == normalDiscountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.saleTax, saleTax) || other.saleTax == saleTax) &&
            (identical(other.saleTaxType, saleTaxType) ||
                other.saleTaxType == saleTaxType) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.returnQty, returnQty) ||
                other.returnQty == returnQty) &&
            (identical(other.availableReturnQty, availableReturnQty) ||
                other.availableReturnQty == availableReturnQty) &&
            (identical(other.availableQty, availableQty) ||
                other.availableQty == availableQty) &&
            (identical(other.returnAmount, returnAmount) ||
                other.returnAmount == returnAmount) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.proposalQty, proposalQty) ||
                other.proposalQty == proposalQty) &&
            (identical(other.totalIssuedQty, totalIssuedQty) || other.totalIssuedQty == totalIssuedQty) &&
            (identical(other.issuedBalanceQty, issuedBalanceQty) || other.issuedBalanceQty == issuedBalanceQty) &&
            (identical(other.issueQty, issueQty) || other.issueQty == issueQty) &&
            (identical(other.requestQty, requestQty) || other.requestQty == requestQty) &&
            (identical(other.terminateSaleQty, terminateSaleQty) || other.terminateSaleQty == terminateSaleQty) &&
            const DeepCollectionEquality().equals(other._unitTypeDTOs, _unitTypeDTOs) &&
            const DeepCollectionEquality().equals(other.isPromotionItem, isPromotionItem) &&
            (identical(other.salePromotionDetailId, salePromotionDetailId) || other.salePromotionDetailId == salePromotionDetailId) &&
            (identical(other.promotionDetailDTO, promotionDetailDTO) || other.promotionDetailDTO == promotionDetailDTO) &&
            (identical(other.itemBackProduct, itemBackProduct) || other.itemBackProduct == itemBackProduct) &&
            (identical(other.productCodePrefix, productCodePrefix) || other.productCodePrefix == productCodePrefix) &&
            (identical(other.availableQtyFromWarehouse, availableQtyFromWarehouse) || other.availableQtyFromWarehouse == availableQtyFromWarehouse) &&
            const DeepCollectionEquality().equals(other.promoDiscount, promoDiscount) &&
            const DeepCollectionEquality().equals(other.promoDiscountType, promoDiscountType) &&
            const DeepCollectionEquality().equals(other.promoBonus, promoBonus) &&
            const DeepCollectionEquality().equals(other.promoCashback, promoCashback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        secondarySaleReturnDetailId,
        code,
        categoryName,
        apiLevel,
        typeName,
        barcode,
        name,
        unitId,
        unitTypeId,
        unitName,
        quantity,
        consignmentContractQty,
        consignmentContractAmount,
        salePrice,
        primarySalePrice,
        secondarySalePrice,
        consignmentSalePrice,
        amount,
        discountAmount,
        discount,
        discountType,
        normalDiscount,
        normalDiscountType,
        taxAmount,
        tax,
        taxType,
        saleTax,
        saleTaxType,
        totalAmount,
        returnQty,
        availableReturnQty,
        availableQty,
        returnAmount,
        warehouseId,
        warehouseName,
        proposalQty,
        totalIssuedQty,
        issuedBalanceQty,
        issueQty,
        requestQty,
        terminateSaleQty,
        const DeepCollectionEquality().hash(_unitTypeDTOs),
        const DeepCollectionEquality().hash(isPromotionItem),
        salePromotionDetailId,
        promotionDetailDTO,
        itemBackProduct,
        productCodePrefix,
        availableQtyFromWarehouse,
        const DeepCollectionEquality().hash(promoDiscount),
        const DeepCollectionEquality().hash(promoDiscountType),
        const DeepCollectionEquality().hash(promoBonus),
        const DeepCollectionEquality().hash(promoCashback)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      __$$ProductDTOImplCopyWithImpl<_$ProductDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {@JsonKey(name: "product_id") final int id,
      @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
      final int? secondarySaleReturnDetailId,
      @JsonKey(name: "product_code", includeToJson: false) final String code,
      @JsonKey(name: "product_category_name", includeToJson: false)
      final String categoryName,
      @JsonKey(name: "api_level", includeToJson: false) final String apiLevel,
      @JsonKey(name: "product_type_name", includeToJson: false)
      final String typeName,
      @JsonKey(name: "barcode", includeToJson: false) final String barcode,
      @JsonKey(name: "product_name", includeToJson: false) final String name,
      @JsonKey(name: "unit_id") final int unitId,
      @JsonKey(name: "unit_type_id", includeToJson: false) final int unitTypeId,
      @JsonKey(name: "unit_name", includeToJson: false) final String unitName,
      @JsonKey(name: "qty") final int quantity,
      @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
      final int? consignmentContractQty,
      @JsonKey(name: "consignment_contract_amount", includeToJson: false)
      final double? consignmentContractAmount,
      @JsonKey(name: "sales_price") final double salePrice,
      @JsonKey(name: "primary_sales_price", includeToJson: false)
      final double primarySalePrice,
      @JsonKey(name: "secondary_sales_price", includeToJson: false)
      final double secondarySalePrice,
      @JsonKey(name: "consignment_sales_price", includeToJson: false)
      final double consignmentSalePrice,
      final double amount,
      @JsonKey(name: "discount_amount") final double discountAmount,
      @JsonKey(name: "discount") final double discount,
      @JsonKey(name: "discount_type") final String discountType,
      @JsonKey(name: "normal_discount", includeIfNull: false)
      final double? normalDiscount,
      @JsonKey(name: "normal_discount_type", includeIfNull: false)
      final String? normalDiscountType,
      @JsonKey(name: "tax_amount") final double taxAmount,
      @JsonKey(name: "tax") final double tax,
      @JsonKey(name: "tax_type") final String taxType,
      @JsonKey(name: "secondary_sales_tax", includeToJson: false)
      final double saleTax,
      @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
      final String saleTaxType,
      @JsonKey(name: "total_amount") final double totalAmount,
      @JsonKey(name: "return_qty", includeIfNull: false) final int? returnQty,
      @JsonKey(name: "available_return_qty", includeToJson: false)
      final int availableReturnQty,
      @JsonKey(name: "available_qty") final int? availableQty,
      @JsonKey(name: "return_amount", includeIfNull: false)
      final double? returnAmount,
      @JsonKey(name: "warehouse_id") final int? warehouseId,
      @JsonKey(name: "warehouse_name", includeToJson: false)
      final String? warehouseName,
      @JsonKey(name: "proposal_qty", includeToJson: false)
      final int? proposalQty,
      @JsonKey(name: "total_issued_qty", includeToJson: false)
      final int totalIssuedQty,
      @JsonKey(name: "issued_balance_qty", includeToJson: false)
      final int issuedBalanceQty,
      @JsonKey(name: "issue_qty", includeToJson: false) final int issueQty,
      @JsonKey(name: "request_qty", includeToJson: false) final int requestQty,
      @JsonKey(name: "terminate_sale_qty", includeToJson: false)
      final int terminateSaleQty,
      @JsonKey(name: "unit_type_data", includeToJson: false)
      final List<UnitTypeDTO> unitTypeDTOs,
      @JsonKey(
          name: "is_promotion_item",
          toJson: _booltoJson,
          fromJson: _boolfromJson)
      final dynamic isPromotionItem,
      @JsonKey(name: "sale_promotion_detail_id")
      final int? salePromotionDetailId,
      @JsonKey(name: "is_promotion_item_list", includeToJson: false)
      final PromotionDetailDTO? promotionDetailDTO,
      @JsonKey(name: "item_back_product") final InfoDTO? itemBackProduct,
      @JsonKey(name: "product_code_prefix", includeToJson: false)
      final String? productCodePrefix,
      @JsonKey(name: "available_quantity", includeToJson: false)
      final int? availableQtyFromWarehouse,
      @JsonKey(name: "_promo_discount", includeIfNull: false)
      final dynamic promoDiscount,
      @JsonKey(name: "_promo_discount_type", includeIfNull: false)
      final dynamic promoDiscountType,
      @JsonKey(name: "_promo_bonus", includeIfNull: false)
      final dynamic promoBonus,
      @JsonKey(name: "_promo_cashback", includeIfNull: false)
      final dynamic promoCashback}) = _$ProductDTOImpl;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$ProductDTOImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get id;
  @override
  @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false)
  int? get secondarySaleReturnDetailId;
  @override
  @JsonKey(name: "product_code", includeToJson: false)
  String get code;
  @override
  @JsonKey(name: "product_category_name", includeToJson: false)
  String get categoryName;
  @override
  @JsonKey(name: "api_level", includeToJson: false)
  String get apiLevel;
  @override
  @JsonKey(name: "product_type_name", includeToJson: false)
  String get typeName;
  @override
  @JsonKey(name: "barcode", includeToJson: false)
  String get barcode;
  @override
  @JsonKey(name: "product_name", includeToJson: false)
  String get name;
  @override
  @JsonKey(name: "unit_id")
  int get unitId;
  @override
  @JsonKey(name: "unit_type_id", includeToJson: false)
  int get unitTypeId;
  @override
  @JsonKey(name: "unit_name", includeToJson: false)
  String get unitName;
  @override
  @JsonKey(name: "qty")
  int get quantity;
  @override
  @JsonKey(name: "consignment_contract_qty", includeIfNull: false)
  int? get consignmentContractQty;
  @override
  @JsonKey(name: "consignment_contract_amount", includeToJson: false)
  double? get consignmentContractAmount;
  @override
  @JsonKey(name: "sales_price")
  double get salePrice;
  @override
  @JsonKey(name: "primary_sales_price", includeToJson: false)
  double get primarySalePrice;
  @override
  @JsonKey(name: "secondary_sales_price", includeToJson: false)
  double get secondarySalePrice;
  @override
  @JsonKey(name: "consignment_sales_price", includeToJson: false)
  double get consignmentSalePrice;
  @override
  double get amount;
  @override
  @JsonKey(name: "discount_amount")
  double get discountAmount;
  @override
  @JsonKey(name: "discount")
  double get discount;
  @override
  @JsonKey(name: "discount_type")
  String get discountType;
  @override
  @JsonKey(name: "normal_discount", includeIfNull: false)
  double? get normalDiscount;
  @override
  @JsonKey(name: "normal_discount_type", includeIfNull: false)
  String? get normalDiscountType;
  @override
  @JsonKey(name: "tax_amount")
  double get taxAmount;
  @override
  @JsonKey(name: "tax")
  double get tax;
  @override
  @JsonKey(name: "tax_type")
  String get taxType;
  @override
  @JsonKey(name: "secondary_sales_tax", includeToJson: false)
  double get saleTax;
  @override
  @JsonKey(name: "secondary_sales_tax_type", includeToJson: false)
  String get saleTaxType;
  @override
  @JsonKey(name: "total_amount")
  double get totalAmount;
  @override
  @JsonKey(name: "return_qty", includeIfNull: false)
  int? get returnQty;
  @override
  @JsonKey(name: "available_return_qty", includeToJson: false)
  int get availableReturnQty;
  @override
  @JsonKey(name: "available_qty")
  int? get availableQty;
  @override
  @JsonKey(name: "return_amount", includeIfNull: false)
  double? get returnAmount;
  @override
  @JsonKey(name: "warehouse_id")
  int? get warehouseId;
  @override
  @JsonKey(name: "warehouse_name", includeToJson: false)
  String? get warehouseName;
  @override
  @JsonKey(name: "proposal_qty", includeToJson: false)
  int? get proposalQty;
  @override
  @JsonKey(name: "total_issued_qty", includeToJson: false)
  int get totalIssuedQty;
  @override
  @JsonKey(name: "issued_balance_qty", includeToJson: false)
  int get issuedBalanceQty;
  @override
  @JsonKey(name: "issue_qty", includeToJson: false)
  int get issueQty;
  @override
  @JsonKey(name: "request_qty", includeToJson: false)
  int get requestQty;
  @override
  @JsonKey(name: "terminate_sale_qty", includeToJson: false)
  int get terminateSaleQty;
  @override
  @JsonKey(name: "unit_type_data", includeToJson: false)
  List<UnitTypeDTO> get unitTypeDTOs;
  @override
  @JsonKey(
      name: "is_promotion_item", toJson: _booltoJson, fromJson: _boolfromJson)
  dynamic get isPromotionItem;
  @override
  @JsonKey(name: "sale_promotion_detail_id")
  int? get salePromotionDetailId;
  @override
  @JsonKey(name: "is_promotion_item_list", includeToJson: false)
  PromotionDetailDTO? get promotionDetailDTO;
  @override
  @JsonKey(name: "item_back_product")
  InfoDTO? get itemBackProduct;
  @override
  @JsonKey(name: "product_code_prefix", includeToJson: false)
  String? get productCodePrefix;
  @override
  @JsonKey(name: "available_quantity", includeToJson: false)
  int? get availableQtyFromWarehouse;
  @override
  @JsonKey(name: "_promo_discount", includeIfNull: false)
  dynamic get promoDiscount;
  @override // Renamed for Dart style: _promo_discount -> promoDiscount
  @JsonKey(name: "_promo_discount_type", includeIfNull: false)
  dynamic get promoDiscountType;
  @override // Renamed: _promo_discount_type -> promoDiscountType
  @JsonKey(name: "_promo_bonus", includeIfNull: false)
  dynamic get promoBonus;
  @override // Renamed: _promo_bonus -> promoBonus
  @JsonKey(name: "_promo_cashback", includeIfNull: false)
  dynamic get promoCashback;
  @override
  @JsonKey(ignore: true)
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
