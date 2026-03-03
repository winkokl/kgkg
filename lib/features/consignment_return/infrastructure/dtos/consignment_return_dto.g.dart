// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsignmentReturnDTOImpl _$$ConsignmentReturnDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsignmentReturnDTOImpl(
      id: (json['consignment_return_id'] as num?)?.toInt() ?? -1,
      consignmentContractId:
          (json['consignment_contract_id'] as num?)?.toInt() ?? -1,
      customerId: (json['customer_id'] as num?)?.toInt() ?? -1,
      customerFirstName: json['customer_first_name'] as String? ?? "",
      returnDate: json['return_date'] as String? ?? "",
      code: json['consignment_return_code'] as String? ?? "",
      contractCode: json['consignment_contract_code'] as String? ?? "",
      productDtos: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remark: json['remark'] as String? ?? "",
      description: json['description'] as String? ?? "",
      otherChargesAmount: json['other_charges'] ?? 0,
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

Map<String, dynamic> _$$ConsignmentReturnDTOImplToJson(
        _$ConsignmentReturnDTOImpl instance) =>
    <String, dynamic>{
      'consignment_contract_id': instance.consignmentContractId,
      'return_date': instance.returnDate,
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
