import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_rank_dto.freezed.dart';
part 'sale_rank_dto.g.dart';

@freezed
class SaleRankDTO with _$SaleRankDTO {
  const SaleRankDTO._();
  const factory SaleRankDTO({
    @JsonKey(name: "user_id") @Default(-1) dynamic userId,
    @JsonKey(name: "username") @Default("") String username,
    @JsonKey(name: "total_grand_total_amount") @Default(0) double amount,
    @JsonKey(name: "total_sales_target_amount") @Default(0) double saleTargetAmount,
    @JsonKey(name: "ranking") @Default(0) int rank,
  }) = _SaleRankDTO;

  factory SaleRankDTO.fromJson(Map<String, dynamic> json) => _$SaleRankDTOFromJson(json);

  SaleRank toDomain() {
    return SaleRank(
      userId: userId.runtimeType == String ? int.parse(userId) : userId,
      username: username,
      amount: amount,
      rank: rank,
      saleTargetAmount: saleTargetAmount,
    );
  }
}
