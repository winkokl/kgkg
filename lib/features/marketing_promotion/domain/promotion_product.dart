import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/qty_and_unit.dart';

part 'promotion_product.freezed.dart';

@freezed
class PromotionProduct with _$PromotionProduct implements QtyAndUnit {
  const PromotionProduct._();
  const factory PromotionProduct({
    @Default(-1) int unitId,
    @Default(0) int baseQty,
    @Default(0) int planQty,
    @Default(0) int plannedQty,
    @Default(0) int saleQty,
    @Default('') String baseUnit,
    @Default(0) int currentQty,
    PromotionProductUnit? currentQtyUnit,
    @Default(PromotionProductUnit()) PromotionProductUnit baseUnits,
    @Default([]) List<PromotionProductUnit> convertedUnits,
    @Default('') String unitName,
    @Default(-1) int productId,
    @Default(0) double salePrice,
    @Default(0) double productPrice,
    @Default(0) double price,
    @Default(0) double amount,
    @Default('') String productName,
    @Default(-1) int warehouseId,
    @Default('') String warehouseName,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) int requestedQty,
    @Default(0) int returnQty,
    @Default(0) double returnAmount,
    @Default('') String returnReason,
    @Default(0) double netSalePrice,
    @Default(0) double normalDiscount,
    @Default(0) int numberOfProduct,
    @Default(-1) int promotionPlanId,
    @Default(-1) int promotionProductId,
    @Default(-1) int promotionInvoiceDetailId,
  }) = _PromotionProduct;

  @override
  PromotionProduct qtyAmdUnitcopyWith({int? currentQty, PromotionProductUnit? currentQtyUnit}) {
    return copyWith(
      currentQty: currentQty ?? this.currentQty,
      currentQtyUnit: currentQtyUnit ?? this.currentQtyUnit,
    );
  }
}
