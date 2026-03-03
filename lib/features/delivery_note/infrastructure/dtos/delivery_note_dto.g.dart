// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryNoteDTOImpl _$$DeliveryNoteDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryNoteDTOImpl(
      goodsDeliveryNoteId:
          (json['goods_delivery_note_id'] as num?)?.toInt() ?? -1,
      goodsRequestNoteId:
          (json['goods_request_note_id'] as num?)?.toInt() ?? -1,
      goodsDeliveryNoteCode: json['goods_delivery_note_code'] as String? ?? "",
      issueDate: json['delivery_note_date'] as String? ?? "",
      deliveryDate: json['delivery_date'] as String? ?? "",
      deliveryCompleteDate: json['delivery_complete_date'] as String?,
      status: (json['status'] as num?)?.toInt() ?? 0,
      referenceId: json['reference_id'] as String? ?? "",
      invoiceDate: json['invoice_date'] as String? ?? "",
      customerFirstName: json['customer_first_name'] as String? ?? "",
      customerAddress: json['customer_address'] as String? ?? "",
      customerLastName: json['customer_last_name'] as String?,
      customerPhone: json['customer_phone'] as String? ?? "",
      businessUnitName: json['business_unit_name'] as String? ?? "",
      businessUnitAddress: json['business_unit_address'] as String? ?? "",
      productDtos: (json['product_detail'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wayName: json['way_name'] as String? ?? '',
      description: json['description'] as String? ?? "",
      signUrl: json['signature'] as String? ?? "",
    );

Map<String, dynamic> _$$DeliveryNoteDTOImplToJson(
        _$DeliveryNoteDTOImpl instance) =>
    <String, dynamic>{
      'goods_delivery_note_id': instance.goodsDeliveryNoteId,
      'goods_request_note_id': instance.goodsRequestNoteId,
      'goods_delivery_note_code': instance.goodsDeliveryNoteCode,
      'delivery_note_date': instance.issueDate,
      'delivery_date': instance.deliveryDate,
      'delivery_complete_date': instance.deliveryCompleteDate,
      'status': instance.status,
      'reference_id': instance.referenceId,
      'invoice_date': instance.invoiceDate,
      'customer_first_name': instance.customerFirstName,
      'customer_address': instance.customerAddress,
      'customer_last_name': instance.customerLastName,
      'customer_phone': instance.customerPhone,
      'business_unit_name': instance.businessUnitName,
      'business_unit_address': instance.businessUnitAddress,
      'product_detail': instance.productDtos.map((e) => e.toJson()).toList(),
      'way_name': instance.wayName,
      'description': instance.description,
      'signature': instance.signUrl,
    };
