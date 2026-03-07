// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDTOImpl _$$ProductDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductDTOImpl(
      id: (json['product_id'] as num?)?.toInt() ?? -1,
      secondarySaleReturnDetailId:
          (json['secondary_sales_return_detail_id'] as num?)?.toInt(),
      code: json['product_code'] as String? ?? "",
      categoryName: json['product_category_name'] as String? ?? "",
      apiLevel: json['api_level'] as String? ?? "",
      typeName: json['product_type_name'] as String? ?? "",
      barcode: json['barcode'] as String? ?? "",
      name: json['product_name'] as String? ?? "",
      unitId: (json['unit_id'] as num?)?.toInt() ?? -1,
      unitTypeId: (json['unit_type_id'] as num?)?.toInt() ?? -1,
      unitName: json['unit_name'] as String? ?? "",
      quantity: (json['qty'] as num?)?.toInt() ?? 0,
      consignmentContractQty:
          (json['consignment_contract_qty'] as num?)?.toInt() ?? 0,
      consignmentContractAmount:
          (json['consignment_contract_amount'] as num?)?.toDouble() ?? 0,
      salePrice: (json['sales_price'] as num?)?.toDouble() ?? 0,
      primarySalePrice: (json['primary_sales_price'] as num?)?.toDouble() ?? 0,
      secondarySalePrice:
          (json['secondary_sales_price'] as num?)?.toDouble() ?? 0,
      consignmentSalePrice:
          (json['consignment_sales_price'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? "",
      normalDiscount: (json['normal_discount'] as num?)?.toDouble(),
      normalDiscountType: json['normal_discount_type'] as String?,
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? "",
      saleTax: (json['secondary_sales_tax'] as num?)?.toDouble() ?? 0,
      saleTaxType: json['secondary_sales_tax_type'] as String? ?? "",
      totalAmount: (json['total_amount'] as num?)?.toDouble() ?? 0,
      returnQty: (json['return_qty'] as num?)?.toInt(),
      availableReturnQty: (json['available_return_qty'] as num?)?.toInt() ?? 0,
      availableQty: (json['available_qty'] as num?)?.toInt() ?? 0,
      returnAmount: (json['return_amount'] as num?)?.toDouble(),
      warehouseId: (json['warehouse_id'] as num?)?.toInt(),
      warehouseName: json['warehouse_name'] as String?,
      proposalQty: (json['proposal_qty'] as num?)?.toInt(),
      totalIssuedQty: (json['total_issued_qty'] as num?)?.toInt() ?? 0,
      issuedBalanceQty: (json['issued_balance_qty'] as num?)?.toInt() ?? 0,
      issueQty: (json['issue_qty'] as num?)?.toInt() ?? 0,
      requestQty: (json['request_qty'] as num?)?.toInt() ?? 0,
      terminateSaleQty: (json['terminate_sale_qty'] as num?)?.toInt() ?? 0,
      unitTypeDTOs: (json['unit_type_data'] as List<dynamic>?)
              ?.map((e) => UnitTypeDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isPromotionItem: json['is_promotion_item'] == null
          ? false
          : _boolfromJson(json['is_promotion_item']),
      salePromotionDetailId:
          (json['sale_promotion_detail_id'] as num?)?.toInt(),
      promotionDetailDTO: json['is_promotion_item_list'] == null
          ? null
          : PromotionDetailDTO.fromJson(
              json['is_promotion_item_list'] as Map<String, dynamic>),
      itemBackProduct: json['item_back_product'] == null
          ? null
          : InfoDTO.fromJson(json['item_back_product'] as Map<String, dynamic>),
      productCodePrefix: json['product_code_prefix'] as String? ?? "",
      availableQtyFromWarehouse:
          (json['available_quantity'] as num?)?.toInt() ?? 0,
      promoDiscount: json['_promo_discount'] ?? null,
      promoDiscountType: json['_promo_discount_type'] ?? null,
      promoBonus: json['_promo_bonus'] ?? null,
      promoCashback: json['_promo_cashback'] ?? null,
    );

Map<String, dynamic> _$$ProductDTOImplToJson(_$ProductDTOImpl instance) {
  final val = <String, dynamic>{
    'product_id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'secondary_sales_return_detail_id', instance.secondarySaleReturnDetailId);
  val['unit_id'] = instance.unitId;
  val['qty'] = instance.quantity;
  writeNotNull('consignment_contract_qty', instance.consignmentContractQty);
  val['sales_price'] = instance.salePrice;
  val['amount'] = instance.amount;
  val['discount_amount'] = instance.discountAmount;
  val['discount'] = instance.discount;
  val['discount_type'] = instance.discountType;
  writeNotNull('normal_discount', instance.normalDiscount);
  writeNotNull('normal_discount_type', instance.normalDiscountType);
  val['tax_amount'] = instance.taxAmount;
  val['tax'] = instance.tax;
  val['tax_type'] = instance.taxType;
  val['total_amount'] = instance.totalAmount;
  writeNotNull('return_qty', instance.returnQty);
  val['available_qty'] = instance.availableQty;
  writeNotNull('return_amount', instance.returnAmount);
  val['warehouse_id'] = instance.warehouseId;
  val['is_promotion_item'] = _booltoJson(instance.isPromotionItem);
  val['item_back_product'] = instance.itemBackProduct?.toJson();
  writeNotNull('_promo_discount', instance.promoDiscount);
  writeNotNull('_promo_discount_type', instance.promoDiscountType);
  writeNotNull('_promo_bonus', instance.promoBonus);
  writeNotNull('_promo_cashback', instance.promoCashback);
  return val;
}
