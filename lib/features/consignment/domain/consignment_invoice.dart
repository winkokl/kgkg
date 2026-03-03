import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consignment_invoice.freezed.dart';

@freezed
class ConsignmentInvoice with _$ConsignmentInvoice implements PagingDataItem {
  const factory ConsignmentInvoice({
    @Default(-1) int id,
    @Default(-1) int consignmentId,
    @Default(-1) int consignmentTypeId,
    @Default("") String code,
    @Default("") String consignmentCode,
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
    @Default([]) List<ConsignmentReceipt> paymentReceivedHistory,
    @Default(Region()) Region region,
    @Default(ConsignmentMethod.stockRefill) ConsignmentMethod consignmentMethod,
  }) = _ConsignmentInvoice;
}
