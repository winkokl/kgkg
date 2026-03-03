import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_order_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_return_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';

/// V2 Print Functions - Uses Bluetooth thermal printer with connection check
/// All functions require a BuildContext to show connection screen if needed

Future<void> printSecondarySaleV2(BuildContext context, SecondarySale ss) async {
  final subtotal = ss.subtotal;
  await PrintServiceV2.excuteSaleOrder(
      context,
      SaleOrderPrintFormat(
        customerName: ss.customer.name,
        date: ss.date,
        code: ss.code,
        products: ss.products,
        subtotal: subtotal,
        discount: ss.discountType == AmountOrPercentStatus.amount ? ss.discountAmount : (ss.discountAmount / 100) * subtotal,
        tax: ss.taxType == AmountOrPercentStatus.amount ? ss.taxAmount : (ss.taxAmount / 100) * subtotal,
        otherCharges: ss.otherChargesAmount,
        grandTotal: ss.grandtotal,
        paymentTerm: ss.paymentTerm.name,
      ));
}

Future<void> printSecondarySaleInvoiceV2(BuildContext context, SecondarySaleInvoice ssInvoice) async {
  final subtotal = ssInvoice.subtotal;
  await PrintServiceV2.excuteInvoice(
      context,
      InvoicePrintFormat(
        customerName: ssInvoice.customer.name,
        date: ssInvoice.invoiceDate,
        dueDate: ssInvoice.dueDate,
        code: ssInvoice.code,
        products: ssInvoice.products,
        subtotal: ssInvoice.subtotal,
        discount: ssInvoice.discountType == AmountOrPercentStatus.amount ? ssInvoice.discountAmount : (ssInvoice.discountAmount / 100) * subtotal,
        tax: ssInvoice.taxType == AmountOrPercentStatus.amount ? ssInvoice.taxAmount : (ssInvoice.taxAmount / 100) * subtotal,
        otherCharges: ssInvoice.otherChargesAmount,
        grandTotal: ssInvoice.grandtotal,
        paymentTerm: ssInvoice.paymentTerm.name,
      ));
}

Future<void> printSecondarySaleReturnV2(BuildContext context, SecondarySaleReturn ss) async {
  final subtotal = ss.subtotal;
  final returnDeduct = ss.returnDeductType == AmountOrPercentStatus.amount ? ss.returnDeductAmount : (ss.returnDeductAmount / 100) * subtotal;
  await PrintServiceV2.excuteSaleReturn(
      context,
      SaleReturnPrintFormat(
        date: ss.returnDate,
        code: ss.code,
        products: ss.products,
        subtotal: subtotal,
        otherCharges: ss.otherChargesAmount,
        grandTotal: ss.grandtotal,
        invoiceCode: ss.invoiceCode,
        returnDeductAmount: returnDeduct,
        totalReturnAmount: subtotal + ss.otherChargesAmount - returnDeduct,
      ));
}

Future<void> printConsignmentV2(BuildContext context, Consignment consignment) async {
  final subtotal = consignment.subtotal;
  await PrintServiceV2.excuteSaleOrder(
      context,
      SaleOrderPrintFormat(
        customerName: consignment.customer.name,
        date: consignment.date,
        code: consignment.code,
        products: consignment.products,
        subtotal: subtotal,
        discount: consignment.discountType == AmountOrPercentStatus.amount ? consignment.discountAmount : (consignment.discountAmount / 100) * subtotal,
        tax: consignment.taxType == AmountOrPercentStatus.amount ? consignment.taxAmount : (consignment.taxAmount / 100) * subtotal,
        otherCharges: consignment.otherChargesAmount,
        grandTotal: consignment.grandtotal,
        paymentTerm: consignment.paymentTerm.name,
      ));
}

Future<void> printConsignmentInvoiceV2(BuildContext context, ConsignmentInvoice invoice) async {
  final subtotal = invoice.subtotal;
  await PrintServiceV2.excuteInvoice(
      context,
      InvoicePrintFormat(
        customerName: invoice.customer.name,
        date: invoice.invoiceDate,
        dueDate: invoice.dueDate,
        code: invoice.code,
        products: invoice.products,
        subtotal: invoice.subtotal,
        discount: invoice.discountType == AmountOrPercentStatus.amount ? invoice.discountAmount : (invoice.discountAmount / 100) * subtotal,
        tax: invoice.taxType == AmountOrPercentStatus.amount ? invoice.taxAmount : (invoice.taxAmount / 100) * subtotal,
        otherCharges: invoice.otherChargesAmount,
        grandTotal: invoice.grandtotal,
        paymentTerm: invoice.paymentTerm.name,
      ));
}

