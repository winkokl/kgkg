// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftItemDTO _$GiftItemDTOFromJson(Map<String, dynamic> json) {
  return _GiftItemDTO.fromJson(json);
}

/// @nodoc
mixin _$GiftItemDTO {
  @JsonKey(name: 'unit_id')
  int get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_qty')
  int get baseQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'planned_qty')
  int get plannedQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_qty')
  int get saleQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_unit', includeToJson: false)
  String get baseUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_units', includeToJson: false)
  PromotionProductUnit get baseUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'converted_units', includeToJson: false)
  List<PromotionProductUnit> get convertedUnits =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'current_qty')
  int get currentQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_qty_unit')
  String get currentQtyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_name', includeToJson: false)
  String get giftName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name', includeToJson: false)
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_name', includeToJson: false)
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_item_id')
  int get giftItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_id')
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_name')
  String get warehouseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason')
  String get returnReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_qty')
  int get returnQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_qty')
  int get requestedQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_gift_item')
  int get numberOfGiftItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_gift_id')
  int get promotionGiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  int get promotionPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  int get promotionInvoiceDetailId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftItemDTOCopyWith<GiftItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftItemDTOCopyWith<$Res> {
  factory $GiftItemDTOCopyWith(
          GiftItemDTO value, $Res Function(GiftItemDTO) then) =
      _$GiftItemDTOCopyWithImpl<$Res, GiftItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') int unitId,
      @JsonKey(name: 'base_qty') int baseQty,
      @JsonKey(name: 'planned_qty') int plannedQty,
      @JsonKey(name: 'sale_qty') int saleQty,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'base_unit', includeToJson: false) String baseUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'current_qty') int currentQty,
      @JsonKey(name: 'current_qty_unit') String currentQtyUnit,
      @JsonKey(name: 'gift_name', includeToJson: false) String giftName,
      @JsonKey(name: 'product_name', includeToJson: false) String productName,
      @JsonKey(name: 'unit_name', includeToJson: false) String unitName,
      @JsonKey(name: 'gift_item_id') int giftItemId,
      @JsonKey(name: 'warehouse_id') int warehouseId,
      @JsonKey(name: 'warehouse_name') String warehouseName,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'return_qty') int returnQty,
      @JsonKey(name: 'requested_qty') int requestedQty,
      @JsonKey(name: 'number_of_gift_item') int numberOfGiftItem,
      @JsonKey(name: 'marketing_promotion_gift_id') int promotionGiftId,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      int promotionInvoiceDetailId});

  $PromotionProductUnitCopyWith<$Res> get baseUnits;
}

