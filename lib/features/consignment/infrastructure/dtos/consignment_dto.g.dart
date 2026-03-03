// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentDTOImpl _$$ConsignmentDTOImplFromJson(Map<String, dynamic> json) =>
    _$ConsignmentDTOImpl(
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      date: json['sales_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      id: (json['consignment_id'] as num?)?.toInt() ?? -1,
      consignmentContractId:
          (json['consignment_contract_id'] as num?)?.toInt() ?? -1,
      consignmentContractCode: json['consignment_code'] as String? ?? '',
      code: json['consignment_code'] as String? ?? '',
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
      procutDto: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderStatus: (json['status'] as num?)?.toInt() ?? -1,
      rejectReason: json['reject_reason'] as String? ?? "",
      regionId: (json['region_id'] as num?)?.toInt() ?? -1,
      regionName: json['region_name'] as String? ?? "",
      consignmentMethod: (json['consignment_method'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$ConsignmentDTOImplToJson(
        _$ConsignmentDTOImpl instance) =>
    <String, dynamic>{
      'sales_date': instance.date,
      'consignment_contract_id': instance.consignmentContractId,
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
      'payment_term_id': instance.paymentTermsId,
      'customer_id': instance.customerId,
      'business_unit_id': instance.businessUnitId,
      'remark': instance.remark,
      'description': instance.description,
      'products': instance.procutDto.map((e) => e.toJson()).toList(),
      'region_id': instance.regionId,
      'consignment_method': instance.consignmentMethod,
    };
