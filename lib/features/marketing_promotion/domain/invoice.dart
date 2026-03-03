import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt.dart';
part 'invoice.freezed.dart';

@freezed
class Invoice with _$Invoice implements PagingDataItem {
  const factory Invoice({
    @Default(-1) int id,
    @Default('') String code,
    @Default(-1) int planId,
    @Default('') String planCode,
    @Default('') String invoiceDate,
    @Default('') String dueDate,
    int? warehouseId,
    @Default(0) double subTotal,
    @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double otherCharges,
    @Default(0) double grandTotal,
    int? paymentTypeId,
    int? paymentTermsId,
    int? creditTypeId,
    int? customerId,
    String? deleteReason,
    @Default('') String status,
    String? remark,
    @Default('') String description,
    @Default(0) double balance,
    @Default(0) double tax,
    @Default(0) double discount,
    int? businessUnitId,
    @Default(PaymentStatus.none) PaymentStatus paymentStatus,
    @Default(0) double bonus,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus bonusType,
    @Default(0) double bonusAmt,
    @Default(0) double cashback,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus cashbackType,
    @Default(0) double cashbackAmt,
    @Default([]) List<Receipt> paymentReceivedHistory,
    @Default(-1) int marketingGoodRequisitionId,
    @Default(MarketingPromotionPlan()) MarketingPromotionPlan marketingPromotionPlan,
    @Default(0) int bonusDuration,
    @Default(0) int cashbackDuration,
    @Default([]) List<PromotionProduct> products,
    @Default([]) List<GiftItem> giftItems,
    @Default('') String paymentReceiveDate,
    @Default(0) double paidAmt,
  }) = _Invoice;
}
