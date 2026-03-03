import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';
part 'gift_item_dto.freezed.dart';
part 'gift_item_dto.g.dart';

//         {"marketing_promotion_gift_id":19,
//         "gift_item_id":275,
//         "unit_id":78,
//         "number_of_gift_item":100,
//         "current_qty":1,
//         "current_qty_unit":"78",
//         "requested_qty":100,
//         "base_qty":100,
//         "warehouse_id":3,
//         "warehouse_name":"YGN 2"}]},

// invoice ------------------------------------

//       "marketing_promotion_gift_id": 21,
//       "gift_item_id": 298,
//       "unit_id": 92,
//       "number_of_gift_item": 10,
//       "return_reason": "fghgh",
//       "sale_qty": "1"
//     },

@freezed
class GiftItemDTO with _$GiftItemDTO {
  const GiftItemDTO._();
  const factory GiftItemDTO({
    @JsonKey(name: 'unit_id') @Default(-1) int unitId,
    @JsonKey(name: 'base_qty') @Default(0) int baseQty,
    @JsonKey(name: 'planned_qty') @Default(0) int plannedQty,
    @JsonKey(name: 'sale_qty') @Default(0) int saleQty,
    @JsonKey(name: 'product_id') @Default(-1) int productId,
    @JsonKey(name: 'base_unit', includeToJson: false) @Default('') String baseUnit,
    @JsonKey(name: 'base_units', includeToJson: false) @Default(PromotionProductUnit()) PromotionProductUnit baseUnits,
    @JsonKey(name: 'converted_units', includeToJson: false) @Default([]) List<PromotionProductUnit> convertedUnits,
    @JsonKey(name: 'current_qty') @Default(0) int currentQty,
    @JsonKey(name: 'current_qty_unit') @Default('') String currentQtyUnit,
    @JsonKey(name: 'gift_name', includeToJson: false) @Default('') String giftName,
    @JsonKey(name: 'product_name', includeToJson: false) @Default('') String productName,
    @JsonKey(name: 'unit_name', includeToJson: false) @Default('') String unitName,
    @JsonKey(name: 'gift_item_id') @Default(-1) int giftItemId,
    @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
    @JsonKey(name: 'warehouse_name') @Default('') String warehouseName,
    @JsonKey(name: 'return_reason') @Default('') String returnReason,
    @JsonKey(name: 'return_qty') @Default(0) int returnQty,
    @JsonKey(name: 'requested_qty') @Default(0) int requestedQty,
    @JsonKey(name: 'number_of_gift_item') @Default(0) int numberOfGiftItem,
    @JsonKey(name: 'marketing_promotion_gift_id') @Default(-1) int promotionGiftId,
    @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false) @Default(-1) int promotionPlanId,
    @JsonKey(name: 'marketing_promotion_invoice_detail_id') @Default(-1) int promotionInvoiceDetailId,
  }) = _GiftItemDTO;

  factory GiftItemDTO.fromJson(Map<String, dynamic> json) => _$GiftItemDTOFromJson(json);

  factory GiftItemDTO.fromDomain(GiftItem giftItem) {
    return GiftItemDTO(
      unitId: giftItem.unitId,
      baseQty: giftItem.baseQty,
      saleQty: giftItem.saleQty,
      baseUnit: giftItem.baseUnit,
      currentQty: giftItem.currentQty,
      currentQtyUnit: giftItem.currentQtyUnit == null ? '' : giftItem.currentQtyUnit!.value.toString(),
      giftItemId: giftItem.giftItemId,
      warehouseId: giftItem.warehouseId,
      warehouseName: giftItem.warehouseName,
      requestedQty: giftItem.requestedQty,
      numberOfGiftItem: giftItem.numberOfGiftItem,
      promotionGiftId: giftItem.promotionGiftId,
      returnReason: giftItem.returnReason,
      promotionInvoiceDetailId: giftItem.promotionInvoiceDetailId,
      returnQty: giftItem.returnQty,
      productId: giftItem.productId,
      plannedQty: giftItem.plannedQty,
    );
  }

  GiftItem toDomain() {
    return GiftItem(
      unitId: unitId,
      plannedQty: plannedQty,
      productId: productId,
      baseQty: baseQty,
      saleQty: saleQty,
      baseUnit: baseUnit,
      baseUnits: baseUnits,
      convertedUnits: baseUnits.label.isEmpty ? convertedUnits : [baseUnits, ...convertedUnits],
      giftName: giftName,
      productName: productName,
      unitName: unitName,
      giftItemId: giftItemId,
      warehouseId: warehouseId,
      warehouseName: warehouseName,
      requestedQty: requestedQty,
      numberOfGiftItem: numberOfGiftItem,
      promotionGiftId: promotionGiftId,
      promotionPlanId: promotionPlanId,
      returnReason: returnReason,
      returnQty: returnQty,
      promotionInvoiceDetailId: promotionInvoiceDetailId,
    );
  }
}
