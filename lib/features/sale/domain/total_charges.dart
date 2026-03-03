import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_charges.freezed.dart';

@freezed
class TotalCharges with _$TotalCharges {
  const factory TotalCharges({
    @Default(0) double subtotal,
    @Default(0) double bonusAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus bonusType,
    @Default(0) double cashbackAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus cashbackType,
    @Default(0) double discountAmount,
    @Default(0) double discount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(0) double tax,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double returnDeductAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus returnDeductType,
    @Default(0) double otherChargesAmount,
    @Default(0) double grandtotal,
    @Default(0) double totalReturnAmount,
  }) = _TotalCharges;
}
