import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_rank.freezed.dart';

@freezed
class SaleRank with _$SaleRank {
  const factory SaleRank({
    @Default(-1) int userId,
    @Default("") String username,
    @Default(0) double amount,
    @Default(0) double saleTargetAmount,
    @Default(-1) int rank,
  }) = _SaleRank;
}
