// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerChannelDTOImpl _$$CustomerChannelDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerChannelDTOImpl(
      customerChannelId: (json['customer_channel_id'] as num?)?.toInt() ?? -1,
      customerChannelName: json['customer_channel_name'] as String? ?? "",
      salePromotionCustomerId:
          (json['sale_promotion_customer_id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CustomerChannelDTOImplToJson(
        _$CustomerChannelDTOImpl instance) =>
    <String, dynamic>{
      'customer_channel_id': instance.customerChannelId,
      'customer_channel_name': instance.customerChannelName,
      'sale_promotion_customer_id': instance.salePromotionCustomerId,
    };
