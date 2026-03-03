import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/promotion_eligible_status.dart';
part 'promotion_eligible.freezed.dart';

@freezed
class PromotionEligible with _$PromotionEligible {
  const PromotionEligible._();
  const factory PromotionEligible({
    @Default(0) double bonus,
    @Default(PromotionEligibleStatus.ineligible) PromotionEligibleStatus bonusStatus,
    @Default(0) double cashBack,
    @Default(PromotionEligibleStatus.ineligible) PromotionEligibleStatus cashBackStatus,
  }) = _PromotionEligible;
}
