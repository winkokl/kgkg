/// High-level thermal printer manager for unified printing operations
import 'package:flutter/services.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';

class ThermalPrinterManager {
  static final ThermalPrinterManager _instance = ThermalPrinterManager._internal();
  final IThermalPrinterService _service;

  ThermalPrinterManager._internal() : _service = EscPosBluethoothService();

  factory ThermalPrinterManager({IThermalPrinterService? service}) {
    // If a custom service is provided, return a new instance with that service.
    // Otherwise, return the singleton instance.
    if (service != null) {
      return ThermalPrinterManager._withService(service);
    }
    return _instance;
  }

  ThermalPrinterManager._withService(this._service);

  /// Expose the internal service for direct access when needed
  IThermalPrinterService get service => _service;

  /// Initialize printer connection and setup
  Future<bool> initialize(String printerId) async {
    try {
      final connected = await _service.connectToPrinter(printerId);
      if (!connected) return false;

      final initialized = await _service.initPrinter();
      return initialized;
    } catch (e) {
      print('Error initializing printer: $e');
      return false;
    }
  }

  /// Discover available thermal printers
  Future<List<ThermalPrinter>> discoverPrinters({
    PrinterDiscoveryConfig? config,
  }) async {
    return _service.discoverPrinters(config: config);
  }

  /// Check if printer is ready
  Future<bool> isPrinterReady() async {
    final status = await _service.getPrinterStatus();
    return status == PrinterStatus.connected;
  }

  /// Get printer status
  Future<PrinterStatus> getStatus() => _service.getPrinterStatus();

  /// Get currently connected printer
  ThermalPrinter? getConnectedPrinter() => _service.getConnectedPrinter();

  /// Disconnect from printer
  Future<bool> disconnect() => _service.disconnect();

  /// Print formatted invoice
  Future<bool> printInvoice(
    String header,
    List<PrintRow> rows,
    String footer, {
    String? companyName,
    Uint8List? logoImage,
    bool startTransaction = true,
    bool endTransaction = true,
  }) async {
    try {
      if (startTransaction) {
        await _service.startTransactionPrint(true);
      }

      // Print header
      if (companyName != null) {
        await _service.printText(
          companyName,
          fontSize: 1,
          bold: true,
          alignment: TextAlignment.center,
        );
        await _service.printLineWrap(1);
      }

      if (logoImage != null) {
        await _service.printBytes(logoImage);
      }

      await _service.printText(
        header,
        fontSize: 1,
        bold: true,
        alignment: TextAlignment.center,
      );
      await _service.printLineWrap(1);
      await _service.printLine();

      // Print rows
      for (final row in rows) {
        await _service.printText(row.text);
      }

      await _service.printLine();

      // Print footer
      await _service.printText(
        footer,
        fontSize: 1,
        bold: true,
        alignment: TextAlignment.center,
      );
      await _service.printLineWrap(2);

      if (endTransaction) {
        await _service.endTransactionPrint(true);
      }

      return true;
    } catch (e) {
      print('Error printing invoice: $e');
      return false;
    }
  }

  /// Print receipt with custom format
  Future<bool> printReceipt({
    required String title,
    required List<ReceiptLine> items,
    String? subtotal,
    String? tax,
    String? total,
    String? footerMessage,
  }) async {
    try {
      await _service.startTransactionPrint(true);

      // Title
      await _service.printText(
        title,
        fontSize: 1,
        bold: true,
        alignment: TextAlignment.center,
      );
      await _service.printLineWrap(1);
      await _service.printLine();

      // Items
      for (final item in items) {
        await _service.printText(
          item.formatLine(),
          alignment: item.alignment,
        );
      }

      // Summary
      if (subtotal != null || tax != null || total != null) {
        await _service.printLine();

        if (subtotal != null) {
          await _service.printText(
            subtotal,
            alignment: TextAlignment.right,
          );
        }

        if (tax != null) {
          await _service.printText(
            tax,
            alignment: TextAlignment.right,
          );
        }

        if (total != null) {
          await _service.printText(
            total,
            fontSize: 1,
            bold: true,
            alignment: TextAlignment.right,
          );
        }
      }

      // Footer
      if (footerMessage != null) {
        await _service.printLineWrap(1);
        await _service.printText(
          footerMessage,
          alignment: TextAlignment.center,
        );
      }

      await _service.printLineWrap(2);
      await _service.endTransactionPrint(true);

      return true;
    } catch (e) {
      print('Error printing receipt: $e');
      return false;
    }
  }

  /// Reset printer
  Future<bool> reset() => _service.reset();
}

/// Represents a single row in a print operation
class PrintRow {
  final String text;
  final TextAlignment alignment;
  final bool bold;
  final int fontSize; // 0=normal, 1=large, 2=small

  PrintRow({
    required this.text,
    this.alignment = TextAlignment.left,
    this.bold = false,
    this.fontSize = 0,
  });
}

/// Represents a line in a receipt
class ReceiptLine {
  final String text;
  final TextAlignment alignment;
  final bool bold;

  ReceiptLine({
    required this.text,
    this.alignment = TextAlignment.left,
    this.bold = false,
  });

  String formatLine() => text;
}

/// Two-column receipt line (item and price)
class ReceiptItemLine extends ReceiptLine {
  final String item;
  final String price;
  final int width; // Total width for formatting

  ReceiptItemLine({
    required this.item,
    required this.price,
    this.width = 32,
    bool bold = false,
  }) : super(
          text: '',
          alignment: TextAlignment.left,
          bold: bold,
        );

  @override
  String formatLine() {
    final itemWidth = width - price.length;
    return item.padRight(itemWidth) + price;
  }
}
