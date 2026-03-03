// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_eligible_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionEligibleDTOImpl _$$PromotionEligibleDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionEligibleDTOImpl(
      bonus: (json['bonus'] as num?)?.toDouble() ?? 0,
      bonusStatus: (json['bonus_status'] as num?)?.toInt() ?? 0,
      cashBack: (json['cash_back'] as num?)?.toDouble() ?? 0,
      cashBackStatus: (json['cash_back_status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PromotionEligibleDTOImplToJson(
        _$PromotionEligibleDTOImpl instance) =>
    <String, dynamic>{
      'bonus': instance.bonus,
      'bonus_status': instance.bonusStatus,
      'cash_back': instance.cashBack,
      'cash_back_status': instance.cashBackStatus,
    };
