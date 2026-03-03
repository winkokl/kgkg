import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';

part 'secondary_sale.freezed.dart';

@freezed
class SecondarySale with _$SecondarySale implements PagingDataItem {
  const factory SecondarySale({
    @Default(-1) int id,
    @Default("") String code,
    @Default("") String date,
    @Default("") String deliveryDate,
    @Default(Customer()) Customer customer,
    @Default(BusinessUnit()) BusinessUnit businessUnit,
    @Default([]) List<Product> products,
    @Default(SaleType()) SaleType saleType,
    @Default(PaymentType()) PaymentType paymentType,
    @Default(PaymentTerm()) PaymentTerm paymentTerm,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double discountAmount,
    @Default(0) double discount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(0) double tax,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(OrderStatus.pending) OrderStatus orderStatus,
    @Default(SalePromotion()) SalePromotion salePromotion,
    @Default("") String rejectReason,
    @Default(0) double bonus,
    @Default(0) double cashBack,
    @Default(-1) int salePromotionId,
    @Default("Secondary") String type,
  }) = _SecondarySale;
}
