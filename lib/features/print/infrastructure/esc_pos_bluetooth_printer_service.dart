/// Blue Thermal Printer Implementation using `blue_thermal_printer`
import 'dart:typed_data';

import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';

class EscPosBluethoothPrinterService implements IThermalPrinterService {
  final BlueThermalPrinter _bluetooth = BlueThermalPrinter.instance;
  BluetoothDevice? _currentDevice;
  ThermalPrinter? _connectedPrinter;
  bool _isInitialized = false;

  @override
  Future<bool> isPrinterAvailable() async {
    try {
      final bonded = await _bluetooth.getBondedDevices();
      return bonded.isNotEmpty;
    } catch (e) {
      print('Error checking printer availability: $e');
      return false;
    }
  }

  @override
  Future<List<ThermalPrinter>> discoverPrinters({
    PrinterDiscoveryConfig? config,
  }) async {
    try {
      final devices = await _bluetooth.getBondedDevices();
      return devices
          .map((d) => ThermalPrinter(
                id: d.address ?? 'unknown',
                name: d.name ?? 'Unknown Printer',
                type: PrinterType.bluetooth,
                status: PrinterStatus.disconnected,
                macAddress: d.address,
                paperWidth: 58,
                maxPrintWidth: 32,
              ))
          .toList();
    } catch (e) {
      print('Error discovering printers: $e');
      return [];
    }
  }

  @override
  Future<bool> connectToPrinter(String printerId) async {
    try {
      final devices = await _bluetooth.getBondedDevices();
      final device = devices.firstWhere((d) => d.address == printerId, orElse: () => BluetoothDevice('Unknown', printerId));

      // Attempt connection
      await _bluetooth.connect(device);

      _currentDevice = device;
      _connectedPrinter = ThermalPrinter(
        id: device.address ?? printerId,
        name: device.name ?? 'Bluetooth Printer',
        type: PrinterType.bluetooth,
        status: PrinterStatus.connected,
        macAddress: device.address,
        paperWidth: 58,
        maxPrintWidth: 32,
      );

      _isInitialized = true;
      return true;
    } catch (e) {
      print('Error connecting to printer: $e');
      _connectedPrinter = null;
      _currentDevice = null;
      return false;
    }
  }

  @override
  Future<bool> disconnect() async {
    try {
      await _bluetooth.disconnect();
      _connectedPrinter = null;
      _currentDevice = null;
      _isInitialized = false;
      return true;
    } catch (e) {
      print('Error disconnecting: $e');
      return false;
    }
  }

  @override
  ThermalPrinter? getConnectedPrinter() => _connectedPrinter;

  @override
  Future<bool> initPrinter() async {
    try {
      if (_currentDevice == null) return false;
      // blue_thermal_printer does not require an explicit init; mark initialized
      _isInitialized = true;
      if (_connectedPrinter != null) {
        _connectedPrinter = _connectedPrinter!.copyWith(status: PrinterStatus.connected);
      }
      return true;
    } catch (e) {
      print('Error initializing printer: $e');
      return false;
    }
  }

  @override
  Future<PrinterStatus> getPrinterStatus() async {
    try {
      if (_connectedPrinter == null) return PrinterStatus.disconnected;
      return _isInitialized ? PrinterStatus.connected : PrinterStatus.offline;
    } catch (e) {
      print('Error getting printer status: $e');
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
      if (_currentDevice == null || !_isInitialized) return false;

      // blue_thermal_printer provides a simple print API. We'll use printCustom when available.
      // Align: 0 = left, 1 = center, 2 = right
      final align = alignment == TextAlignment.left
          ? 0
          : alignment == TextAlignment.center
              ? 1
              : 2;

      // fontSize mapping: 0 -> normal (0), >0 -> larger (1)
      final size = fontSize > 0 ? 1 : 0;

      try {
        await _bluetooth.printCustom(text, size, align);
      } catch (_) {
        // Fallback: send raw bytes with newline
        final bytes = Uint8List.fromList(text.codeUnits + [10]);
        await _bluetooth.writeBytes(bytes);
      }

      return true;
    } catch (e) {
      print('Error printing text: $e');
      return false;
    }
  }

  @override
  Future<bool> printLine({String char = '-', int repeat = 32}) async {
    try {
      if (_currentDevice == null || !_isInitialized) return false;
      final line = char * repeat;
      return await printText(line, alignment: TextAlignment.left);
    } catch (e) {
      print('Error printing line: $e');
      return false;
    }
  }

  @override
  Future<bool> printLineWrap(int count) async {
    try {
      if (_currentDevice == null || !_isInitialized) return false;
      for (int i = 0; i < count; i++) {
        try {
          await _bluetooth.printNewLine();
        } catch (_) {
          await _bluetooth.writeBytes(Uint8List.fromList([10]));
        }
      }
      return true;
    } catch (e) {
      print('Error printing line wrap: $e');
      return false;
    }
  }

  @override
  Future<bool> printBytes(Uint8List bytes) async {
    try {
      if (_currentDevice == null || !_isInitialized) return false;
      await _bluetooth.writeBytes(bytes);
      return true;
    } catch (e) {
      print('Error printing image/bytes: $e');
      return false;
    }
  }

  @override
  Future<bool> startTransactionPrint(bool clearBuffer) async {
    try {
      // No explicit transaction support; use emphasis or similar if available.
      return true;
    } catch (e) {
      print('Error starting transaction: $e');
      return false;
    }
  }

  @override
  Future<bool> endTransactionPrint(bool commit) async {
    try {
      // Try to feed and optionally cut if supported; best-effort
      try {
        await _bluetooth.paperCut();
      } catch (_) {
        // some printers don't support cut via this package
        await _bluetooth.printNewLine();
      }
      return true;
    } catch (e) {
      print('Error ending transaction: $e');
      return false;
    }
  }

  @override
  Future<bool> reset() async {
    try {
      // No explicit reset in the package; send ESC @ sequence as raw bytes
      final resetCmd = Uint8List.fromList([27, 64]);
      await _bluetooth.writeBytes(resetCmd);
      return true;
    } catch (e) {
      print('Error resetting printer: $e');
      return false;
    }
  }
}
