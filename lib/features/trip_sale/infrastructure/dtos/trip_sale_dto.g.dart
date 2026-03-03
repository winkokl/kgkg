// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleDTOImpl _$$TripSaleDTOImplFromJson(Map<String, dynamic> json) =>
    _$TripSaleDTOImpl(
      type: (json['type'] as num?)?.toInt() ?? 1,
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      date: json['sales_date'] as String? ?? '',
      salePromotionId: json['sale_promotion_id'] == null
          ? 0
          : _intFromJson(json['sale_promotion_id']),
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      id: (json['trip_sale_id'] as num?)?.toInt() ?? -1,
      tripSaleRequestId: (json['trip_sale_request_id'] as num?)?.toInt(),
      tripProposalId: (json['trip_id'] as num?)?.toInt(),
      tripSaleRequestCode: json['trip_sale_request_code'] as String? ?? '',
      tripProposalCode: json['trip_code'] as String? ?? '',
      code: json['trip_sale_code'] as String? ?? '',
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      paymentTermsId: (json['payment_term_id'] as num?)?.toInt() ?? -1,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt(),
      businessUnitName: json['business_unit_name'] as String? ?? '',
      deleteReason: json['delete_reason'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      procutDto: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderStatus: (json['status'] as num?)?.toInt() ?? -1,
      rejectReason: json['reject_reason'] as String? ?? "",
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      warehouseName: json['warehouse_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TripSaleDTOImplToJson(_$TripSaleDTOImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'sales_date': instance.date,
    'sale_promotion_id': instance.salePromotionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trip_sale_request_id', instance.tripSaleRequestId);
  writeNotNull('trip_id', instance.tripProposalId);
  val['sub_total'] = instance.subtotal;
  val['discount_amount'] = instance.discountAmount;
  val['discount_type'] = instance.discountType;
  val['discount'] = instance.discount;
  val['tax_amount'] = instance.taxAmount;
  val['tax_type'] = instance.taxType;
  val['tax'] = instance.tax;
  val['other_charges'] = instance.otherCharges;
  val['grand_total_amount'] = instance.grandTotal;
  val['payment_type_id'] = instance.paymentTypeId;
  val['payment_term_id'] = instance.paymentTermsId;
  val['customer_id'] = instance.customerId;
  val['business_unit_id'] = instance.businessUnitId;
  val['remark'] = instance.remark;
  val['description'] = instance.description;
  val['products'] = instance.procutDto.map((e) => e.toJson()).toList();
  return val;
}
