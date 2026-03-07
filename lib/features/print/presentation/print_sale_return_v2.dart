/// Bluetooth-based sale return printing (v2)
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import '../domain/sale_return_print_format.dart';
import '../domain/i_thermal_printer_service.dart';
import '../application/thermal_printer_manager.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';

class PrintSaleReturnV2 {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');
  final ThermalPrinterManager printerManager;

  PrintSaleReturnV2({ThermalPrinterManager? printerManager}) : printerManager = printerManager ?? ThermalPrinterManager(service: EscPosBluethoothService());

  Future<bool> printSaleReturn(SaleReturnPrintFormat saleReturn) async {
    try {
      final connected = printerManager.getConnectedPrinter();
      if (connected == null) {
        final printers = await printerManager.discoverPrinters();
        if (printers.isEmpty) return false;
        final first = printers.first;
        if (!await printerManager.initialize(first.id)) return false;
      }

      final service = printerManager.service;

      final Uint8List logo = await getImageFromAsset('assets/images/logo.png');

      await service.startTransactionPrint(true);

      // Header
      await service.printBytes(logo);
      await service.printLineWrap(1);
      await service.printText('Mg Kaung', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printText('Distribution Company Limited', fontSize: 0, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(2);

      await service.printText('SALE RETURN', fontSize: 1, bold: true, alignment: TextAlignment.center);
      await service.printLineWrap(1);

      await service.printText('Return ID : ${saleReturn.code}', fontSize: 0);
      await service.printText('Date : ${saleReturn.date}', fontSize: 0);

      if (saleReturn.invoiceCode.isNotEmpty) {
        await service.printText('Invoice ID : ${saleReturn.invoiceCode}', fontSize: 0);
      }

      if (saleReturn.contractCode.isNotEmpty) {
        await service.printText('Contract ID : ${saleReturn.contractCode}', fontSize: 0);
      }

      await service.printLine();

      // Items header
      await service.printText('Item'.padRight(21) + 'Price'.padLeft(7) + 'Qty'.padLeft(5), fontSize: 0, bold: true);
      await service.printLineWrap(1);

      for (final p in saleReturn.products) {
        final name = p.name.length > 21 ? p.name.substring(0, 21) : p.name;
        final price = formatter.format(p.salePrice).padLeft(7);
        final qty = p.returnQty.toString().padLeft(5);
        await service.printText(name.padRight(21) + price + qty, fontSize: 0);
      }

      await service.printText(''.padRight(6) + 'SubTotal :'.padLeft(15) + formatter.format(saleReturn.subtotal).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(6) + 'Other :'.padLeft(15) + formatter.format(saleReturn.otherCharges).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(6) + 'Grand Total :'.padLeft(15) + formatter.format(saleReturn.grandTotal).padLeft(10), fontSize: 0);
      await service.printText(''.padRight(6) + 'Return Deduct :'.padLeft(15) + formatter.format(saleReturn.returnDeductAmount).padLeft(10), fontSize: 0);

      await service.printLine();

      await service.printText('Return Total', fontSize: 0, alignment: TextAlignment.right);
      await service.printText(formatter.format(saleReturn.totalReturnAmount), fontSize: 1, bold: true, alignment: TextAlignment.right);

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
