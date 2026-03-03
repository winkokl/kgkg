/// Sunmi native printer implementation
import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/enums.dart' hide PrinterStatus;
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';

class SunmiPrinterService implements IThermalPrinterService {
  ThermalPrinter? _connectedPrinter;
  bool _isInitialized = false;

  @override
  Future<bool> isPrinterAvailable() async {
    try {
      await SunmiPrinter.bindingPrinter();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<ThermalPrinter>> discoverPrinters({
    PrinterDiscoveryConfig? config,
  }) async {
    // Sunmi printers are built-in, no discovery needed
    // Return the built-in Sunmi printer if available
    try {
      final isAvailable = await isPrinterAvailable();
      if (isAvailable) {
        const printer = ThermalPrinter(
          id: 'sunmi_builtin',
          name: 'Sunmi Built-in Printer',
          type: PrinterType.sunmi,
          status: PrinterStatus.disconnected,
          paperWidth: 58, // 58mm is standard for Sunmi
          maxPrintWidth: 32,
        );
        return [printer];
      }
    } catch (e) {
      print('Error discovering Sunmi printer: $e');
    }
    return [];
  }

  @override
  Future<bool> connectToPrinter(String printerId) async {
    try {
      if (printerId == 'sunmi_builtin') {
        await SunmiPrinter.bindingPrinter();
        _connectedPrinter = ThermalPrinter(
          id: printerId,
          name: 'Sunmi Built-in Printer',
          type: PrinterType.sunmi,
          status: PrinterStatus.connected,
          paperWidth: 58,
          maxPrintWidth: 32,
        );
        return true;
      }
    } catch (e) {
      print('Error connecting to Sunmi printer: $e');
    }
    return false;
  }

  @override
  Future<bool> disconnect() async {
    try {
      _connectedPrinter = null;
      _isInitialized = false;
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  ThermalPrinter? getConnectedPrinter() => _connectedPrinter;

  @override
  Future<bool> initPrinter() async {
    try {
      if (_connectedPrinter != null) {
        await SunmiPrinter.initPrinter();
        _isInitialized = true;
        return true;
      }
    } catch (e) {
      print('Error initializing Sunmi printer: $e');
    }
    return false;
  }

  @override
  Future<PrinterStatus> getPrinterStatus() async {
    try {
      if (_connectedPrinter == null) return PrinterStatus.disconnected;

      // Try to get printer status from Sunmi API
      // This is a simplified version - actual implementation depends on Sunmi API
      final isAvailable = await isPrinterAvailable();
      return isAvailable ? PrinterStatus.connected : PrinterStatus.disconnected;
    } catch (e) {
      return PrinterStatus.error;
    }
  }

  @override
  Future<bool> printText(
    String text, {
    bool bold = false,
    bool underline = false,
    int fontSize = 0,
    TextAlignment alignment = TextAlignment.left,
  }) async {
    try {
      if (_connectedPrinter == null || !_isInitialized) return false;

      final sunmiAlign = _convertAlignment(alignment);
      await SunmiPrinter.setAlignment(sunmiAlign);

      final sunmiFontSize = _convertFontSize(fontSize);
      final style = SunmiStyle(
        fontSize: sunmiFontSize,
        bold: bold,
        align: sunmiAlign,
      );

      await SunmiPrinter.printText(text, style: style);
      return true;
    } catch (e) {
      print('Error printing text: $e');
      return false;
    }
  }

  @override
  Future<bool> printLine({String char = '-', int repeat = 32}) async {
    try {
      if (_connectedPrinter == null || !_isInitialized) return false;
      await SunmiPrinter.line();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> printLineWrap(int count) async {
    try {
      if (_connectedPrinter == null || !_isInitialized) return false;
      await SunmiPrinter.lineWrap(count);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> printBytes(Uint8List bytes) async {
    try {
      if (_connectedPrinter == null || !_isInitialized) return false;
      await SunmiPrinter.printImage(bytes);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> startTransactionPrint(bool clearBuffer) async {
    try {
      if (_connectedPrinter == null) return false;
      await SunmiPrinter.startTransactionPrint(clearBuffer);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> endTransactionPrint(bool commit) async {
    try {
      if (_connectedPrinter == null) return false;
      await SunmiPrinter.exitTransactionPrint(commit);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> reset() async {
    try {
      if (_connectedPrinter == null) return false;
      // Sunmi doesn't have a resetPrinter method, use initPrinter instead
      await SunmiPrinter.initPrinter();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Convert our TextAlignment to Sunmi alignment
  SunmiPrintAlign _convertAlignment(TextAlignment alignment) {
    switch (alignment) {
      case TextAlignment.left:
        return SunmiPrintAlign.LEFT;
      case TextAlignment.center:
        return SunmiPrintAlign.CENTER;
      case TextAlignment.right:
        return SunmiPrintAlign.RIGHT;
    }
  }

  /// Convert font size enum to Sunmi font size
  SunmiFontSize _convertFontSize(int fontSize) {
    switch (fontSize) {
      case 0:
        return SunmiFontSize.MD;
      case 1:
        return SunmiFontSize.LG;
      case 2:
        return SunmiFontSize.SM;
      default:
        return SunmiFontSize.MD;
    }
  }
}
