import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
part 'info_dto.freezed.dart';
part 'info_dto.g.dart';

@freezed
class InfoDTO with _$InfoDTO {
  const InfoDTO._();
  const factory InfoDTO({
    @JsonKey(name: "item") @Default(-1) int item,
    @JsonKey(name: "item_name") @Default("") String itemName,
    @JsonKey(name: "bonus") @Default(0) double bonus,
    @JsonKey(name: "cashback") @Default(0) double cashback,
    @JsonKey(name: "discount") @Default(0) double discount,
    @JsonKey(name: "item_qty") @Default(0) int itemQty,
    @JsonKey(name: "bonus_amt") @Default(0) double bonusAmt,
    @JsonKey(name: "item_unit") @Default(-1) int itemUnit,
    @JsonKey(name: "item_unit_name") @Default("") String itemUnitName,
    @JsonKey(name: "bonus_type") @Default("") String bonusType,
    @JsonKey(name: "cashback_amt") @Default(0) double cashbackAmt,
    @JsonKey(name: "discount_amt") @Default(0) double discountAmt,
    @JsonKey(name: "cashback_type") @Default("") String cashbackType,
    @JsonKey(name: "discount_type") @Default("") String discountType,
    @JsonKey(name: "sale_range_to") @Default(0) double saleRangeTo,
    @JsonKey(name: "sale_range_from") @Default(0) double saleRangeFrom,
  }) = _InfoDTO;

  factory InfoDTO.fromJson(Map<String, dynamic> json) => _$InfoDTOFromJson(json);

  factory InfoDTO.fromDomain(Info info) {
    return InfoDTO(
      item: info.item,
      itemName: info.itemName,
      bonus: info.bonus,
      cashback: info.cashback,
      discount: info.discount,
      itemQty: info.itemQty,
      bonusAmt: info.bonusAmt,
      itemUnit: info.itemUnit,
      itemUnitName: info.itemUnitName,
      bonusType: info.bonusType.name,
      cashbackAmt: info.cashbackAmt,
      discountAmt: info.discountAmount,
      cashbackType: info.cashbackType.name,
      discountType: info.discountType.name,
      saleRangeTo: info.saleRangeTo,
      saleRangeFrom: info.saleRangeFrom,
    );
  }

  Info toDomain() {
    return Info(
      item: item,
      itemName: itemName,
      bonus: bonus,
      cashback: cashback,
      discount: discount,
      itemQty: itemQty,
      bonusAmt: bonusAmt,
      itemUnit: itemUnit,
      itemUnitName: itemUnitName,
      bonusType: AmountOrPercentStatus.fromName(bonusType),
      cashbackAmt: cashbackAmt,
      discountAmount: discountAmt,
      cashbackType: AmountOrPercentStatus.fromName(cashbackType),
      discountType: AmountOrPercentStatus.fromName(discountType),
      saleRangeTo: saleRangeTo,
      saleRangeFrom: saleRangeFrom,
    );
  }
}
