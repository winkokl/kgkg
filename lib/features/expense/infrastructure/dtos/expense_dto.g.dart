// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseDTOImpl _$$ExpenseDTOImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseDTOImpl(
      id: (json['user_expense_id'] as num?)?.toInt() ?? -1,
      date: json['date'] as String? ?? "",
      code: json['user_expense_code'] as String? ?? "",
      userId: (json['user_id'] as num?)?.toInt() ?? -1,
      userFirstName: json['first_name'] as String? ?? "",
      userLastName: json['last_name'] as String? ?? "",
      username: json['username'] as String? ?? "",
      expenseTypeId: (json['expense_type_id'] as num?)?.toInt() ?? -1,
      expenseTypeName: json['expense_type_name'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? -1,
      requestAmount: (json['expense_amount'] as num?)?.toDouble() ?? 0,
      expenseAmount: (json['allow_expense_amount'] as num?)?.toDouble() ?? 0,
      reason: json['reject_reason'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$ExpenseDTOImplToJson(_$ExpenseDTOImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'user_id': instance.userId,
      'expense_type_id': instance.expenseTypeId,
      'expense_amount': instance.requestAmount,
      'description': instance.description,
    };
