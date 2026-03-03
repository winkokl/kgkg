/// Riverpod providers for thermal printer services with support for multiple printer types
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';
import '../infrastructure/sunmi_printer_service.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';

/// Selected printer type provider
final selectedPrinterTypeProvider = StateProvider<PrinterType>((ref) {
  return PrinterType.bluetooth; // Default to Bluetooth
});

/// Thermal printer service provider - selects appropriate implementation
final thermalPrinterServiceProvider = Provider<IThermalPrinterService>((ref) {
  final printerType = ref.watch(selectedPrinterTypeProvider);

  switch (printerType) {
    case PrinterType.sunmi:
      return SunmiPrinterService();
    case PrinterType.bluetooth:
      return EscPosBluethoothService();
    case PrinterType.escopos:
      return EscPosBluethoothService();
    default:
      return EscPosBluethoothService();
  }
});

/// Provider for list of discovered printers
final discoveredPrintersProvider = FutureProvider<List<ThermalPrinter>>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);
  // Let exceptions propagate so the UI can handle specific error types (e.g. permission denied)
  return await service.discoverPrinters().timeout(
    const Duration(seconds: 7),
    onTimeout: () => <ThermalPrinter>[],
  );
});

/// Provider for currently connected printer
final connectedPrinterProvider = StateProvider<ThermalPrinter?>((ref) {
  return null;
});

/// Provider for printer status
final printerStatusProvider = FutureProvider<PrinterStatus>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);
  return service.getPrinterStatus();
});

/// Provider to manually refresh discovered printers
final refreshDiscoveredPrintersProvider = FutureProvider<List<ThermalPrinter>>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);
  return await service.discoverPrinters().timeout(
    const Duration(seconds: 7),
    onTimeout: () => <ThermalPrinter>[],
  );
});

/// Provider for Bluetooth enabled status
final isBluetoothEnabledProvider = FutureProvider<bool>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);

  // If it's Bluetooth service, check if Bluetooth is enabled
  if (service is EscPosBluethoothService) {
    try {
      return await service.isBluetoothEnabled().timeout(
            const Duration(seconds: 5),
            onTimeout: () => false,
          );
    } catch (e) {
      return false;
    }
  }

  return true; // Other printer types don't need Bluetooth check
});
