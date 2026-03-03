// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentInvoiceDTOImpl _$$ConsignmentInvoiceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsignmentInvoiceDTOImpl(
      id: (json['consignment_invoice_id'] as num?)?.toInt() ?? -1,
      consignmentTypeId: (json['consignment_type_id'] as num?)?.toInt() ?? -1,
      code: json['consignment_invoice_code'] as String? ?? "",
      invoiceDate: json['invoice_date'] as String? ?? "",
      dueDate: json['due_date'] as String? ?? "",
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_term'] as String? ?? '',
      saleDate: json['sales_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      consignmentId: (json['consignment_id'] as num?)?.toInt() ?? -1,
      consignmentCode: json['consignment_code'] as String? ?? "",
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      businessUnitId: (json['business_unit_id'] as num?)?.toInt(),
      businessUnitName: json['business_unit_name'] as String? ?? '',
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
      paymentReceivedHistoryDto:
          (json['payment_receive_data'] as List<dynamic>?)
                  ?.map((e) =>
                      ConsignmentReceiptDTO.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
      regionId: (json['region_id'] as num?)?.toInt() ?? -1,
      regionName: json['region_name'] as String? ?? "",
      consignmentMethod: (json['consignment_method'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$ConsignmentInvoiceDTOImplToJson(
        _$ConsignmentInvoiceDTOImpl instance) =>
    <String, dynamic>{
      'consignment_type_id': instance.consignmentTypeId,
      'invoice_date': instance.invoiceDate,
      'due_date': instance.dueDate,
      'consignment_id': instance.consignmentId,
      'business_unit_id': instance.businessUnitId,
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
      'remark': instance.remark,
      'description': instance.description,
      'products': instance.procutDto.map((e) => e.toJson()).toList(),
      'region_id': instance.regionId,
      'consignment_method': instance.consignmentMethod,
    };
