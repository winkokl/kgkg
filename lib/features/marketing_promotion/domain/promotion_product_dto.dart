import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';

part 'promotion_product_dto.freezed.dart';
part 'promotion_product_dto.g.dart';

//     {"product_name":"SUPER BRAKE FLUID",
//     "unit_name":"0.5L Tins",
//     "marketing_promotion_product_id":34,
//     "product_id":275,
//     "unit_id":78,
//     "number_of_product":100,
//     "normal_discount":0,
//     "discount_type":"AMT",
//     "current_qty":1,
//     "base_qty":100,
//     "current_qty_unit":"78",
//     "requested_qty":100,
//     "amount":2220000,
//     "price":22200,
//     "warehouse_id":3,
//     "warehouse_name":"YGN 2"}],
// invoice ------------------------------------
//       "marketing_promotion_product_id": 37,
//       "product_id": 298,
//       "unit_id": 92,
//       "number_of_product": 11,
//       "normal_discount": 0,
//       "discount_type": "AMT",
//       "sale_qty": 1,
//       "net_sale_price": 4000,
//       "amount": 4000

// differ field = > sale_qty & net_sale_amount

@freezed
class PromotionProductDTO with _$PromotionProductDTO {
  const PromotionProductDTO._();
  const factory PromotionProductDTO({
    @JsonKey(name: 'unit_id') @Default(-1) int unitId,
    @JsonKey(name: 'base_qty') @Default(0) int baseQty,
    @JsonKey(name: 'plan_qty', includeToJson: false) @Default(0) int planQty,
    @JsonKey(name: 'planned_qty') @Default(0) int plannedQty,
    @JsonKey(name: 'sale_qty') @Default(0) int saleQty,
    @JsonKey(name: 'base_unit', includeToJson: false) dynamic baseUnit,
    @JsonKey(name: 'current_qty') @Default(0) int currentQty,
    @JsonKey(name: 'current_qty_unit') @Default('') String currentQtyUnit,
    @JsonKey(name: 'base_units', includeToJson: false) @Default(PromotionProductUnit()) PromotionProductUnit baseUnits,
    @JsonKey(name: 'converted_units', includeToJson: false) @Default([]) List<PromotionProductUnit> convertedUnits,
    @JsonKey(name: 'unit_name') @Default('') String unitName,
    @JsonKey(name: 'product_id') @Default(-1) int productId,
    @JsonKey(name: 'sale_price', includeToJson: false) @Default(0) double salePrice,
    @JsonKey(name: 'price') @Default(0) double price,
    @JsonKey(name: 'product_price', includeToJson: false) @Default(0) double productPrice,
    @JsonKey(name: 'amount') @Default(0) double amount,
    @JsonKey(name: 'product_name') @Default('') String productName,
    @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
    @JsonKey(name: 'warehouse_name') @Default('') String warehouseName,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'requested_qty') @Default(0) int requestedQty,
    @JsonKey(name: 'return_qty') @Default(0) int returnQty,
    @JsonKey(name: 'return_amount') @Default(0) double returnAmount,
    @JsonKey(name: 'return_reason') @Default('') String returnReason,
    @JsonKey(name: 'net_sale_price') @Default(0) double netSalePrice,
    @JsonKey(name: 'normal_discount') @Default(0) double normalDiscount,
    @JsonKey(name: 'number_of_product') @Default(0) int numberOfProduct,
    @JsonKey(name: 'marketing_promotion_plan_id', includeToJson: false) @Default(-1) int promotionPlanId,
    @JsonKey(name: 'marketing_promotion_product_id') @Default(-1) int promotionProductId,
    @JsonKey(name: 'marketing_promotion_invoice_detail_id') @Default(-1) int promotionInvoiceDetailId,
  }) = _PromotionProductDTO;

  factory PromotionProductDTO.fromJson(Map<String, dynamic> json) => _$PromotionProductDTOFromJson(json);

  factory PromotionProductDTO.fromDomain(PromotionProduct promotionProduct) {
    return PromotionProductDTO(
      unitId: promotionProduct.unitId,
      baseQty: promotionProduct.baseQty,
      saleQty: promotionProduct.saleQty,
      netSalePrice: promotionProduct.netSalePrice,
      currentQty: promotionProduct.currentQty,
      currentQtyUnit: promotionProduct.currentQtyUnit == null ? '' : promotionProduct.currentQtyUnit!.value.toString(),
      unitName: promotionProduct.unitName,
      productId: promotionProduct.productId,
      price: promotionProduct.productPrice,
      amount: promotionProduct.amount,
      productName: promotionProduct.productName,
      warehouseId: promotionProduct.warehouseId,
      warehouseName: promotionProduct.warehouseName,
      discountType: promotionProduct.discountType.name,
      requestedQty: promotionProduct.requestedQty,
      normalDiscount: promotionProduct.normalDiscount,
      numberOfProduct: promotionProduct.numberOfProduct,
      promotionProductId: promotionProduct.promotionProductId,
      promotionInvoiceDetailId: promotionProduct.promotionInvoiceDetailId,
      returnQty: promotionProduct.returnQty,
      returnAmount: promotionProduct.returnAmount,
      returnReason: promotionProduct.returnReason,
      plannedQty: promotionProduct.plannedQty,
    );
  }

  PromotionProduct toDomain() {
    return PromotionProduct(
      unitId: unitId,
      baseQty: baseQty,
      planQty: planQty,
      saleQty: saleQty,
      currentQty: currentQty,
      baseUnit: baseUnit.toString(),
      baseUnits: baseUnits,
      convertedUnits: baseUnits.label.isEmpty ? convertedUnits : [baseUnits, ...convertedUnits],
      unitName: unitName,
      productId: productId,
      salePrice: salePrice,
      productPrice: productPrice,
      amount: amount,
      productName: productName,
      warehouseId: warehouseId,
      warehouseName: warehouseName,
      discountType: AmountOrPercentStatus.fromName(discountType),
      requestedQty: requestedQty,
      netSalePrice: netSalePrice,
      normalDiscount: normalDiscount,
      numberOfProduct: numberOfProduct,
      promotionPlanId: promotionPlanId,
      promotionProductId: promotionProductId,
      promotionInvoiceDetailId: promotionInvoiceDetailId,
      returnQty: returnQty,
      returnAmount: returnAmount,
      returnReason: returnReason,
      price: price,
      plannedQty: plannedQty,
    );
  }
}
