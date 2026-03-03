# Thermal Printer Integration Guide

## Overview

This guide explains how to use the thermal printer service in your DMS Mobile app. The system provides:

- **Abstracted printer interface** for vendor-agnostic printing
- **Sunmi printer implementation** (primary for your app)
- **Extensible architecture** for other thermal printers (ESC-POS, Bluetooth, etc.)
- **Transaction-based printing** for batch operations
- **Formatted receipt printing** with alignment and styling

## Architecture

```
IThermalPrinterService (Abstract Interface)
├── SunmiPrinterService (Sunmi Implementation)
└── [Future: BluetoothPrinterService, NetworkPrinterService, etc.]

ThermalPrinterManager (High-level Manager)
└── Handles initialization, connection, and unified API

PrintInvoiceV2 (Application Layer)
└── Uses ThermalPrinterManager for invoice printing
```

## Setup

### 1. Dependencies

Your app already has `sunmi_printer_plus` in `pubspec.yaml`. No additional dependencies needed for basic Sunmi printing.

### 2. Android Configuration

Your app is already configured. Ensure these permissions exist in `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.INTERNET" />
```

### 3. iOS Configuration

For iOS 13+, add to `ios/Runner/Info.plist`:

```xml
<key>NSLocalNetworkUsageDescription</key>
<string>We need to connect to your thermal printer</string>
<key>NSBonjourServices</key>
<array>
    <string>_ipp._tcp</string>
</array>
</xml>
```

## Usage

### Basic Invoice Printing

```dart
import 'package:mgkaung_dms_mobile/features/print/presentation/print_invoice_v2.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';

// Create invoice object
final invoice = InvoicePrintFormat(
  customerName: 'John Doe',
  code: 'INV-001',
  date: '2025-12-02',
  dueDate: '2025-12-09',
  products: [...],
  subtotal: 1000,
  discount: 100,
  tax: 50,
  otherCharges: 0,
  grandTotal: 950,
  paymentTerm: '7',
);

// Print
final printer = PrintInvoiceV2();
final success = await printer.printInvoice(invoice);

if (success) {
  print('Invoice printed successfully');
} else {
  print('Printing failed');
}
```

### Direct Service Usage

For more control, use the service directly:

```dart
import 'package:mgkaung_dms_mobile/features/print/application/thermal_printer_manager.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/i_thermal_printer_service.dart';

final manager = ThermalPrinterManager();

// Initialize printer
if (!await manager.initialize('sunmi_builtin')) {
  print('Failed to connect');
  return;
}

final service = manager.service;

// Use transaction for batch printing
await service.startTransactionPrint(true);

await service.printText(
  'My Receipt',
  fontSize: 1,
  bold: true,
  alignment: TextAlignment.center,
);

await service.printLineWrap(1);
await service.printLine();

await service.printText('Item: Widget');
await service.printText('Price: \$50');

await service.printLineWrap(2);

await service.endTransactionPrint(true);

// Disconnect
await manager.disconnect();
```

### Receipt Printing

```dart
final result = await manager.printReceipt(
  title: 'Store Receipt',
  items: [
    ReceiptItemLine(item: 'Widget A', price: '\$25.00'),
    ReceiptItemLine(item: 'Widget B', price: '\$15.00'),
  ],
  subtotal: 'Subtotal:                \$40.00',
  tax: 'Tax:                      \$4.00',
  total: 'TOTAL:                   \$44.00',
  footerMessage: 'Thank you for shopping!',
);
```

## API Reference

### ThermalPrinterManager

#### Methods

- `initialize(printerId)` - Connect and initialize printer
- `discoverPrinters({config})` - Find available printers
- `isPrinterReady()` - Check if connected and ready
- `getStatus()` - Get current printer status
- `getConnectedPrinter()` - Get currently connected printer info
- `disconnect()` - Disconnect from printer
- `printInvoice(...)` - Print formatted invoice
- `printReceipt(...)` - Print formatted receipt
- `reset()` - Reset printer

#### Properties

- `service` - Direct access to underlying IThermalPrinterService

### IThermalPrinterService

#### Core Methods

- `isPrinterAvailable()` - Check if printer exists on platform
- `discoverPrinters({config})` - Discover available printers
- `connectToPrinter(printerId)` - Connect to specific printer
- `disconnect()` - Disconnect
- `initPrinter()` - Initialize for printing
- `getPrinterStatus()` - Get PrinterStatus enum value
- `getConnectedPrinter()` - Get ThermalPrinter info

#### Printing Methods

