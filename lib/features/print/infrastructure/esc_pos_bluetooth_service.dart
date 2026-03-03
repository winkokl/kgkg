/// ESC-POS Bluetooth Thermal Printer Service
/// Implements IThermalPrinterService for Bluetooth-based ESC-POS thermal printers
import 'dart:typed_data';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';
import 'bluetooth_permission.dart';
import '../domain/printer_exceptions.dart';

class EscPosBluethoothService implements IThermalPrinterService {
  static final EscPosBluethoothService _instance = EscPosBluethoothService._internal();

  factory EscPosBluethoothService() {
    return _instance;
  }

  EscPosBluethoothService._internal();

  final FlutterBluetoothSerial _bluetooth = FlutterBluetoothSerial.instance;
  BluetoothConnection? _connection;
  BluetoothDevice? _connectedDevice;

  @override
  Future<bool> isPrinterAvailable() async {
    try {
      final isEnabled = await _bluetooth.isEnabled ?? false;
      return isEnabled && _connection != null && _connection!.isConnected;
    } catch (e) {
      print('Error checking printer availability: $e');
      return false;
    }
  }

  @override
  Future<List<ThermalPrinter>> discoverPrinters({PrinterDiscoveryConfig? config}) async {
    try {
      // Ensure runtime Bluetooth permissions are granted on Android before discovery.
      final permsOk = await ensureBluetoothPermissions();
      if (!permsOk) {
        // Surface a typed exception so callers (UI) can react and show a permission dialog
        throw BluetoothPermissionDeniedException('Bluetooth runtime permissions not granted');
      }
      final isEnabled = await _bluetooth.isEnabled ?? false;
      if (!isEnabled) {
        print('Bluetooth is not enabled');
        return [];
      }

      final List<BluetoothDevice> devices = [];

      try {
        // Get bonded devices with timeout
        final bondedDevices = await _bluetooth.getBondedDevices().timeout(
          const Duration(seconds: 5),
          onTimeout: () {
            print('Timeout getting bonded devices');
            return <BluetoothDevice>[];
          },
        );
        devices.addAll(bondedDevices);
      } catch (e) {
        print('Error getting bonded devices: $e');
      }

      // Remove duplicates based on address
      final uniqueDevices = <String, BluetoothDevice>{};
      for (var device in devices) {
        final addr = device.address;
        uniqueDevices[addr] = device;
      }

      return uniqueDevices.values
          .map((device) => ThermalPrinter(
                id: device.address,
                name: device.name ?? 'Unknown Device',
                type: PrinterType.bluetooth,
                status: PrinterStatus.disconnected,
                macAddress: device.address,
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
      if (_connection != null && _connection!.isConnected) {
        await _connection!.close();
      }

      _connection = await BluetoothConnection.toAddress(printerId);

      // Store the connected device info
      final bondedDevices = await _bluetooth.getBondedDevices();
      _connectedDevice = bondedDevices.firstWhere(
        (device) => device.address == printerId,
        orElse: () => BluetoothDevice(
          name: 'Unknown',
          address: printerId,
        ),
      );

      return _connection != null && _connection!.isConnected;
    } catch (e) {
      print('Connection error: $e');
      _connection = null;
      return false;
    }
  }

  @override
  Future<bool> disconnect() async {
    try {
      if (_connection != null && _connection!.isConnected) {
        await _connection!.close();
      }
      _connection = null;
      _connectedDevice = null;
      return true;
    } catch (e) {
      print('Disconnect error: $e');
      return false;
    }
  }

  @override
  ThermalPrinter? getConnectedPrinter() {
    try {
      if (_connectedDevice == null || _connection == null) {
        return null;
      }

      return ThermalPrinter(
        id: _connectedDevice!.address,
        name: _connectedDevice!.name ?? 'Unknown',
        type: PrinterType.bluetooth,
        status: _connection!.isConnected ? PrinterStatus.connected : PrinterStatus.disconnected,
        macAddress: _connectedDevice!.address,
        paperWidth: 58,
        maxPrintWidth: 32,
      );
    } catch (e) {
      print('Error getting connected printer: $e');
      return null;
    }
  }

  @override
  Future<bool> initPrinter() async {
    try {
      if (!await isPrinterAvailable()) {
        print('Printer not available');
        return false;
      }

      // Reset printer with ESC @ command
      const List<int> resetCmd = [27, 64]; // ESC @
      return await sendRawBytes(resetCmd);
    } catch (e) {
      print('Error initializing printer: $e');
      return false;
    }
  }

  @override
  Future<bool> reset() async {
    try {
      // ESC @ - Reset printer to default state
      const List<int> resetCmd = [27, 64];
      return await sendRawBytes(resetCmd);
    } catch (e) {
      print('Error resetting printer: $e');
      return false;
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
      if (!await isPrinterAvailable()) {
        print('Printer not available');
        return false;
      }

      final bytes = _formatText(text, alignment);
      return await sendRawBytes(bytes);
    } catch (e) {
      print('Error printing text: $e');
      return false;
    }
  }

  @override
  Future<bool> printLine({String char = '-', int repeat = 32}) async {
    try {
      if (!await isPrinterAvailable()) {
        print('Printer not available');
        return false;
      }

      final line = char * repeat;
      return await printText(line);
    } catch (e) {
      print('Error printing line: $e');
      return false;
    }
  }

  @override
  Future<bool> printLineWrap(int count) async {
    try {
      if (!await isPrinterAvailable()) {
        print('Printer not available');
        return false;
      }

      final List<int> feeds = List.filled(count, 10); // LF count times
      return await sendRawBytes(feeds);
    } catch (e) {
      print('Error printing wrapped lines: $e');
      return false;
    }
  }

  @override
  Future<bool> printBytes(Uint8List bytes) async {
    try {
      if (!await isPrinterAvailable()) {
        print('Printer not available');
        return false;
      }

      return await sendRawBytes(bytes);
    } catch (e) {
      print('Error printing bytes: $e');
      return false;
    }
  }

  @override
  Future<PrinterStatus> getPrinterStatus() async {
    try {
      if (_connection == null) {
        return PrinterStatus.disconnected;
      }

      if (_connection!.isConnected) {
        return PrinterStatus.connected;
      } else {
        return PrinterStatus.disconnected;
      }
    } catch (e) {
      print('Error getting printer status: $e');
      return PrinterStatus.disconnected;
    }
  }

  @override
  Future<bool> startTransactionPrint(bool clearBuffer) async {
    try {
      // ESC E 1 - Turn on emphasis (bold) as a marker for transaction
      const List<int> emphasisOn = [27, 69, 1];
      return await sendRawBytes(emphasisOn);
    } catch (e) {
      print('Error starting transaction: $e');
      return false;
    }
  }

  @override
  Future<bool> endTransactionPrint(bool commit) async {
    try {
      // ESC E 0 - Turn off emphasis
      const List<int> emphasisOff = [27, 69, 0];
      await sendRawBytes(emphasisOff);

      // ESC i - Partial cut (best-effort)
      const List<int> partialCut = [27, 105];
      await sendRawBytes(partialCut);

      // LF - Line feed
      const List<int> lineFeed = [10, 10];
      return await sendRawBytes(lineFeed);
    } catch (e) {
      print('Error ending transaction: $e');
      return false;
    }
  }

  /// Send raw bytes to the printer
  Future<bool> sendRawBytes(List<int> bytes) async {
    try {
      if (_connection == null || !_connection!.isConnected) {
        print('Printer not connected');
        return false;
      }

      _connection!.output.add(Uint8List.fromList(bytes));
      await _connection!.output.allSent;

      // Small delay to ensure data is processed
      await Future.delayed(const Duration(milliseconds: 100));

      return true;
    } catch (e) {
      print('Error sending bytes: $e');
      return false;
    }
  }

  /// Enable Bluetooth
  Future<bool> enableBluetooth() async {
    try {
      final result = await _bluetooth.requestEnable();
      return result ?? false;
    } catch (e) {
      print('Error enabling Bluetooth: $e');
      return false;
    }
  }

  /// Check if Bluetooth is enabled
  Future<bool> isBluetoothEnabled() async {
    try {
      return await _bluetooth.isEnabled ?? false;
    } catch (e) {
      print('Error checking Bluetooth status: $e');
      return false;
    }
  }

  /// Format text with alignment
  List<int> _formatText(String text, TextAlignment alignment) {
    final bytes = <int>[];

    // Set alignment
    switch (alignment) {
      case TextAlignment.left:
        bytes.addAll([27, 97, 0]); // ESC a 0 (Left align)
        break;
      case TextAlignment.center:
        bytes.addAll([27, 97, 1]); // ESC a 1 (Center align)
        break;
      case TextAlignment.right:
        bytes.addAll([27, 97, 2]); // ESC a 2 (Right align)
        break;
    }

    // Add text
    bytes.addAll(text.codeUnits);

    // Add line feed
    bytes.add(10); // LF

    return bytes;
  }
}