/// @nodoc
class _$GiftItemDTOCopyWithImpl<$Res, $Val extends GiftItemDTO>
    implements $GiftItemDTOCopyWith<$Res> {
  _$GiftItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? baseQty = null,
    Object? plannedQty = null,
    Object? saleQty = null,
    Object? productId = null,
    Object? baseUnit = null,
    Object? baseUnits = null,
    Object? convertedUnits = null,
    Object? currentQty = null,
    Object? currentQtyUnit = null,
    Object? giftName = null,
    Object? productName = null,
    Object? unitName = null,
    Object? giftItemId = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? returnReason = null,
    Object? returnQty = null,
    Object? requestedQty = null,
    Object? numberOfGiftItem = null,
    Object? promotionGiftId = null,
    Object? promotionPlanId = null,
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
      plannedQty: null == plannedQty
          ? _value.plannedQty
          : plannedQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleQty: null == saleQty
          ? _value.saleQty
          : saleQty // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      baseUnit: null == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as String,
      baseUnits: null == baseUnits
          ? _value.baseUnits
          : baseUnits // ignore: cast_nullable_to_non_nullable
              as PromotionProductUnit,
      convertedUnits: null == convertedUnits
          ? _value.convertedUnits
          : convertedUnits // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductUnit>,
      currentQty: null == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int,
      currentQtyUnit: null == currentQtyUnit
          ? _value.currentQtyUnit
          : currentQtyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      giftName: null == giftName
          ? _value.giftName
          : giftName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      giftItemId: null == giftItemId
          ? _value.giftItemId
          : giftItemId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      requestedQty: null == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfGiftItem: null == numberOfGiftItem
          ? _value.numberOfGiftItem
          : numberOfGiftItem // ignore: cast_nullable_to_non_nullable
              as int,
      promotionGiftId: null == promotionGiftId
          ? _value.promotionGiftId
          : promotionGiftId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlanId: null == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GiftItemDTOImplCopyWith<$Res>
    implements $GiftItemDTOCopyWith<$Res> {
  factory _$$GiftItemDTOImplCopyWith(
          _$GiftItemDTOImpl value, $Res Function(_$GiftItemDTOImpl) then) =
      __$$GiftItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') int unitId,
      @JsonKey(name: 'base_qty') int baseQty,
      @JsonKey(name: 'planned_qty') int plannedQty,
      @JsonKey(name: 'sale_qty') int saleQty,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'base_unit', includeToJson: false) String baseUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'current_qty') int currentQty,
      @JsonKey(name: 'current_qty_unit') String currentQtyUnit,
      @JsonKey(name: 'gift_name', includeToJson: false) String giftName,
      @JsonKey(name: 'product_name', includeToJson: false) String productName,
      @JsonKey(name: 'unit_name', includeToJson: false) String unitName,
      @JsonKey(name: 'gift_item_id') int giftItemId,
      @JsonKey(name: 'warehouse_id') int warehouseId,
      @JsonKey(name: 'warehouse_name') String warehouseName,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'return_qty') int returnQty,
      @JsonKey(name: 'requested_qty') int requestedQty,
      @JsonKey(name: 'number_of_gift_item') int numberOfGiftItem,
      @JsonKey(name: 'marketing_promotion_gift_id') int promotionGiftId,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      int promotionInvoiceDetailId});

  @override
  $PromotionProductUnitCopyWith<$Res> get baseUnits;
}

