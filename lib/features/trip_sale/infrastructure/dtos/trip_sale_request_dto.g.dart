// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleRequestDTOImpl _$$TripSaleRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripSaleRequestDTOImpl(
      id: (json['trip_goods_request_id'] as num?)?.toInt() ?? -1,
      code: json['trip_sale_request_code'] as String? ?? "",
      tripName: json['trip_name'] as String? ?? "",
      date: json['request_date'] as String? ?? "",
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      warehouseName: json['warehouse_name'] as String? ?? "",
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
      otherCharges: (json['other_charges'] as num?)?.toDouble() ?? 0,
      grandTotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      paymentTypeId: (json['payment_type_id'] as num?)?.toInt() ?? -1,
      paymentTermsId: (json['payment_terms_id'] as num?)?.toInt() ?? -1,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      deleteReason: json['delete_reason'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      procutDto: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: (json['status'] as num?)?.toInt() ?? -1,
      rejectReason: json['reject_reason'] as String? ?? "",
      createdBy: (json['created_by'] as num?)?.toInt() ?? -1,
      tripId: (json['trip_id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$TripSaleRequestDTOImplToJson(
        _$TripSaleRequestDTOImpl instance) =>
    <String, dynamic>{
      'trip_goods_request_id': instance.id,
      'trip_sale_request_code': instance.code,
      'trip_name': instance.tripName,
      'request_date': instance.date,
      'warehouse_id': instance.warehouseId,
      'warehouse_name': instance.warehouseName,
      'sub_total': instance.subtotal,
      'discount_amount': instance.discountAmount,
      'discount_type': instance.discountType,
      'tax_amount': instance.taxAmount,
      'tax_type': instance.taxType,
      'other_charges': instance.otherCharges,
      'grand_total_amount': instance.grandTotal,
      'payment_type_id': instance.paymentTypeId,
      'payment_terms_id': instance.paymentTermsId,
      'customer_id': instance.customerId,
      'remark': instance.remark,
      'description': instance.description,
      'products': instance.procutDto.map((e) => e.toJson()).toList(),
    };
