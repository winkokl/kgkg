import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';

part 'consignment.freezed.dart';

@freezed
class Consignment with _$Consignment implements PagingDataItem {
  const factory Consignment({
    @Default(-1) int id,
    @Default(-1) int consignmentContractId,
    @Default("") String consignmentContractCode,
    @Default(ConsignmentContract()) ConsignmentContract consignmentContract,
    @Default(-1) int consignmentTypeId,
    @Default("") String code,
    @Default("") String date,
    @Default(Customer()) Customer customer,
    @Default(BusinessUnit()) BusinessUnit businessUnit,
    @Default([]) List<Product> products,
    @Default(PaymentType()) PaymentType paymentType,
    @Default(PaymentTerm()) PaymentTerm paymentTerm,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double otherChargesAmount,
    // @Default(Warehouse()) Warehouse warehouse,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(OrderStatus.pending) OrderStatus orderStatus,
    @Default(ConsignmentMethod.stockRefill) ConsignmentMethod consignmentMethod,
    @Default("") String rejectReason,
    @Default(Region()) Region region,
  }) = _Consignment;
}
