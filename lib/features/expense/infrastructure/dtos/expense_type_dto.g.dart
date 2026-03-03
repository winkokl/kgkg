// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseTypeDTOImpl _$$ExpenseTypeDTOImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseTypeDTOImpl(
      id: (json['expense_type_id'] as num?)?.toInt() ?? -1,
      name: json['expense_type_name'] as String? ?? "",
    );

Map<String, dynamic> _$$ExpenseTypeDTOImplToJson(
        _$ExpenseTypeDTOImpl instance) =>
    <String, dynamic>{
      'expense_type_id': instance.id,
      'expense_type_name': instance.name,
    };