/// @nodoc
class __$$GiftItemDTOImplCopyWithImpl<$Res>
    extends _$GiftItemDTOCopyWithImpl<$Res, _$GiftItemDTOImpl>
    implements _$$GiftItemDTOImplCopyWith<$Res> {
  __$$GiftItemDTOImplCopyWithImpl(
      _$GiftItemDTOImpl _value, $Res Function(_$GiftItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? baseQty = null,
    Object? plannedQty = null,
    Object? saleQty = null,
    Object? productId = null,
    Object? baseUnit = null,
    Object? baseUnits = null,
    Object? convertedUnits = null,
    Object? currentQty = null,
    Object? currentQtyUnit = null,
    Object? giftName = null,
    Object? productName = null,
    Object? unitName = null,
    Object? giftItemId = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? returnReason = null,
    Object? returnQty = null,
    Object? requestedQty = null,
    Object? numberOfGiftItem = null,
    Object? promotionGiftId = null,
    Object? promotionPlanId = null,
    Object? promotionInvoiceDetailId = null,
  }) {
    return _then(_$GiftItemDTOImpl(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      baseQty: null == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as int,
      plannedQty: null == plannedQty
          ? _value.plannedQty
          : plannedQty // ignore: cast_nullable_to_non_nullable
              as int,
      saleQty: null == saleQty
          ? _value.saleQty
          : saleQty // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      baseUnit: null == baseUnit
          ? _value.baseUnit
          : baseUnit // ignore: cast_nullable_to_non_nullable
              as String,
      baseUnits: null == baseUnits
          ? _value.baseUnits
          : baseUnits // ignore: cast_nullable_to_non_nullable
              as PromotionProductUnit,
      convertedUnits: null == convertedUnits
          ? _value._convertedUnits
          : convertedUnits // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductUnit>,
      currentQty: null == currentQty
          ? _value.currentQty
          : currentQty // ignore: cast_nullable_to_non_nullable
              as int,
      currentQtyUnit: null == currentQtyUnit
          ? _value.currentQtyUnit
          : currentQtyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      giftName: null == giftName
          ? _value.giftName
          : giftName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      giftItemId: null == giftItemId
          ? _value.giftItemId
          : giftItemId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      returnQty: null == returnQty
          ? _value.returnQty
          : returnQty // ignore: cast_nullable_to_non_nullable
              as int,
      requestedQty: null == requestedQty
          ? _value.requestedQty
          : requestedQty // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfGiftItem: null == numberOfGiftItem
          ? _value.numberOfGiftItem
          : numberOfGiftItem // ignore: cast_nullable_to_non_nullable
              as int,
      promotionGiftId: null == promotionGiftId
          ? _value.promotionGiftId
          : promotionGiftId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionPlanId: null == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
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
class _$GiftItemDTOImpl extends _GiftItemDTO {
  const _$GiftItemDTOImpl(
      {@JsonKey(name: 'unit_id') this.unitId = -1,
      @JsonKey(name: 'base_qty') this.baseQty = 0,
      @JsonKey(name: 'planned_qty') this.plannedQty = 0,
      @JsonKey(name: 'sale_qty') this.saleQty = 0,
      @JsonKey(name: 'product_id') this.productId = -1,
      @JsonKey(name: 'base_unit', includeToJson: false) this.baseUnit = '',
      @JsonKey(name: 'base_units', includeToJson: false)
      this.baseUnits = const PromotionProductUnit(),
      @JsonKey(name: 'converted_units', includeToJson: false)
      final List<PromotionProductUnit> convertedUnits = const [],
      @JsonKey(name: 'current_qty') this.currentQty = 0,
      @JsonKey(name: 'current_qty_unit') this.currentQtyUnit = '',
      @JsonKey(name: 'gift_name', includeToJson: false) this.giftName = '',
      @JsonKey(name: 'product_name', includeToJson: false)
      this.productName = '',
      @JsonKey(name: 'unit_name', includeToJson: false) this.unitName = '',
      @JsonKey(name: 'gift_item_id') this.giftItemId = -1,
      @JsonKey(name: 'warehouse_id') this.warehouseId = -1,
      @JsonKey(name: 'warehouse_name') this.warehouseName = '',
      @JsonKey(name: 'return_reason') this.returnReason = '',
      @JsonKey(name: 'return_qty') this.returnQty = 0,
      @JsonKey(name: 'requested_qty') this.requestedQty = 0,
      @JsonKey(name: 'number_of_gift_item') this.numberOfGiftItem = 0,
      @JsonKey(name: 'marketing_promotion_gift_id') this.promotionGiftId = -1,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      this.promotionPlanId = -1,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      this.promotionInvoiceDetailId = -1})
      : _convertedUnits = convertedUnits,
        super._();

  factory _$GiftItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftItemDTOImplFromJson(json);

  @override
  @JsonKey(name: 'unit_id')
  final int unitId;
  @override
  @JsonKey(name: 'base_qty')
  final int baseQty;
  @override
  @JsonKey(name: 'planned_qty')
  final int plannedQty;
  @override
  @JsonKey(name: 'sale_qty')
  final int saleQty;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'base_unit', includeToJson: false)
  final String baseUnit;
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
  @JsonKey(name: 'current_qty')
  final int currentQty;
  @override
  @JsonKey(name: 'current_qty_unit')
  final String currentQtyUnit;
  @override
  @JsonKey(name: 'gift_name', includeToJson: false)
  final String giftName;
  @override
  @JsonKey(name: 'product_name', includeToJson: false)
  final String productName;
  @override
  @JsonKey(name: 'unit_name', includeToJson: false)
  final String unitName;
  @override
  @JsonKey(name: 'gift_item_id')
  final int giftItemId;
  @override
  @JsonKey(name: 'warehouse_id')
  final int warehouseId;
  @override
  @JsonKey(name: 'warehouse_name')
  final String warehouseName;
  @override
  @JsonKey(name: 'return_reason')
  final String returnReason;
  @override
  @JsonKey(name: 'return_qty')
  final int returnQty;
  @override
  @JsonKey(name: 'requested_qty')
  final int requestedQty;
  @override
  @JsonKey(name: 'number_of_gift_item')
  final int numberOfGiftItem;
  @override
  @JsonKey(name: 'marketing_promotion_gift_id')
  final int promotionGiftId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  final int promotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  final int promotionInvoiceDetailId;

  @override
  String toString() {
    return 'GiftItemDTO(unitId: $unitId, baseQty: $baseQty, plannedQty: $plannedQty, saleQty: $saleQty, productId: $productId, baseUnit: $baseUnit, baseUnits: $baseUnits, convertedUnits: $convertedUnits, currentQty: $currentQty, currentQtyUnit: $currentQtyUnit, giftName: $giftName, productName: $productName, unitName: $unitName, giftItemId: $giftItemId, warehouseId: $warehouseId, warehouseName: $warehouseName, returnReason: $returnReason, returnQty: $returnQty, requestedQty: $requestedQty, numberOfGiftItem: $numberOfGiftItem, promotionGiftId: $promotionGiftId, promotionPlanId: $promotionPlanId, promotionInvoiceDetailId: $promotionInvoiceDetailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftItemDTOImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.baseQty, baseQty) || other.baseQty == baseQty) &&
            (identical(other.plannedQty, plannedQty) ||
                other.plannedQty == plannedQty) &&
            (identical(other.saleQty, saleQty) || other.saleQty == saleQty) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.baseUnit, baseUnit) ||
                other.baseUnit == baseUnit) &&
            (identical(other.baseUnits, baseUnits) ||
                other.baseUnits == baseUnits) &&
            const DeepCollectionEquality()
                .equals(other._convertedUnits, _convertedUnits) &&
            (identical(other.currentQty, currentQty) ||
                other.currentQty == currentQty) &&
            (identical(other.currentQtyUnit, currentQtyUnit) ||
                other.currentQtyUnit == currentQtyUnit) &&
            (identical(other.giftName, giftName) ||
                other.giftName == giftName) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.giftItemId, giftItemId) ||
                other.giftItemId == giftItemId) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.returnReason, returnReason) ||
                other.returnReason == returnReason) &&
            (identical(other.returnQty, returnQty) ||
                other.returnQty == returnQty) &&
            (identical(other.requestedQty, requestedQty) ||
                other.requestedQty == requestedQty) &&
            (identical(other.numberOfGiftItem, numberOfGiftItem) ||
                other.numberOfGiftItem == numberOfGiftItem) &&
            (identical(other.promotionGiftId, promotionGiftId) ||
                other.promotionGiftId == promotionGiftId) &&
            (identical(other.promotionPlanId, promotionPlanId) ||
                other.promotionPlanId == promotionPlanId) &&
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
        plannedQty,
        saleQty,
        productId,
        baseUnit,
        baseUnits,
        const DeepCollectionEquality().hash(_convertedUnits),
        currentQty,
        currentQtyUnit,
        giftName,
        productName,
        unitName,
        giftItemId,
        warehouseId,
        warehouseName,
        returnReason,
        returnQty,
        requestedQty,
        numberOfGiftItem,
        promotionGiftId,
        promotionPlanId,
        promotionInvoiceDetailId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftItemDTOImplCopyWith<_$GiftItemDTOImpl> get copyWith =>
      __$$GiftItemDTOImplCopyWithImpl<_$GiftItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftItemDTOImplToJson(
      this,
    );
  }
}

