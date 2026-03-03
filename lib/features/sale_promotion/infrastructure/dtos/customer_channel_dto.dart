import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/customer_channel.dart';
part 'customer_channel_dto.freezed.dart';
part 'customer_channel_dto.g.dart';

@freezed
class CustomerChannelDTO with _$CustomerChannelDTO {
  const CustomerChannelDTO._();
  const factory CustomerChannelDTO({
    @JsonKey(name: "customer_channel_id") @Default(-1) int customerChannelId,
    @JsonKey(name: "customer_channel_name") @Default("") String customerChannelName,
    @JsonKey(name: "sale_promotion_customer_id") @Default(-1) int salePromotionCustomerId,
  }) = _CustomerChannelDTO;

  factory CustomerChannelDTO.fromJson(Map<String, dynamic> json) => _$CustomerChannelDTOFromJson(json);

  CustomerChannel toDomain() {
    return CustomerChannel(
      customerChannelId: customerChannelId,
      customerChannelName: customerChannelName,
      salePromotionCustomerId: salePromotionCustomerId,
    );
  }
}
