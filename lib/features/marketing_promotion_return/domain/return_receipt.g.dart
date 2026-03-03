// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReturnReceiptImpl _$$ReturnReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReturnReceiptImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      planReturnId:
          (json['marketing_promotion_plan_return_id'] as num?)?.toInt() ?? -1,
      paymentDate: json['payment_date'] as String? ?? '',
      paidAmount: (json['paid_amount'] as num?)?.toDouble() ?? 0,
      code: json['code'] as String? ?? '',
      returnDate: json['return_date'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ReturnReceiptImplToJson(_$ReturnReceiptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'marketing_promotion_plan_return_id': instance.planReturnId,
      'payment_date': instance.paymentDate,
      'paid_amount': instance.paidAmount,
      'code': instance.code,
      'return_date': instance.returnDate,
      'balance': instance.balance,
      'total': instance.total,
    };
