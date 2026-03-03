// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftItemDTOImpl _$$GiftItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$GiftItemDTOImpl(
      unitId: (json['unit_id'] as num?)?.toInt() ?? -1,
      baseQty: (json['base_qty'] as num?)?.toInt() ?? 0,
      plannedQty: (json['planned_qty'] as num?)?.toInt() ?? 0,
      saleQty: (json['sale_qty'] as num?)?.toInt() ?? 0,
      productId: (json['product_id'] as num?)?.toInt() ?? -1,
      baseUnit: json['base_unit'] as String? ?? '',
      baseUnits: json['base_units'] == null
          ? const PromotionProductUnit()
          : PromotionProductUnit.fromJson(
              json['base_units'] as Map<String, dynamic>),
      convertedUnits: (json['converted_units'] as List<dynamic>?)
              ?.map((e) =>
                  PromotionProductUnit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentQty: (json['current_qty'] as num?)?.toInt() ?? 0,
      currentQtyUnit: json['current_qty_unit'] as String? ?? '',
      giftName: json['gift_name'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      unitName: json['unit_name'] as String? ?? '',
      giftItemId: (json['gift_item_id'] as num?)?.toInt() ?? -1,
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      warehouseName: json['warehouse_name'] as String? ?? '',
      returnReason: json['return_reason'] as String? ?? '',
      returnQty: (json['return_qty'] as num?)?.toInt() ?? 0,
      requestedQty: (json['requested_qty'] as num?)?.toInt() ?? 0,
      numberOfGiftItem: (json['number_of_gift_item'] as num?)?.toInt() ?? 0,
      promotionGiftId:
          (json['marketing_promotion_gift_id'] as num?)?.toInt() ?? -1,
      promotionPlanId:
          (json['marketing_promotion_plan_id'] as num?)?.toInt() ?? -1,
      promotionInvoiceDetailId:
          (json['marketing_promotion_invoice_detail_id'] as num?)?.toInt() ??
              -1,
    );

Map<String, dynamic> _$$GiftItemDTOImplToJson(_$GiftItemDTOImpl instance) =>
    <String, dynamic>{
      'unit_id': instance.unitId,
      'base_qty': instance.baseQty,
      'planned_qty': instance.plannedQty,
      'sale_qty': instance.saleQty,
      'product_id': instance.productId,
      'current_qty': instance.currentQty,
      'current_qty_unit': instance.currentQtyUnit,
      'gift_item_id': instance.giftItemId,
      'warehouse_id': instance.warehouseId,
      'warehouse_name': instance.warehouseName,
      'return_reason': instance.returnReason,
      'return_qty': instance.returnQty,
      'requested_qty': instance.requestedQty,
      'number_of_gift_item': instance.numberOfGiftItem,
      'marketing_promotion_gift_id': instance.promotionGiftId,
      'marketing_promotion_invoice_detail_id':
          instance.promotionInvoiceDetailId,
    };