Future<void> printConsignmentReturnV2(BuildContext context, ConsignmentReturn consignmentreturn) async {
  final subtotal = consignmentreturn.subtotal;
  final returnDeduct = consignmentreturn.returnDeductType == AmountOrPercentStatus.amount ? consignmentreturn.returnDeductAmount : (consignmentreturn.returnDeductAmount / 100) * subtotal;
  await PrintServiceV2.excuteSaleReturn(
      context,
      SaleReturnPrintFormat(
        date: consignmentreturn.returnDate,
        code: consignmentreturn.code,
        products: consignmentreturn.products,
        subtotal: subtotal,
        otherCharges: consignmentreturn.otherChargesAmount,
        grandTotal: consignmentreturn.grandtotal,
        invoiceCode: consignmentreturn.invoiceCode,
        contractCode: consignmentreturn.consignmentContract.code,
        returnDeductAmount: returnDeduct,
        totalReturnAmount: subtotal + consignmentreturn.otherChargesAmount - returnDeduct,
      ));
}

Future<void> printTripSaleV2(BuildContext context, TripSale tripSale) async {
  final subtotal = tripSale.subtotal;
  await PrintServiceV2.excuteSaleOrder(
      context,
      SaleOrderPrintFormat(
        customerName: tripSale.customer.name,
        date: tripSale.date,
        code: tripSale.code,
        products: tripSale.products,
        subtotal: subtotal,
        discount: tripSale.discountType == AmountOrPercentStatus.amount ? tripSale.discountAmount : (tripSale.discountAmount / 100) * subtotal,
        tax: tripSale.taxType == AmountOrPercentStatus.amount ? tripSale.taxAmount : (tripSale.taxAmount / 100) * subtotal,
        otherCharges: tripSale.otherChargesAmount,
        grandTotal: tripSale.grandtotal,
        paymentTerm: tripSale.paymentTerm.name,
      ));
}

Future<void> printTripSaleInvoiceV2(BuildContext context, TripSaleInvoice tripSaleInvoice) async {
  final subtotal = tripSaleInvoice.subtotal;
  await PrintServiceV2.excuteInvoice(
      context,
      InvoicePrintFormat(
        customerName: tripSaleInvoice.customer.name,
        date: tripSaleInvoice.invoiceDate,
        dueDate: tripSaleInvoice.dueDate,
        code: tripSaleInvoice.code,
        products: tripSaleInvoice.products,
        subtotal: tripSaleInvoice.subtotal,
        discount: tripSaleInvoice.discountType == AmountOrPercentStatus.amount ? tripSaleInvoice.discountAmount : (tripSaleInvoice.discountAmount / 100) * subtotal,
        tax: tripSaleInvoice.taxType == AmountOrPercentStatus.amount ? tripSaleInvoice.taxAmount : (tripSaleInvoice.taxAmount / 100) * subtotal,
        otherCharges: tripSaleInvoice.otherChargesAmount,
        grandTotal: tripSaleInvoice.grandtotal,
        paymentTerm: tripSaleInvoice.paymentTerm.name,
      ));
}

Future<void> printTripSaleReturnV2(BuildContext context, TripSaleReturn tripSaleReturn) async {
  final subtotal = tripSaleReturn.subtotal;
  final returnDeduct = tripSaleReturn.returnDeductType == AmountOrPercentStatus.amount ? tripSaleReturn.returnDeductAmount : (tripSaleReturn.returnDeductAmount / 100) * subtotal;
  await PrintServiceV2.excuteSaleReturn(
      context,
      SaleReturnPrintFormat(
        date: tripSaleReturn.returnDate,
        code: tripSaleReturn.code,
        products: tripSaleReturn.products,
        subtotal: subtotal,
        otherCharges: tripSaleReturn.otherChargesAmount,
        grandTotal: tripSaleReturn.grandtotal,
        invoiceCode: tripSaleReturn.invoiceCode,
        returnDeductAmount: returnDeduct,
        totalReturnAmount: subtotal + tripSaleReturn.otherChargesAmount - returnDeduct,
      ));
}
