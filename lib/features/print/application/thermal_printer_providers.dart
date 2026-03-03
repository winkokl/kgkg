/// Riverpod providers for thermal printer services
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/i_thermal_printer_service.dart';
import '../domain/thermal_printer_model.dart';
import '../infrastructure/sunmi_printer_service.dart';

/// Provider for thermal printer service implementation
final thermalPrinterServiceProvider = Provider<IThermalPrinterService>((ref) {
  return SunmiPrinterService();
});

/// Provider for list of discovered printers
final discoveredPrintersProvider = FutureProvider<List<ThermalPrinter>>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);
  return service.discoverPrinters();
});

/// Provider for currently connected printer
final connectedPrinterProvider = StateProvider<ThermalPrinter?>((ref) {
  final service = ref.watch(thermalPrinterServiceProvider);
  return service.getConnectedPrinter();
});

/// Provider for printer status
final printerStatusProvider = FutureProvider<PrinterStatus>((ref) async {
  final service = ref.watch(thermalPrinterServiceProvider);
  return service.getPrinterStatus();
});
