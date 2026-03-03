// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MakePaymentDTOImpl _$$MakePaymentDTOImplFromJson(Map<String, dynamic> json) =>
    _$MakePaymentDTOImpl(
      returnCode: json['marketing_promotion_plan_return_code'] as String? ?? "",
      returnId:
          (json['marketing_promotion_plan_return_id'] as num?)?.toInt() ?? -1,
      returnDate: json['return_date'] as String? ?? "",
      paymentDate: json['payment_date'] as String? ?? "",
      totalAmount: (json['total_amt'] as num?)?.toDouble() ?? 0,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      paidAmount: (json['paid_amt'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MakePaymentDTOImplToJson(
        _$MakePaymentDTOImpl instance) =>
    <String, dynamic>{
      'marketing_promotion_plan_return_code': instance.returnCode,
      'marketing_promotion_plan_return_id': instance.returnId,
      'return_date': instance.returnDate,
      'payment_date': instance.paymentDate,
      'total_amt': instance.totalAmount,
      'balance': instance.balance,
      'paid_amt': instance.paidAmount,
    };
