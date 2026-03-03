import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_channel.freezed.dart';

@freezed
class CustomerChannel with _$CustomerChannel {
  const factory CustomerChannel({
    @Default(-1) int salePromotionId,
    @Default(-1) int customerChannelId,
    @Default("") String customerChannelName,
    @Default(-1) int salePromotionCustomerId,
  }) = _CustomerChannel;
}
