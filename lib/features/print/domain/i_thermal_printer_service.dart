/// Abstract interface for thermal printer services
import 'package:flutter/foundation.dart';
import 'thermal_printer_model.dart';

abstract class IThermalPrinterService {
  /// Check if printer is available on this platform
  Future<bool> isPrinterAvailable();

  /// Discover available printers
  Future<List<ThermalPrinter>> discoverPrinters({
    PrinterDiscoveryConfig? config,
  });

  /// Connect to a specific printer
  Future<bool> connectToPrinter(String printerId);

  /// Disconnect from current printer
  Future<bool> disconnect();

  /// Get currently connected printer
  ThermalPrinter? getConnectedPrinter();

  /// Initialize printer (prepare for printing)
  Future<bool> initPrinter();

  /// Get printer status
  Future<PrinterStatus> getPrinterStatus();

  /// Print text with styling options
  Future<bool> printText(
    String text, {
    bool bold = false,
    bool underline = false,
    int fontSize = 0, // 0 = normal, 1 = large, 2 = small
    TextAlignment alignment = TextAlignment.left,
  });

  /// Print line separator
  Future<bool> printLine({String char = '-', int repeat = 32});

  /// Print blank lines
  Future<bool> printLineWrap(int count);

  /// Print raw bytes
  Future<bool> printBytes(Uint8List bytes);

  /// Start transaction print (batch printing)
  Future<bool> startTransactionPrint(bool clearBuffer);

  /// End transaction print (send all queued commands)
  Future<bool> endTransactionPrint(bool commit);

  /// Reset printer
  Future<bool> reset();
}

enum TextAlignment {
  left,
  center,
  right,
}