abstract class _GiftItemDTO extends GiftItemDTO {
  const factory _GiftItemDTO(
      {@JsonKey(name: 'unit_id') final int unitId,
      @JsonKey(name: 'base_qty') final int baseQty,
      @JsonKey(name: 'planned_qty') final int plannedQty,
      @JsonKey(name: 'sale_qty') final int saleQty,
      @JsonKey(name: 'product_id') final int productId,
      @JsonKey(name: 'base_unit', includeToJson: false) final String baseUnit,
      @JsonKey(name: 'base_units', includeToJson: false)
      final PromotionProductUnit baseUnits,
      @JsonKey(name: 'converted_units', includeToJson: false)
      final List<PromotionProductUnit> convertedUnits,
      @JsonKey(name: 'current_qty') final int currentQty,
      @JsonKey(name: 'current_qty_unit') final String currentQtyUnit,
      @JsonKey(name: 'gift_name', includeToJson: false) final String giftName,
      @JsonKey(name: 'product_name', includeToJson: false)
      final String productName,
      @JsonKey(name: 'unit_name', includeToJson: false) final String unitName,
      @JsonKey(name: 'gift_item_id') final int giftItemId,
      @JsonKey(name: 'warehouse_id') final int warehouseId,
      @JsonKey(name: 'warehouse_name') final String warehouseName,
      @JsonKey(name: 'return_reason') final String returnReason,
      @JsonKey(name: 'return_qty') final int returnQty,
      @JsonKey(name: 'requested_qty') final int requestedQty,
      @JsonKey(name: 'number_of_gift_item') final int numberOfGiftItem,
      @JsonKey(name: 'marketing_promotion_gift_id') final int promotionGiftId,
      @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
      final int promotionPlanId,
      @JsonKey(name: 'marketing_promotion_invoice_detail_id')
      final int promotionInvoiceDetailId}) = _$GiftItemDTOImpl;
  const _GiftItemDTO._() : super._();

