import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sale_invoice.freezed.dart';

@freezed
class TripSaleInvoice with _$TripSaleInvoice implements PagingDataItem {
  const factory TripSaleInvoice({
    @Default(-1) int id,
    @Default(-1) int saleOrderId,
    @Default("") String code,
    @Default("") String tripSaleId,
    @Default("") String saleOrderCode,
    @Default("") String invoiceDate,
    @Default("") String dueDate,
    @Default("") String saleDate,
    @Default(0) double totalInvoiceAmount,
    @Default(0) double balance,
    @Default(0) double paidAmount,
    @Default(Customer()) Customer customer,
    @Default(BusinessUnit()) BusinessUnit businessUnit,
    @Default(PaymentType()) PaymentType paymentType,
    @Default(PaymentTerm()) PaymentTerm paymentTerm,
    @Default(Warehouse()) Warehouse warehouse,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default([]) List<Product> products,
    @Default(PaymentStatus.none) PaymentStatus paymentStatus,
    @Default([]) List<TripSaleReceipt> paymentReceivedHistory,
    @Default(0) int salePromotionId,
    @Default(SalePromotion()) SalePromotion salePromotion,
  }) = _TripSaleInvoice;
}