- `printText(text, {bold, underline, fontSize, alignment})` - Print text
- `printLine({char, repeat})` - Print separator line
- `printLineWrap(count)` - Print blank lines
- `printBytes(bytes)` - Print binary data (images)
- `startTransactionPrint(clearBuffer)` - Begin batch print
- `endTransactionPrint(commit)` - End batch and send to printer
- `reset()` - Reset printer state

### Enums

#### PrinterType
- `sunmi` - Sunmi built-in printer
- `escopos` - ESC-POS compatible
- `bluetooth` - Bluetooth thermal printer
- `network` - Network/WiFi printer

#### PrinterStatus
- `connected` - Ready to print
- `disconnected` - Not connected
- `printing` - Currently printing
- `error` - Error state
- `offline` - Printer offline
- `outOfPaper` - Paper depleted

#### TextAlignment
- `left` - Align text left
- `center` - Center text
- `right` - Align text right

## Models

### ThermalPrinter

```dart
ThermalPrinter(
  id: 'sunmi_builtin',
  name: 'Sunmi Built-in Printer',
  type: PrinterType.sunmi,
  status: PrinterStatus.connected,
  macAddress: 'AA:BB:CC:DD:EE:FF', // optional
  ipAddress: '192.168.1.100', // optional
  port: 9100, // optional
  model: 'T2', // optional
  paperWidth: 58, // mm
  maxPrintWidth: 32, // characters
)
```

### PrinterDiscoveryConfig

```dart
PrinterDiscoveryConfig(
  searchBluetooth: true,
  searchNetwork: false,
  timeoutSeconds: 30,
)
```

## Extending for Other Printers

### Add Bluetooth Printer Support

Create `lib/features/print/infrastructure/bluetooth_printer_service.dart`:

```dart
import '../domain/i_thermal_printer_service.dart';

class BluetoothPrinterService implements IThermalPrinterService {
  @override
  Future<List<ThermalPrinter>> discoverPrinters({
    PrinterDiscoveryConfig? config,
  }) async {
    // Use bluetooth_print or similar package
    // Return list of discovered printers
  }

  // Implement other interface methods...
}
```

### Update ThermalPrinterManager

```dart
class ThermalPrinterManager {
  static IThermalPrinterService selectService(PrinterType type) {
    switch (type) {
      case PrinterType.sunmi:
        return SunmiPrinterService();
      case PrinterType.bluetooth:
        return BluetoothPrinterService();
      default:
        return SunmiPrinterService();
    }
  }
  // ...
}
```

## Error Handling

```dart
try {
  if (!await manager.initialize('sunmi_builtin')) {
    // Handle connection failure
  }
  
  final status = await manager.getStatus();
  if (status == PrinterStatus.outOfPaper) {
    // Show alert to user
  }
  
  final success = await manager.printReceipt(...);
  if (!success) {
    // Handle printing failure
  }
} catch (e) {
  print('Error: $e');
} finally {
  await manager.disconnect();
}
```

## Troubleshooting

### Printer Not Found

1. Verify printer is powered on
2. Check if printer is already connected to another device
3. Use `discoverPrinters()` to diagnose

### Printing Fails

1. Check `getPrinterStatus()` - may be out of paper or offline
2. Verify `initialize()` succeeded before printing
3. Ensure `endTransactionPrint(true)` is called to actually send print job

### Image Printing Issues

1. Convert image to Uint8List using `getImageFromAsset()`
2. Keep image small (thermal printer width = 58mm)
3. Use grayscale PNG for best results

## Migration from Old Code

### Before (using Sunmi directly)

```dart
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

class PrintInvoice {
  static Future<void> print(InvoicePrintFormat invoice) async {
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.initPrinter();
    // ... printing code
  }
}
```

### After (using new service)

```dart
import 'package:mgkaung_dms_mobile/features/print/presentation/print_invoice_v2.dart';

final printer = PrintInvoiceV2();
final success = await printer.printInvoice(invoice);
```

## Best Practices

1. **Always disconnect** - Call `disconnect()` in finally block or when done
2. **Use transactions** - Wrap multiple prints in `startTransactionPrint` / `endTransactionPrint`
3. **Check status** - Always verify `getStatus()` before printing
4. **Handle errors** - Use try-catch and check return values
5. **Test formatting** - Print test receipts before deploying
6. **Cache printer** - Don't create new ThermalPrinterManager instances repeatedly

## Future Enhancements

- [ ] Add ESC-POS command support for generic thermal printers
- [ ] Bluetooth thermal printer discovery
- [ ] Network/WiFi thermal printer support
- [ ] Printer settings UI (font size, darkness, etc.)
- [ ] Print job queue and scheduling
- [ ] Barcode and QR code printing
- [ ] Receipt templating engine
