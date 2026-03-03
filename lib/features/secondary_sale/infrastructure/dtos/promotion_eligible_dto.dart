import 'package:mgkaung_dms_mobile/core/enums/promotion_eligible_status.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/promotion_eligible.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_eligible_dto.freezed.dart';
part 'promotion_eligible_dto.g.dart';

@freezed
class PromotionEligibleDTO with _$PromotionEligibleDTO {
  const PromotionEligibleDTO._();
  const factory PromotionEligibleDTO({
    @JsonKey(name: "bonus") @Default(0) double bonus,
    @JsonKey(name: "bonus_status") @Default(0) int bonusStatus,
    @JsonKey(name: "cash_back") @Default(0) double cashBack,
    @JsonKey(name: "cash_back_status") @Default(0) int cashBackStatus,
  }) = _PromotionEligibleDTO;

  factory PromotionEligibleDTO.fromJson(Map<String, dynamic> json) => _$PromotionEligibleDTOFromJson(json);

  PromotionEligible toDomain() {
    return PromotionEligible(
      bonus: bonus,
      cashBack: cashBack,
      bonusStatus: PromotionEligibleStatus.fromId(bonusStatus),
      cashBackStatus: PromotionEligibleStatus.fromId(cashBackStatus),
    );
  }
}
