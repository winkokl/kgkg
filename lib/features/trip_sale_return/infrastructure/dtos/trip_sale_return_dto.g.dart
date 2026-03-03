// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleReturnDTOImpl _$$TripSaleReturnDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripSaleReturnDTOImpl(
      id: (json['trip_sale_return_id'] as num?)?.toInt() ?? -1,
      tripSaleId: (json['trip_sale_id'] as num?)?.toInt() ?? -1,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      customerFirstName: json['customer_first_name'] as String? ?? "",
      returnDate: json['return_date'] as String? ?? "",
      type: json['type'] as String? ?? "",
      code: json['trip_sale_return_code'] as String? ?? "",
      tripSaleRequestCode: json['trip_sale_request_code'] as String? ?? "",
      tripSaleRequestId: json['trip_sale_request_id'] as String? ?? "",
      invoiceCode: json['trip_sale_invoice_code'] as String? ?? "",
      productDtos: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remark: json['remark'] as String? ?? "",
      description: json['description'] as String? ?? "",
      otherChargesAmount: (json['other_charges'] as num?)?.toDouble() ?? 0,
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      grandtotal: (json['grand_total_amount'] as num?)?.toDouble() ?? 0,
      returnDeductMethod: json['return_deduct_method'] as String? ?? "",
      returnDeductAmount:
          (json['return_deduct_amount'] as num?)?.toDouble() ?? 0,
      totalReturnAmount: (json['total_return_amount'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paymentStatus: (json['status'] as num?)?.toInt() ?? -1,
      returnReasonId: (json['return_reason_id'] as num?)?.toInt() ?? -1,
      returnReasonName: json['reason_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TripSaleReturnDTOImplToJson(
        _$TripSaleReturnDTOImpl instance) =>
    <String, dynamic>{
      'trip_sale_id': instance.tripSaleId,
      'return_date': instance.returnDate,
      'type': instance.type,
      'products': instance.productDtos.map((e) => e.toJson()).toList(),
      'remark': instance.remark,
      'description': instance.description,
      'other_charges': instance.otherChargesAmount,
      'sub_total': instance.subtotal,
      'grand_total_amount': instance.grandtotal,
      'return_deduct_method': instance.returnDeductMethod,
      'return_deduct_amount': instance.returnDeductAmount,
      'total_return_amount': instance.totalReturnAmount,
      'return_reason_id': instance.returnReasonId,
    };
