import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';

part 'info.freezed.dart';

@freezed
class Info with _$Info {
  const factory Info({
    @Default(-1) int item,
    @Default("") String itemName,
    @Default(0) double bonus,
    @Default(0) double cashback,
    @Default(0) double discount,
    @Default(0) int itemQty,
    @Default(0) double bonusAmt,
    @Default(-1) int itemUnit,
    @Default("") String itemUnitName,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus bonusType,
    @Default(0) double cashbackAmt,
    @JsonValue("discountAmt") @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus cashbackType,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double saleRangeTo,
    @Default(0) double saleRangeFrom,
    @Default("") String promotionName,
    @Default("") String skulabel,
  }) = _Info;

  factory Info.defaultValue() {
    return const Info(
      item: -1,
      itemName: "",
      bonus: 0,
      cashback: 0,
      discount: 0,
      itemQty: 0,
      bonusAmt: 0,
      itemUnit: -1,
      itemUnitName: "",
      bonusType: AmountOrPercentStatus.amount,
      cashbackAmt: 0,
      discountAmount: 0,
      cashbackType: AmountOrPercentStatus.amount,
      discountType: AmountOrPercentStatus.amount,
      saleRangeTo: 0,
      saleRangeFrom: 0,
      promotionName: "",
      skulabel: "",
    );
  }
}
