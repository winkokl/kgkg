import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/qty_and_unit.dart';
part 'gift_item.freezed.dart';

@freezed
class GiftItem with _$GiftItem implements QtyAndUnit {
  const GiftItem._();
  const factory GiftItem({
    @Default(-1) int unitId,
    @Default(-1) int productId,
    @Default(0) int plannedQty,
    @Default(0) int baseQty,
    @Default(0) int saleQty,
    @Default('') String baseUnit,
    @Default(PromotionProductUnit()) PromotionProductUnit baseUnits,
    @Default([]) List<PromotionProductUnit> convertedUnits,
    @Default(0) int currentQty,
    PromotionProductUnit? currentQtyUnit,
    @Default('') String giftName,
    @Default('') String productName,
    @Default('') String unitName,
    @Default(-1) int giftItemId,
    @Default(-1) int warehouseId,
    @Default('') String warehouseName,
    @Default(0) int requestedQty,
    @Default(0) int numberOfGiftItem,
    @Default(-1) int promotionGiftId,
    @Default(-1) int promotionPlanId,
    @Default('') String returnReason,
    @Default(0) int returnQty,
    @Default(-1) int promotionInvoiceDetailId,
  }) = _GiftItem;

  @override
  GiftItem qtyAmdUnitcopyWith({int? currentQty, PromotionProductUnit? currentQtyUnit}) {
    return copyWith(
      currentQty: currentQty ?? this.currentQty,
      currentQtyUnit: currentQtyUnit ?? this.currentQtyUnit,
    );
  }
}
