// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_approval_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentApprovalDTOImpl _$$ConsignmentApprovalDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsignmentApprovalDTOImpl(
      customerName: json['customer_first_name'] as String? ?? '',
      paymentTypeName: json['payment_type_name'] as String? ?? '',
      paymentTermName: json['payment_terms'] as String? ?? '',
      date: json['sales_date'] as String? ?? '',
      formattedDate: json['formatted_sales_date'] as String? ?? '',
      id: (json['consignment_id'] as num?)?.toInt() ?? -1,
      consignmentRequestId: (json['consignment_request_id'] as num?)?.toInt(),
      consignmentRequestCode: json['consignment_request_code'] as String? ?? '',
      code: json['consignment_code'] as String? ?? '',
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
      deleteReason: json['delete_reason'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      description: json['description'] as String? ?? '',
      procutDto: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderStatus: (json['order_status'] as num?)?.toInt() ?? -1,
      rejectReason: json['reject_reason'] as String? ?? "",
      businessUnitName: json['business_unit_name'] as String? ?? '',
    );

Map<String, dynamic> _$$ConsignmentApprovalDTOImplToJson(
    _$ConsignmentApprovalDTOImpl instance) {
  final val = <String, dynamic>{
    'sales_date': instance.date,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consignment_request_id', instance.consignmentRequestId);
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
  val['remark'] = instance.remark;
  val['description'] = instance.description;
  val['products'] = instance.procutDto.map((e) => e.toJson()).toList();
  return val;
}
