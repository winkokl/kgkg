import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_return.freezed.dart';

@freezed
class SecondarySaleReturn with _$SecondarySaleReturn implements PagingDataItem {
  const factory SecondarySaleReturn({
    @Default(-1) int id,
    @Default("") String returnDate,
    @Default("") String code,
    @Default("") String invoiceCode,
    @Default(SecondarySaleInvoice()) SecondarySaleInvoice secondarySaleInvoice,
    @Default(Customer()) Customer customer,
    @Default([]) List<Product> products,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double returnDeductAmount,
    @Default(0) double balance,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus returnDeductType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(0) double totalReturnAmount,
    @Default(PaymentStatus.none) PaymentStatus paymentStatus,
    @Default(ReturnReason()) ReturnReason returnReason,
  }) = _SecondarySaleReturn;
}

// "secondary_sales_invoice_id" :11,
// "customer_id":1,
// "return_date" : "2024-06-14",
// "remark" : "haha",
// "description" : "heheh",
// "sub_total" : 10000,
// "other_charges" : 10000,
// "grand_total_amount" : 100000,
// "return_deduct_method" : "%",
// "return_deduct_amount" : 10000,
// "total_return_amount" : 150000,
// "balance" : 150000,
// "product_detail" : [
//     {

//         "product_id": 16,
//         "unit_id": 1,
//         "sales_price": 5000,
//         "qty": 3,
//         "amount" : 5000,
//         "discount_amount": 10,
//         "discount_type": "%",
//         "tax_type": "%",
//         "tax_amount": 10,
//         "total_amount": 20000,
//         "return_qty" : 1,
//         "return_amount" : 10000
//     },
//      {

//         "product_id": 17,
//         "unit_id": 1,
//         "sales_price": 5000,
//         "qty": 3,
//         "amount" : 5000,
//         "discount_amount": 10,
//         "discount_type": "%",
//         "tax_type": "%",
//         "tax_amount": 10,
//         "total_amount": 30000,
//         "return_qty" : 1,
//         "return_amount" : 10000
//     }
// ]
