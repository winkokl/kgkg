/// Bluetooth-based sale order printing (v2)
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import '../domain/sale_order_print_format.dart';
import '../domain/i_thermal_printer_service.dart';
import '../application/thermal_printer_manager.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';

class PrintSaleOrderV2 {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');
  final ThermalPrinterManager printerManager;

  PrintSaleOrderV2({ThermalPrinterManager? printerManager}) : printerManager = printerManager ?? ThermalPrinterManager(service: EscPosBluethoothService());

  Future<bool> printSaleOrder(SaleOrderPrintFormat saleorder) async {
    try {
      final connected = printerManager.getConnectedPrinter();
      if (connected == null) {
        final printers = await printerManager.discoverPrinters();
        if (printers.isEmpty) return false;
        final first = printers.first;
        if (!await printerManager.initialize(first.id)) return false;
      }

      final service = printerManager.service;

      final Uint8List logo = await getResizedImageFromAsset('assets/images/logo.png', targetWidth: 200);

      await service.startTransactionPrint(true);

      // Header
      await service.printBytes(logo);
      await service.printLineWrap(1);
      await service.printText('Mg Kaung', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printText('Distribution Company Limited', fontSize: 0, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(2);

      await service.printText('ORDER', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(1);

      // Customer info
      await service.printText('Name : ${saleorder.customerName}', fontSize: 0);
      await service.printText('Order No. : ${saleorder.code}', fontSize: 0);
      await service.printText('Date : ${saleorder.date}', fontSize: 0);

      await service.printLine();

      // Items header
      await service.printText('Item'.padRight(21) + 'Price'.padLeft(7) + 'Qty'.padLeft(5), fontSize: 0, bold: true);
      await service.printLineWrap(1);

      for (final p in saleorder.products) {
        final name = p.name.length > 21 ? p.name.substring(0, 21) : p.name;
        final price = formatter.format(p.salePrice).padLeft(7);
        final qty = p.quantity.toString().padLeft(5);

        await service.printText(name.padRight(21) + price + qty, fontSize: 0);
      }

      // Totals
      await service.printText(''.padRight(11) + 'SubTotal :'.padLeft(10) + formatter.format(saleorder.subtotal).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(11) + 'Discount :'.padLeft(10) + formatter.format(saleorder.discount).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(11) + 'Tax :'.padLeft(10) + formatter.format(saleorder.tax).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(11) + 'Other :'.padLeft(10) + formatter.format(saleorder.otherCharges).padLeft(10), fontSize: 0);

      await service.printLine();

      await service.printText('Grand Total', fontSize: 0, alignment: TextAlignment.right);
      await service.printText(formatter.format(saleorder.grandTotal), fontSize: 1, bold: true, alignment: TextAlignment.right);

      await service.printLineWrap(2);

      if (saleorder.paymentTerm.isNotEmpty) {
        await service.printText('Order Term', fontSize: 0, bold: true, alignment: TextAlignment.center);
        await service.printText('Please Pay your Order by ${saleorder.paymentTerm} days', fontSize: 0, alignment: TextAlignment.center);
      }

      await service.endTransactionPrint(true);

      return true;
    } catch (e) {
      return false;
    } finally {
      await printerManager.disconnect();
    }
  }
}
