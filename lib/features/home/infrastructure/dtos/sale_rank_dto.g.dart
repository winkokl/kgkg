// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_rank_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleRankDTOImpl _$$SaleRankDTOImplFromJson(Map<String, dynamic> json) =>
    _$SaleRankDTOImpl(
      userId: json['user_id'] ?? -1,
      username: json['username'] as String? ?? "",
      amount: (json['total_grand_total_amount'] as num?)?.toDouble() ?? 0,
      saleTargetAmount:
          (json['total_sales_target_amount'] as num?)?.toDouble() ?? 0,
      rank: (json['ranking'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SaleRankDTOImplToJson(_$SaleRankDTOImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'total_grand_total_amount': instance.amount,
      'total_sales_target_amount': instance.saleTargetAmount,
      'ranking': instance.rank,
    };
