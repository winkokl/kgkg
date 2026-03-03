// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionProductDTOImpl _$$PromotionProductDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionProductDTOImpl(
      unitId: (json['unit_id'] as num?)?.toInt() ?? -1,
      baseQty: (json['base_qty'] as num?)?.toInt() ?? 0,
      planQty: (json['plan_qty'] as num?)?.toInt() ?? 0,
      plannedQty: (json['planned_qty'] as num?)?.toInt() ?? 0,
      saleQty: (json['sale_qty'] as num?)?.toInt() ?? 0,
      baseUnit: json['base_unit'],
      currentQty: (json['current_qty'] as num?)?.toInt() ?? 0,
      currentQtyUnit: json['current_qty_unit'] as String? ?? '',
      baseUnits: json['base_units'] == null
          ? const PromotionProductUnit()
          : PromotionProductUnit.fromJson(
              json['base_units'] as Map<String, dynamic>),
      convertedUnits: (json['converted_units'] as List<dynamic>?)
              ?.map((e) =>
                  PromotionProductUnit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      unitName: json['unit_name'] as String? ?? '',
      productId: (json['product_id'] as num?)?.toInt() ?? -1,
      salePrice: (json['sale_price'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      productPrice: (json['product_price'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      productName: json['product_name'] as String? ?? '',
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      warehouseName: json['warehouse_name'] as String? ?? '',
      discountType: json['discount_type'] as String? ?? '',
      requestedQty: (json['requested_qty'] as num?)?.toInt() ?? 0,
      returnQty: (json['return_qty'] as num?)?.toInt() ?? 0,
      returnAmount: (json['return_amount'] as num?)?.toDouble() ?? 0,
      returnReason: json['return_reason'] as String? ?? '',
      netSalePrice: (json['net_sale_price'] as num?)?.toDouble() ?? 0,
      normalDiscount: (json['normal_discount'] as num?)?.toDouble() ?? 0,
      numberOfProduct: (json['number_of_product'] as num?)?.toInt() ?? 0,
      promotionPlanId:
          (json['marketing_promotion_plan_id'] as num?)?.toInt() ?? -1,
      promotionProductId:
          (json['marketing_promotion_product_id'] as num?)?.toInt() ?? -1,
      promotionInvoiceDetailId:
          (json['marketing_promotion_invoice_detail_id'] as num?)?.toInt() ??
              -1,
    );

Map<String, dynamic> _$$PromotionProductDTOImplToJson(
        _$PromotionProductDTOImpl instance) =>
    <String, dynamic>{
      'unit_id': instance.unitId,
      'base_qty': instance.baseQty,
      'planned_qty': instance.plannedQty,
      'sale_qty': instance.saleQty,
      'current_qty': instance.currentQty,
      'current_qty_unit': instance.currentQtyUnit,
      'unit_name': instance.unitName,
      'product_id': instance.productId,
      'price': instance.price,
      'amount': instance.amount,
      'product_name': instance.productName,
      'warehouse_id': instance.warehouseId,
      'warehouse_name': instance.warehouseName,
      'discount_type': instance.discountType,
      'requested_qty': instance.requestedQty,
      'return_qty': instance.returnQty,
      'return_amount': instance.returnAmount,
      'return_reason': instance.returnReason,
      'net_sale_price': instance.netSalePrice,
      'normal_discount': instance.normalDiscount,
      'number_of_product': instance.numberOfProduct,
      'marketing_promotion_product_id': instance.promotionProductId,
      'marketing_promotion_invoice_detail_id':
          instance.promotionInvoiceDetailId,
    };
