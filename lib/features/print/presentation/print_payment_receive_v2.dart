/// Bluetooth-based payment receive printing (v2)
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import '../domain/payment_print_format.dart';
import '../domain/i_thermal_printer_service.dart';
import '../application/thermal_printer_manager.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';

class PrintPaymentV2 {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');
  final ThermalPrinterManager printerManager;

  PrintPaymentV2({ThermalPrinterManager? printerManager}) : printerManager = printerManager ?? ThermalPrinterManager(service: EscPosBluethoothService());

  Future<bool> printPayment(PaymentPrintFormat payment) async {
    try {
      final connected = printerManager.getConnectedPrinter();
      if (connected == null) {
        final printers = await printerManager.discoverPrinters();
        if (printers.isEmpty) return false;
        final first = printers.first;
        if (!await printerManager.initialize(first.id)) return false;
      }

      final service = printerManager.service;

      // Get logo
      final Uint8List logoBytes = await getResizedImageFromAsset('assets/images/logo.png', targetWidth: 200);

      await service.startTransactionPrint(true);

      // Logo
      await service.printBytes(logoBytes);
      await service.printLineWrap(1);

      // Company
      await service.printText('Mg Kaung', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printText('Distribution Company Limited', fontSize: 0, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(2);

      // Title
      await service.printText('PAYMENT', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(1);

      // Details
      await service.printText('Payment Receive ID: ${payment.receiveID}', fontSize: 0);
      await service.printText('Date: ${payment.receiveDate}', fontSize: 0);

      if (payment.paymentMethod.isNotEmpty) {
        await service.printText('Payment Method: ${payment.paymentMethod}', fontSize: 0);
      }

      if (payment.invoiceID.isNotEmpty) {
        await service.printText('Invoice ID: ${payment.invoiceID}', fontSize: 0);
      }

      await service.printLineWrap(1);

      // Amount
      await service.printText('Payment Receive Amount', fontSize: 0);
      await service.printText(formatter.format(payment.paymentAmount), fontSize: 1, bold: true, alignment: TextAlignment.right);

      await service.printLineWrap(2);

      await service.printText('Thank you!', alignment: TextAlignment.center);

      await service.endTransactionPrint(true);

      return true;
    } catch (e) {
      return false;
    } finally {
      await printerManager.disconnect();
    }
  }
}
