// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoDTOImpl _$$InfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$InfoDTOImpl(
      item: (json['item'] as num?)?.toInt() ?? -1,
      itemName: json['item_name'] as String? ?? "",
      bonus: (json['bonus'] as num?)?.toDouble() ?? 0,
      cashback: (json['cashback'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      itemQty: (json['item_qty'] as num?)?.toInt() ?? 0,
      bonusAmt: (json['bonus_amt'] as num?)?.toDouble() ?? 0,
      itemUnit: (json['item_unit'] as num?)?.toInt() ?? -1,
      itemUnitName: json['item_unit_name'] as String? ?? "",
      bonusType: json['bonus_type'] as String? ?? "",
      cashbackAmt: (json['cashback_amt'] as num?)?.toDouble() ?? 0,
      discountAmt: (json['discount_amt'] as num?)?.toDouble() ?? 0,
      cashbackType: json['cashback_type'] as String? ?? "",
      discountType: json['discount_type'] as String? ?? "",
      saleRangeTo: (json['sale_range_to'] as num?)?.toDouble() ?? 0,
      saleRangeFrom: (json['sale_range_from'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$InfoDTOImplToJson(_$InfoDTOImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'item_name': instance.itemName,
      'bonus': instance.bonus,
      'cashback': instance.cashback,
      'discount': instance.discount,
      'item_qty': instance.itemQty,
      'bonus_amt': instance.bonusAmt,
      'item_unit': instance.itemUnit,
      'item_unit_name': instance.itemUnitName,
      'bonus_type': instance.bonusType,
      'cashback_amt': instance.cashbackAmt,
      'discount_amt': instance.discountAmt,
      'cashback_type': instance.cashbackType,
      'discount_type': instance.discountType,
      'sale_range_to': instance.saleRangeTo,
      'sale_range_from': instance.saleRangeFrom,
    };
