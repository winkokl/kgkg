// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionProductDTO _$PromotionProductDTOFromJson(Map<String, dynamic> json) {
  return _PromotionProductDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionProductDTO {
  @JsonKey(name: 'unit_id')
  int get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_qty')
  int get baseQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_qty', includeToJson: false)
  int get planQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'planned_qty')
  int get plannedQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_qty')
  int get saleQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_unit', includeToJson: false)
  dynamic get baseUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_qty')
  int get currentQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_qty_unit')
  String get currentQtyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_units', includeToJson: false)
  PromotionProductUnit get baseUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'converted_units', includeToJson: false)
  List<PromotionProductUnit> get convertedUnits =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_name')
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_price', includeToJson: false)
  double get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price', includeToJson: false)
  double get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id')
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_name')
  String get warehouseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_qty')
  int get requestedQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_qty')
  int get returnQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_amount')
  double get returnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason')
  String get returnReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_sale_price')
  double get netSalePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'normal_discount')
  double get normalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_product')
  int get numberOfProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  int get promotionPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_product_id')
  int get promotionProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  int get promotionInvoiceDetailId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionProductDTOCopyWith<PromotionProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionProductDTOCopyWith<$Res> {
  factory $PromotionProductDTOCopyWith(
          PromotionProductDTO value, $Res Function(PromotionProductDTO) then) =
      _$PromotionProductDTOCopyWithImpl<$Res, PromotionProductDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') int unitId,
      @JsonKey(name: 'base_qty') int baseQty,
      @JsonKey(name: 'plan_qty', includeToJson: false) int planQty,
      @JsonKey(name: 'planned_qty') int plannedQty,
      @JsonKey(name: 'sale_qty') int saleQty,
      @JsonKey(name: 'base_unit', includeToJson: false) dynamic baseUnit,
      @JsonKey(name: 'current_qty') int currentQty,
      @JsonKey(name: 'current_qty_unit') String currentQtyUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'unit_name') String unitName,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'sale_price', includeToJson: false) double salePrice,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'product_price', includeToJson: false) double productPrice,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'warehouse_id') int warehouseId,
      @JsonKey(name: 'warehouse_name') String warehouseName,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'requested_qty') int requestedQty,
      @JsonKey(name: 'return_qty') int returnQty,
      @JsonKey(name: 'return_amount') double returnAmount,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'net_sale_price') double netSalePrice,
      @JsonKey(name: 'normal_discount') double normalDiscount,
      @JsonKey(name: 'number_of_product') int numberOfProduct,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_product_id') int promotionProductId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      int promotionInvoiceDetailId});

  $PromotionProductUnitCopyWith<$Res> get baseUnits;
}

