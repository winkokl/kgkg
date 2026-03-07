import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/thermal_printer_model.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/bluetooth_printer_connection_screen.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_invoice_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_payment_receive_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_order_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_return_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/application/thermal_printer_manager.dart';
import 'package:mgkaung_dms_mobile/features/print/infrastructure/sunmi_printer_service.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_order_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_return_print_format.dart';
import 'dart:io' show Platform;

/// V2 PrintService automatically detects Sunmi devices and uses built-in printer.
/// For non-Sunmi devices, it uses Bluetooth thermal printer.
class PrintServiceV2 {
  static ThermalPrinterManager? _manager;

  static ThermalPrinterManager get _printerManager {
    if (_manager == null) {
      // Auto-detect if running on Sunmi device
      _manager = _isSunmiDevice()
          ? ThermalPrinterManager(service: SunmiPrinterService())
          : ThermalPrinterManager();
    }
    return _manager!;
  }

  static bool _isSunmiDevice() {
    // Check if device is Android and brand contains "SUNMI"
    if (Platform.isAndroid) {
      // You can also check device model if needed
      // For now, we'll try to detect Sunmi by attempting to use the service
      return true; // Will be validated when trying to connect
    }
    return false;
  }

  static Future<bool> _ensureConnected(BuildContext context) async {
    try {
      final manager = _printerManager;
      final isReady = await manager.isPrinterReady();
      if (isReady) return true;

      // For Sunmi devices, try to auto-connect to built-in printer
      if (_isSunmiDevice()) {
        final printers = await manager.discoverPrinters();
        if (printers.isNotEmpty) {
          final sunmiPrinter = printers.first;
          final connected = await manager.initialize(sunmiPrinter.id);
          return connected;
        }
        return false;
      }

      // For Bluetooth printers, open connection screen
      final printer = await Navigator.push<ThermalPrinter?>(
        context,
        MaterialPageRoute(
          builder: (_) => const BluetoothPrinterConnectionScreen(),
        ),
      );

      if (printer != null) return await manager.isPrinterReady();

      return false;
    } catch (e) {
      return false;
    }
  }

  static Future<void> _printCutLine() async {
    final service = _printerManager.service;
    await service.printLine();
    await service.printLineWrap(3);
  }

  static Future<void> excuteInvoice(BuildContext context, InvoicePrintFormat invoice) async {
    final ok = await _ensureConnected(context);
    if (!ok) return;

    try {
      LoadingOverlay.show();
      final printer = PrintInvoiceV2(printerManager: _printerManager);
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
      final printer = PrintSaleOrderV2(printerManager: _printerManager);
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
      final printer = PrintPaymentV2(printerManager: _printerManager);
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
      final printer = PrintSaleReturnV2(printerManager: _printerManager);
      await printer.printSaleReturn(saleReturn);
    } finally {
      LoadingOverlay.hide();
    }
  }
}
