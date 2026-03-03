/// Domain models for thermal printer functionality
import 'package:freezed_annotation/freezed_annotation.dart';

part 'thermal_printer_model.freezed.dart';
part 'thermal_printer_model.g.dart';

/// Enum for printer types
enum PrinterType {
  sunmi, // Sunmi native printer
  escopos, // ESC-POS compatible (generic thermal printers)
  bluetooth, // Generic Bluetooth thermal printers
  network, // Network/WiFi thermal printers
}

/// Enum for printer status
enum PrinterStatus {
  connected,
  disconnected,
  printing,
  error,
  offline,
  outOfPaper,
}

/// Represents a discovered/available thermal printer
@freezed
class ThermalPrinter with _$ThermalPrinter {
  const factory ThermalPrinter({
    required String id,
    required String name,
    required PrinterType type,
    @Default(PrinterStatus.disconnected) PrinterStatus status,
    String? macAddress,
    String? ipAddress,
    int? port,
    String? model,
    int? paperWidth, // in millimeters
    int? maxPrintWidth, // in characters for 80mm printer
  }) = _ThermalPrinter;

  factory ThermalPrinter.fromJson(Map<String, dynamic> json) => _$ThermalPrinterFromJson(json);
}

/// Result of a print operation
@freezed
class PrintResult with _$PrintResult {
  const factory PrintResult({
    required bool success,
    required String? message,
    required int? jobId,
  }) = _PrintResult;

  factory PrintResult.fromJson(Map<String, dynamic> json) => _$PrintResultFromJson(json);
}

/// Configuration for printer discovery
@freezed
class PrinterDiscoveryConfig with _$PrinterDiscoveryConfig {
  const factory PrinterDiscoveryConfig({
    @Default(true) bool searchBluetooth,
    @Default(false) bool searchNetwork,
    @Default(30) int timeoutSeconds,
  }) = _PrinterDiscoveryConfig;

  factory PrinterDiscoveryConfig.fromJson(Map<String, dynamic> json) => _$PrinterDiscoveryConfigFromJson(json);
}
