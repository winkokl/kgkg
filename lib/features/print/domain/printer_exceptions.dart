/// Typed exceptions for printer operations
class BluetoothPermissionDeniedException implements Exception {
  final String message;
  BluetoothPermissionDeniedException([this.message = 'Bluetooth permission denied']);

  @override
  String toString() => 'BluetoothPermissionDeniedException: $message';
}

class PrinterDiscoveryException implements Exception {
  final String message;
  PrinterDiscoveryException([this.message = 'Failed to discover printers']);

  @override
  String toString() => 'PrinterDiscoveryException: $message';
}