/// @nodoc
class _$PromotionProductDTOCopyWithImpl<$Res, $Val extends PromotionProductDTO>
    implements $PromotionProductDTOCopyWith<$Res> {
  _$PromotionProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? baseQty = null,
    Object? planQty = null,
    Object? plannedQty = null,
    Object? saleQty = null,
    Object? baseUnit = freezed,
    Object? currentQty = null,
    Object? currentQtyUnit = null,
    Object? baseUnits = null,
    Object? convertedUnits = null,
    Object? unitName = null,
    Object? productId = null,
    Object? salePrice = null,
    Object? price = null,
    Object? productPrice = null,
    Object? amount = null,
    Object? productName = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? discountType = null,
    Object? requestedQty = null,
    Object? returnQty = null,
    Object? returnAmount = null,
    Object? returnReason = null,
    Object? netSalePrice = null,
    Object? normalDiscount = null,
    Object? numberOfProduct = null,
    Object? promotionPlanId = null,
    Object? promotionProductId = null,
    Object? promotionInvoiceDetailId = null,
  }) {
    return _then(_value.copyWith(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      baseQty: null == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as int,
      planQty: null == planQty
          ? _value.planQty
          : planQty // ignore: cast_nullable_to_non_nullable
              as int,
      plannedQty: null == plannedQty
          ? _value.plannedQty
          : plannedQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleQty: null == saleQty
          ? _value.saleQty
          : saleQty // ignore: cast_nullable_to_non_nullable
              as int,
      baseUnit: freezed == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentQty: null == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int,
      currentQtyUnit: null == currentQtyUnit
          ? _value.currentQtyUnit
          : currentQtyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      baseUnits: null == baseUnits
          ? _value.baseUnits
          : baseUnits // ignore: cast_nullable_to_non_nullable
              as PromotionProductUnit,
      convertedUnits: null == convertedUnits
          ? _value.convertedUnits
          : convertedUnits // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductUnit>,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedQty: null == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnAmount: null == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      netSalePrice: null == netSalePrice
          ? _value.netSalePrice
          : netSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      normalDiscount: null == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfProduct: null == numberOfProduct
          ? _value.numberOfProduct
          : numberOfProduct // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlanId: null == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionProductId: null == promotionProductId
          ? _value.promotionProductId
          : promotionProductId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionInvoiceDetailId: null == promotionInvoiceDetailId
          ? _value.promotionInvoiceDetailId
          : promotionInvoiceDetailId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionProductUnitCopyWith<$Res> get baseUnits {
    return $PromotionProductUnitCopyWith<$Res>(_value.baseUnits, (value) {
      return _then(_value.copyWith(baseUnits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionProductDTOImplCopyWith<$Res>
    implements $PromotionProductDTOCopyWith<$Res> {
  factory _$$PromotionProductDTOImplCopyWith(_$PromotionProductDTOImpl value,
          $Res Function(_$PromotionProductDTOImpl) then) =
      __$$PromotionProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') int unitId,
      @JsonKey(name: 'base_qty') int baseQty,
      @JsonKey(name: 'plan_qty', includeToJson: false) int planQty,
      @JsonKey(name: 'planned_qty') int plannedQty,
      @JsonKey(name: 'sale_qty') int saleQty,
      @JsonKey(name: 'base_unit', includeToJson: false) dynamic baseUnit,
      @JsonKey(name: 'current_qty') int currentQty,
      @JsonKey(name: 'current_qty_unit') String currentQtyUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'unit_name') String unitName,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'sale_price', includeToJson: false) double salePrice,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'product_price', includeToJson: false) double productPrice,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'warehouse_id') int warehouseId,
      @JsonKey(name: 'warehouse_name') String warehouseName,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'requested_qty') int requestedQty,
      @JsonKey(name: 'return_qty') int returnQty,
      @JsonKey(name: 'return_amount') double returnAmount,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'net_sale_price') double netSalePrice,
      @JsonKey(name: 'normal_discount') double normalDiscount,
      @JsonKey(name: 'number_of_product') int numberOfProduct,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_product_id') int promotionProductId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      int promotionInvoiceDetailId});

  @override
  $PromotionProductUnitCopyWith<$Res> get baseUnits;
}

/// @nodoc
class __$$PromotionProductDTOImplCopyWithImpl<$Res>
    extends _$PromotionProductDTOCopyWithImpl<$Res, _$PromotionProductDTOImpl>
    implements _$$PromotionProductDTOImplCopyWith<$Res> {
  __$$PromotionProductDTOImplCopyWithImpl(_$PromotionProductDTOImpl _value,
      $Res Function(_$PromotionProductDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? baseQty = null,
    Object? planQty = null,
    Object? plannedQty = null,
    Object? saleQty = null,
    Object? baseUnit = freezed,
    Object? currentQty = null,
    Object? currentQtyUnit = null,
    Object? baseUnits = null,
    Object? convertedUnits = null,
    Object? unitName = null,
    Object? productId = null,
    Object? salePrice = null,
    Object? price = null,
    Object? productPrice = null,
    Object? amount = null,
    Object? productName = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? discountType = null,
    Object? requestedQty = null,
    Object? returnQty = null,
    Object? returnAmount = null,
    Object? returnReason = null,
    Object? netSalePrice = null,
    Object? normalDiscount = null,
    Object? numberOfProduct = null,
    Object? promotionPlanId = null,
    Object? promotionProductId = null,
    Object? promotionInvoiceDetailId = null,
  }) {
    return _then(_$PromotionProductDTOImpl(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      baseQty: null == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as int,
      planQty: null == planQty
          ? _value.planQty
          : planQty // ignore: cast_nullable_to_non_nullable
              as int,
      plannedQty: null == plannedQty
          ? _value.plannedQty
          : plannedQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleQty: null == saleQty
          ? _value.saleQty
          : saleQty // ignore: cast_nullable_to_non_nullable
              as int,
      baseUnit: freezed == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentQty: null == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int,
      currentQtyUnit: null == currentQtyUnit
          ? _value.currentQtyUnit
          : currentQtyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      baseUnits: null == baseUnits
          ? _value.baseUnits
          : baseUnits // ignore: cast_nullable_to_non_nullable
              as PromotionProductUnit,
      convertedUnits: null == convertedUnits
          ? _value._convertedUnits
          : convertedUnits // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductUnit>,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedQty: null == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      returnAmount: null == returnAmount
          ? _value.returnAmount
          : returnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      netSalePrice: null == netSalePrice
          ? _value.netSalePrice
          : netSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      normalDiscount: null == normalDiscount
          ? _value.normalDiscount
          : normalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfProduct: null == numberOfProduct
          ? _value.numberOfProduct
          : numberOfProduct // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlanId: null == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionProductId: null == promotionProductId
          ? _value.promotionProductId
          : promotionProductId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionInvoiceDetailId: null == promotionInvoiceDetailId
          ? _value.promotionInvoiceDetailId
          : promotionInvoiceDetailId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionProductDTOImpl extends _PromotionProductDTO {
  const _$PromotionProductDTOImpl(
      {@JsonKey(name: 'unit_id') this.unitId = -1,
      @JsonKey(name: 'base_qty') this.baseQty = 0,
      @JsonKey(name: 'plan_qty', includeToJson: false) this.planQty = 0,
      @JsonKey(name: 'planned_qty') this.plannedQty = 0,
      @JsonKey(name: 'sale_qty') this.saleQty = 0,
      @JsonKey(name: 'base_unit', includeToJson: false) this.baseUnit,
      @JsonKey(name: 'current_qty') this.currentQty = 0,
      @JsonKey(name: 'current_qty_unit') this.currentQtyUnit = '',
      @JsonKey(name: 'base_units', includeToJson: false)
      this.baseUnits = const PromotionProductUnit(),
      @JsonKey(name: 'converted_units', includeToJson: false)
      final List<PromotionProductUnit> convertedUnits = const [],
      @JsonKey(name: 'unit_name') this.unitName = '',
      @JsonKey(name: 'product_id') this.productId = -1,
      @JsonKey(name: 'sale_price', includeToJson: false) this.salePrice = 0,
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'product_price', includeToJson: false)
      this.productPrice = 0,
      @JsonKey(name: 'amount') this.amount = 0,
      @JsonKey(name: 'product_name') this.productName = '',
      @JsonKey(name: 'warehouse_id') this.warehouseId = -1,
      @JsonKey(name: 'warehouse_name') this.warehouseName = '',
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'requested_qty') this.requestedQty = 0,
      @JsonKey(name: 'return_qty') this.returnQty = 0,
      @JsonKey(name: 'return_amount') this.returnAmount = 0,
      @JsonKey(name: 'return_reason') this.returnReason = '',
      @JsonKey(name: 'net_sale_price') this.netSalePrice = 0,
      @JsonKey(name: 'normal_discount') this.normalDiscount = 0,
      @JsonKey(name: 'number_of_product') this.numberOfProduct = 0,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      this.promotionPlanId = -1,
      @JsonKey(name: 'marketing_promotion_product_id')
      this.promotionProductId = -1,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      this.promotionInvoiceDetailId = -1})
      : _convertedUnits = convertedUnits,
        super._();

  factory _$PromotionProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionProductDTOImplFromJson(json);

  @override
  @JsonKey(name: 'unit_id')
  final int unitId;
  @override
  @JsonKey(name: 'base_qty')
  final int baseQty;
  @override
  @JsonKey(name: 'plan_qty', includeToJson: false)
  final int planQty;
  @override
  @JsonKey(name: 'planned_qty')
  final int plannedQty;
  @override
  @JsonKey(name: 'sale_qty')
  final int saleQty;
  @override
  @JsonKey(name: 'base_unit', includeToJson: false)
  final dynamic baseUnit;
  @override
  @JsonKey(name: 'current_qty')
  final int currentQty;
  @override
  @JsonKey(name: 'current_qty_unit')
  final String currentQtyUnit;
  @override
  @JsonKey(name: 'base_units', includeToJson: false)
  final PromotionProductUnit baseUnits;
  final List<PromotionProductUnit> _convertedUnits;
  @override
  @JsonKey(name: 'converted_units', includeToJson: false)
  List<PromotionProductUnit> get convertedUnits {
    if (_convertedUnits is EqualUnmodifiableListView) return _convertedUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_convertedUnits);
  }

  @override
  @JsonKey(name: 'unit_name')
  final String unitName;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'sale_price', includeToJson: false)
  final double salePrice;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'product_price', includeToJson: false)
  final double productPrice;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'warehouse_id')
  final int warehouseId;
  @override
  @JsonKey(name: 'warehouse_name')
  final String warehouseName;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  @JsonKey(name: 'requested_qty')
  final int requestedQty;
  @override
  @JsonKey(name: 'return_qty')
  final int returnQty;
  @override
  @JsonKey(name: 'return_amount')
  final double returnAmount;
  @override
  @JsonKey(name: 'return_reason')
  final String returnReason;
  @override
  @JsonKey(name: 'net_sale_price')
  final double netSalePrice;
  @override
  @JsonKey(name: 'normal_discount')
  final double normalDiscount;
  @override
  @JsonKey(name: 'number_of_product')
  final int numberOfProduct;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  final int promotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_product_id')
  final int promotionProductId;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  final int promotionInvoiceDetailId;

  @override
  String toString() {
    return 'PromotionProductDTO(unitId: $unitId, baseQty: $baseQty, planQty: $planQty, plannedQty: $plannedQty, saleQty: $saleQty, baseUnit: $baseUnit, currentQty: $currentQty, currentQtyUnit: $currentQtyUnit, baseUnits: $baseUnits, convertedUnits: $convertedUnits, unitName: $unitName, productId: $productId, salePrice: $salePrice, price: $price, productPrice: $productPrice, amount: $amount, productName: $productName, warehouseId: $warehouseId, warehouseName: $warehouseName, discountType: $discountType, requestedQty: $requestedQty, returnQty: $returnQty, returnAmount: $returnAmount, returnReason: $returnReason, netSalePrice: $netSalePrice, normalDiscount: $normalDiscount, numberOfProduct: $numberOfProduct, promotionPlanId: $promotionPlanId, promotionProductId: $promotionProductId, promotionInvoiceDetailId: $promotionInvoiceDetailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionProductDTOImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.baseQty, baseQty) || other.baseQty == baseQty) &&
            (identical(other.planQty, planQty) || other.planQty == planQty) &&
            (identical(other.plannedQty, plannedQty) ||
                other.plannedQty == plannedQty) &&
            (identical(other.saleQty, saleQty) || other.saleQty == saleQty) &&
            const DeepCollectionEquality().equals(other.baseUnit, baseUnit) &&
            (identical(other.currentQty, currentQty) ||
                other.currentQty == currentQty) &&
            (identical(other.currentQtyUnit, currentQtyUnit) ||
                other.currentQtyUnit == currentQtyUnit) &&
            (identical(other.baseUnits, baseUnits) ||
                other.baseUnits == baseUnits) &&
            const DeepCollectionEquality()
                .equals(other._convertedUnits, _convertedUnits) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.requestedQty, requestedQty) ||
                other.requestedQty == requestedQty) &&
            (identical(other.returnQty, returnQty) ||
                other.returnQty == returnQty) &&
            (identical(other.returnAmount, returnAmount) ||
                other.returnAmount == returnAmount) &&
            (identical(other.returnReason, returnReason) ||
                other.returnReason == returnReason) &&
            (identical(other.netSalePrice, netSalePrice) ||
                other.netSalePrice == netSalePrice) &&
            (identical(other.normalDiscount, normalDiscount) ||
                other.normalDiscount == normalDiscount) &&
            (identical(other.numberOfProduct, numberOfProduct) ||
                other.numberOfProduct == numberOfProduct) &&
            (identical(other.promotionPlanId, promotionPlanId) ||
                other.promotionPlanId == promotionPlanId) &&
            (identical(other.promotionProductId, promotionProductId) ||
                other.promotionProductId == promotionProductId) &&
            (identical(
                    other.promotionInvoiceDetailId, promotionInvoiceDetailId) ||
                other.promotionInvoiceDetailId == promotionInvoiceDetailId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        unitId,
        baseQty,
        planQty,
        plannedQty,
        saleQty,
        const DeepCollectionEquality().hash(baseUnit),
        currentQty,
        currentQtyUnit,
        baseUnits,
        const DeepCollectionEquality().hash(_convertedUnits),
        unitName,
        productId,
        salePrice,
        price,
        productPrice,
        amount,
        productName,
        warehouseId,
        warehouseName,
        discountType,
        requestedQty,
        returnQty,
        returnAmount,
        returnReason,
        netSalePrice,
        normalDiscount,
        numberOfProduct,
        promotionPlanId,
        promotionProductId,
        promotionInvoiceDetailId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionProductDTOImplCopyWith<_$PromotionProductDTOImpl> get copyWith =>
      __$$PromotionProductDTOImplCopyWithImpl<_$PromotionProductDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionProductDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionProductDTO extends PromotionProductDTO {
  const factory _PromotionProductDTO(
      {@JsonKey(name: 'unit_id') final int unitId,
      @JsonKey(name: 'base_qty') final int baseQty,
      @JsonKey(name: 'plan_qty', includeToJson: false) final int planQty,
      @JsonKey(name: 'planned_qty') final int plannedQty,
      @JsonKey(name: 'sale_qty') final int saleQty,
      @JsonKey(name: 'base_unit', includeToJson: false) final dynamic baseUnit,
      @JsonKey(name: 'current_qty') final int currentQty,
      @JsonKey(name: 'current_qty_unit') final String currentQtyUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      final PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      final List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'unit_name') final String unitName,
      @JsonKey(name: 'product_id') final int productId,
      @JsonKey(name: 'sale_price', includeToJson: false) final double salePrice,
      @JsonKey(name: 'price') final double price,
      @JsonKey(name: 'product_price', includeToJson: false)
      final double productPrice,
      @JsonKey(name: 'amount') final double amount,
      @JsonKey(name: 'product_name') final String productName,
      @JsonKey(name: 'warehouse_id') final int warehouseId,
      @JsonKey(name: 'warehouse_name') final String warehouseName,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'requested_qty') final int requestedQty,
      @JsonKey(name: 'return_qty') final int returnQty,
      @JsonKey(name: 'return_amount') final double returnAmount,
      @JsonKey(name: 'return_reason') final String returnReason,
      @JsonKey(name: 'net_sale_price') final double netSalePrice,
      @JsonKey(name: 'normal_discount') final double normalDiscount,
      @JsonKey(name: 'number_of_product') final int numberOfProduct,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      final int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_product_id')
      final int promotionProductId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      final int promotionInvoiceDetailId}) = _$PromotionProductDTOImpl;
  const _PromotionProductDTO._() : super._();

  factory _PromotionProductDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionProductDTOImpl.fromJson;

  @override
  @JsonKey(name: 'unit_id')
  int get unitId;
  @override
  @JsonKey(name: 'base_qty')
  int get baseQty;
  @override
  @JsonKey(name: 'plan_qty', includeToJson: false)
  int get planQty;
  @override
  @JsonKey(name: 'planned_qty')
  int get plannedQty;
  @override
  @JsonKey(name: 'sale_qty')
  int get saleQty;
  @override
  @JsonKey(name: 'base_unit', includeToJson: false)
  dynamic get baseUnit;
  @override
  @JsonKey(name: 'current_qty')
  int get currentQty;
  @override
  @JsonKey(name: 'current_qty_unit')
  String get currentQtyUnit;
  @override
  @JsonKey(name: 'base_units', includeToJson: false)
  PromotionProductUnit get baseUnits;
  @override
  @JsonKey(name: 'converted_units', includeToJson: false)
  List<PromotionProductUnit> get convertedUnits;
  @override
  @JsonKey(name: 'unit_name')
  String get unitName;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'sale_price', includeToJson: false)
  double get salePrice;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'product_price', includeToJson: false)
  double get productPrice;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  @JsonKey(name: 'warehouse_id')
  int get warehouseId;
  @override
  @JsonKey(name: 'warehouse_name')
  String get warehouseName;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  @JsonKey(name: 'requested_qty')
  int get requestedQty;
  @override
  @JsonKey(name: 'return_qty')
  int get returnQty;
  @override
  @JsonKey(name: 'return_amount')
  double get returnAmount;
  @override
  @JsonKey(name: 'return_reason')
  String get returnReason;
  @override
  @JsonKey(name: 'net_sale_price')
  double get netSalePrice;
  @override
  @JsonKey(name: 'normal_discount')
  double get normalDiscount;
  @override
  @JsonKey(name: 'number_of_product')
  int get numberOfProduct;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  int get promotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_product_id')
  int get promotionProductId;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  int get promotionInvoiceDetailId;
  @override
  @JsonKey(ignore: true)
  _$$PromotionProductDTOImplCopyWith<_$PromotionProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
