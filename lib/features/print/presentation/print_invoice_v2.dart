/// Refactored invoice printing using thermal printer service
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import '../domain/invoice_print_format.dart';
import '../domain/i_thermal_printer_service.dart';
import '../application/thermal_printer_manager.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';

class PrintInvoiceV2 {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');
  final ThermalPrinterManager printerManager;

  // Default to the ESC-POS Bluetooth service so this printer uses Bluetooth by default.
  PrintInvoiceV2({ThermalPrinterManager? printerManager}) : printerManager = printerManager ?? ThermalPrinterManager(service: EscPosBluethoothService());

  /// Main print method
  Future<bool> printInvoice(InvoicePrintFormat invoice) async {
    try {
      // Initialize printer: for Bluetooth we try to discover a bonded printer and connect to it.
      // If a caller supplied a pre-configured manager that already has a connected printer,
      // this will short-circuit and proceed.
      final connected = printerManager.getConnectedPrinter();
      if (connected == null) {
        final printers = await printerManager.discoverPrinters();
        if (printers.isEmpty) {
          return false;
        }

        final first = printers.first;
        if (!await printerManager.initialize(first.id)) {
          return false;
        }
      }

      // Get logo
      Uint8List logoBytes = await getImageFromAsset('assets/images/logo.png');

      // Start transaction
      final service = printerManager.service;
      await service.startTransactionPrint(true);

      // Print header
      await _printHeader(service, logoBytes);

      // Print invoice info
      await _printInvoiceInfo(service, invoice);

      // Print line separator
      await service.printLine();

      // Print items header
      await _printItemsHeader(service);

      // Print items
      await _printItems(service, invoice);

      // Print totals
      await _printTotals(service, invoice);

      // Print footer
      await _printFooter(service, invoice);

      // End transaction
      await service.endTransactionPrint(true);

      return true;
    } catch (e) {
      return false;
    } finally {
      await printerManager.disconnect();
    }
  }

  Future<void> _printHeader(IThermalPrinterService service, Uint8List logoBytes) async {
    // Print logo
    await service.printBytes(logoBytes);
    await service.printLineWrap(1);

    // Company name
    await service.printText(
      'Mg Kaung',
      fontSize: 1,
      bold: true,
      alignment: TextAlignment.center,
    );

    await service.printText(
      'Distribution Company Limited',
      fontSize: 0,
      bold: true,
      alignment: TextAlignment.center,
    );

    await service.printLineWrap(2);

    // Invoice title
    await service.printText(
      'INVOICE',
      fontSize: 1,
      bold: true,
      alignment: TextAlignment.center,
    );
  }

  Future<void> _printInvoiceInfo(IThermalPrinterService service, InvoicePrintFormat invoice) async {
    await service.printLineWrap(1);
    await service.printText('Bill To: ${invoice.customerName}', fontSize: 0);
    await service.printText('Invoice No: ${invoice.code}', fontSize: 0);
    await service.printText('Date: ${invoice.date}', fontSize: 0);
    await service.printText('Due Date: ${invoice.dueDate}', fontSize: 0);
  }

  Future<void> _printItemsHeader(IThermalPrinterService service) async {
    await service.printLineWrap(1);
    await service.printText(
      'Item${_padRight('Item', 18)}${'Price'.padLeft(5)}${'Qty'.padLeft(6)}${'amount'.padLeft(6)}',
      fontSize: 0,
      bold: true,
    );
  }

  Future<void> _printItems(IThermalPrinterService service, InvoicePrintFormat invoice) async {
    for (final product in invoice.products) {
      final itemName = product.name.length > 18 ? product.name.substring(0, 18) : product.name;
      final price = formatter.format(product.salePrice).padLeft(5);
      final quantity = product.quantity.toString().padLeft(6);
      final amount = formatter.format(product.amount).padLeft(6);

      await service.printText(
        itemName + _padRight(itemName, 18) + price + quantity + amount,
        fontSize: 0,
      );
    }
  }

  Future<void> _printTotals(IThermalPrinterService service, InvoicePrintFormat invoice) async {
    await service.printLine();

    final subtotalLabel = 'Subtotal:'.padRight(18);
    final subtotal = formatter.format(invoice.subtotal).padLeft(13);
    await service.printText(subtotalLabel + subtotal, fontSize: 0);

    final discountLabel = 'Discount:'.padRight(18);
    final discount = formatter.format(invoice.discount).padLeft(13);
    await service.printText(discountLabel + discount, fontSize: 0);

    final taxLabel = 'Tax:'.padRight(18);
    final tax = formatter.format(invoice.tax).padLeft(13);
    await service.printText(taxLabel + tax, fontSize: 0);

    final otherLabel = 'Other Charges:'.padRight(18);
    final other = formatter.format(invoice.otherCharges).padLeft(8);
    await service.printText(otherLabel + other, fontSize: 0);

    await service.printLine();

    final totalLabel = 'TOTAL:'.padRight(18);
    final total = formatter.format(invoice.grandTotal).padLeft(13);
    await service.printText(
      totalLabel + total,
      fontSize: 1,
      bold: true,
      alignment: TextAlignment.right,
    );
  }

  Future<void> _printFooter(IThermalPrinterService service, InvoicePrintFormat invoice) async {
    await service.printLineWrap(2);

    if (invoice.paymentTerm.isNotEmpty) {
      await service.printText(
        'Invoice Term',
        fontSize: 0,
        bold: true,
        alignment: TextAlignment.center,
      );

      await service.printText(
        'Please Pay by ${invoice.paymentTerm} days',
        fontSize: 0,
        alignment: TextAlignment.center,
      );
    }

    await service.printLineWrap(2);

    await service.printText(
      'Thank you for your business!',
      alignment: TextAlignment.center,
    );
  }

  String _padRight(String text, int width) {
    return text.length >= width ? text : text.padRight(width);
  }
}
