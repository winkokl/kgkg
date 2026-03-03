import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/thermal_printer_model.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/bluetooth_printer_connection_screen.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_invoice_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_payment_receive_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_order_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_return_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/application/thermal_printer_manager.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_order_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_return_print_format.dart';

/// V2 PrintService uses the Bluetooth thermal manager and ensures a connected
/// printer is available before attempting to print. If not connected it
/// presents `BluetoothPrinterConnectionScreen` so the user can connect.
class PrintServiceV2 {
  static final ThermalPrinterManager _manager = ThermalPrinterManager();

  static Future<bool> _ensureConnected(BuildContext context) async {
    try {
      final isReady = await _manager.isPrinterReady();
      if (isReady) return true;

      // Open connection screen and wait for user to select/connect a printer.
      final printer = await Navigator.push<ThermalPrinter?>(
        context,
        MaterialPageRoute(
          builder: (_) => const BluetoothPrinterConnectionScreen(),
        ),
      );

      // If user selected a printer (or connected), re-check
      if (printer != null) return await _manager.isPrinterReady();

      return false;
    } catch (e) {
      return false;
    }
  }

  static Future<void> _printCutLine() async {
    final service = _manager.service;
    await service.printLine();
    await service.printLineWrap(3);
  }

  static Future<void> excuteInvoice(BuildContext context, InvoicePrintFormat invoice) async {
    final ok = await _ensureConnected(context);
    if (!ok) return;

    try {
      LoadingOverlay.show();
      final printer = PrintInvoiceV2(printerManager: _manager);
      await printer.printInvoice(invoice);
    } finally {
      LoadingOverlay.hide();
    }
  }

  static Future<void> excuteSaleOrder(BuildContext context, SaleOrderPrintFormat saleOrder) async {
    final ok = await _ensureConnected(context);
    if (!ok) return;

    try {
      LoadingOverlay.show();
      final printer = PrintSaleOrderV2(printerManager: _manager);
      await printer.printSaleOrder(saleOrder);
    } finally {
      LoadingOverlay.hide();
    }
  }

  static Future<void> excutePayment(BuildContext context, PaymentPrintFormat payment) async {
    final ok = await _ensureConnected(context);
    if (!ok) return;

    try {
      LoadingOverlay.show();
      final printer = PrintPaymentV2(printerManager: _manager);
      await printer.printPayment(payment);
    } finally {
      LoadingOverlay.hide();
    }
  }

  static Future<void> excuteSaleReturn(BuildContext context, SaleReturnPrintFormat saleReturn) async {
    final ok = await _ensureConnected(context);
    if (!ok) return;

    try {
      LoadingOverlay.show();
      final printer = PrintSaleReturnV2(printerManager: _manager);
      await printer.printSaleReturn(saleReturn);
    } finally {
      LoadingOverlay.hide();
    }
  }
}
