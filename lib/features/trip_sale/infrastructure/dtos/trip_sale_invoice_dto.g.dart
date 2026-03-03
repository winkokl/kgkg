// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_sale_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripSaleInvoiceDTOImpl _$$TripSaleInvoiceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripSaleInvoiceDTOImpl(
      id: (json['trip_sale_invoice_id'] as num?)?.toInt() ?? -1,
      code: json['trip_sale_invoice_code'] as String? ?? "",
      invoiceDate: json['invoice_date'] as String? ?? "",
      dueDate: json['due_date'] as String? ?? "",
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_term'] as String? ?? '',
      saleDate: json['sales_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      saleOrderId: (json['trip_sale_id'] as num?)?.toInt() ?? -1,
      tripSaleId: json['trip_sale_request_code'] as String? ?? "",
      saleOrderCode: json['trip_sale_code'] as String? ?? "",
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      subtotal: (json['sub_total'] as num?)?.toDouble() ?? 0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      discountType: json['discount_type'] as String? ?? '',
      taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      taxType: json['tax_type'] as String? ?? '',
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
      warehouseId: (json['warehouse_id'] as num?)?.toInt() ?? -1,
      warehouseName: json['warehouse_name'] as String? ?? '',
      procutDto: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentStatus: (json['status'] as num?)?.toInt() ?? -1,
      paymentReceivedHistoryDto: (json['payment_receive_data']
                  as List<dynamic>?)
              ?.map(
                  (e) => TripSaleReceiptDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      salePromotionId: json['sale_promotion_id'] == null
          ? 0
          : _intFromJson(json['sale_promotion_id']),
    );

Map<String, dynamic> _$$TripSaleInvoiceDTOImplToJson(
        _$TripSaleInvoiceDTOImpl instance) =>
    <String, dynamic>{
      'invoice_date': instance.invoiceDate,
      'due_date': instance.dueDate,
      'sub_total': instance.subtotal,
      'discount_amount': instance.discountAmount,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'tax_amount': instance.taxAmount,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'other_charges': instance.otherCharges,
      'grand_total_amount': instance.grandTotal,
      'payment_type_id': instance.paymentTypeId,
      'customer_id': instance.customerId,
      'business_unit_id': instance.businessUnitId,
      'remark': instance.remark,
      'description': instance.description,
      'products': instance.procutDto.map((e) => e.toJson()).toList(),
      'sale_promotion_id': instance.salePromotionId,
    };