  factory _GiftItemDTO.fromJson(Map<String, dynamic> json) =
      _$GiftItemDTOImpl.fromJson;

  @override
  @JsonKey(name: 'unit_id')
  int get unitId;
  @override
  @JsonKey(name: 'base_qty')
  int get baseQty;
  @override
  @JsonKey(name: 'planned_qty')
  int get plannedQty;
  @override
  @JsonKey(name: 'sale_qty')
  int get saleQty;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'base_unit', includeToJson: false)
  String get baseUnit;
  @override
  @JsonKey(name: 'base_units', includeToJson: false)
  PromotionProductUnit get baseUnits;
  @override
  @JsonKey(name: 'converted_units', includeToJson: false)
  List<PromotionProductUnit> get convertedUnits;
  @override
  @JsonKey(name: 'current_qty')
  int get currentQty;
  @override
  @JsonKey(name: 'current_qty_unit')
  String get currentQtyUnit;
  @override
  @JsonKey(name: 'gift_name', includeToJson: false)
  String get giftName;
  @override
  @JsonKey(name: 'product_name', includeToJson: false)
  String get productName;
  @override
  @JsonKey(name: 'unit_name', includeToJson: false)
  String get unitName;
  @override
  @JsonKey(name: 'gift_item_id')
  int get giftItemId;
  @override
  @JsonKey(name: 'warehouse_id')
  int get warehouseId;
  @override
  @JsonKey(name: 'warehouse_name')
  String get warehouseName;
  @override
  @JsonKey(name: 'return_reason')
  String get returnReason;
  @override
  @JsonKey(name: 'return_qty')
  int get returnQty;
  @override
  @JsonKey(name: 'requested_qty')
  int get requestedQty;
  @override
  @JsonKey(name: 'number_of_gift_item')
  int get numberOfGiftItem;
  @override
  @JsonKey(name: 'marketing_promotion_gift_id')
  int get promotionGiftId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false)
  int get promotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_invoice_detail_id')
  int get promotionInvoiceDetailId;
  @override
  @JsonKey(ignore: true)
  _$$GiftItemDTOImplCopyWith<_$GiftItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
