# Thermal Printer Service - Architecture Diagrams

## System Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                        USER'S APP                               │
│  (Your screens, widgets, business logic)                       │
└────────────────────────┬────────────────────────────────────────┘
                         │ imports
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  PRESENTATION LAYER (print_invoice_v2.dart)                    │
│                                                                 │
│  class PrintInvoiceV2                                          │
│    └─ printInvoice(invoice)                                   │
└────────────────────────┬────────────────────────────────────────┘
                         │ uses
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  APPLICATION LAYER (thermal_printer_manager.dart)              │
│                                                                 │
│  class ThermalPrinterManager                                   │
│    ├─ initialize(printerId)                                   │
│    ├─ printInvoice(...)                                       │
│    ├─ printReceipt(...)                                       │
│    └─ service (getter → IThermalPrinterService)               │
└────────────────────────┬────────────────────────────────────────┘
                         │ delegates
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  INFRASTRUCTURE LAYER (sunmi_printer_service.dart)             │
│                                                                 │
│  class SunmiPrinterService implements IThermalPrinterService   │
│    ├─ connectToPrinter(id)                                    │
│    ├─ printText(text, ...)                                    │
│    ├─ startTransactionPrint()                                 │
│    └─ [16 other methods...]                                   │
└────────────────────────┬────────────────────────────────────────┘
                         │ implements
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  DOMAIN LAYER (i_thermal_printer_service.dart)                 │
│                                                                 │
│  abstract class IThermalPrinterService                         │
│    ├─ Future<bool> connectToPrinter(printerId)                │
│    ├─ Future<bool> printText(text)                            │
│    ├─ Future<PrinterStatus> getPrinterStatus()               │
│    └─ [13 other methods...]                                   │
│                                                                 │
│  + Data Models (thermal_printer_model.dart)                    │
│    ├─ ThermalPrinter                                          │
│    ├─ PrinterStatus enum                                      │
│    ├─ PrinterType enum                                        │
│    └─ TextAlignment enum                                      │
└────────────────────────┬────────────────────────────────────────┘
                         │ native calls
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│              SUNMI PRINTER HARDWARE                             │
│                                                                 │
│  Physical Thermal Printer (58mm, 80mm, etc.)                  │
└─────────────────────────────────────────────────────────────────┘
```

## Detailed Layer Architecture

### 1. Domain Layer (Contracts)

```
┌─────────────────────────────────────────────┐
│  IThermalPrinterService (Interface)        │
├─────────────────────────────────────────────┤
│ Connection Methods                         │
│  - isPrinterAvailable()                   │
│  - connectToPrinter(id)                   │
│  - disconnect()                           │
├─────────────────────────────────────────────┤
│ Initialization Methods                     │
│  - initPrinter()                          │
│  - reset()                                │
├─────────────────────────────────────────────┤
│ Printing Methods                           │
│  - printText(text, style)                 │
│  - printLine()                            │
│  - printBytes(data)                       │
├─────────────────────────────────────────────┤
│ State Methods                              │
│  - getPrinterStatus()                     │
│  - getConnectedPrinter()                  │
├─────────────────────────────────────────────┤
│ Transaction Methods                        │
│  - startTransactionPrint()                │
│  - endTransactionPrint()                  │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│  Data Models (thermal_printer_model.dart)  │
├─────────────────────────────────────────────┤
│ ThermalPrinter                             │
│  - id: String                             │
│  - name: String                           │
│  - type: PrinterType                      │
│  - status: PrinterStatus                  │
│  - macAddress: String?                    │
│  - ipAddress: String?                     │
│  - port: int?                             │
│  - paperWidth: int?                       │
│  - maxPrintWidth: int?                    │
├─────────────────────────────────────────────┤
│ Enums                                      │
│  PrinterType                              │
│   ├─ sunmi                                │
│   ├─ escopos                              │
│   ├─ bluetooth                            │
│   └─ network                              │
├─────────────────────────────────────────────┤
│  PrinterStatus                             │
│   ├─ connected ✓                          │
│   ├─ disconnected ✗                       │
│   ├─ printing ⟳                          │
│   ├─ error ⚠                             │
│   ├─ offline ⏻                           │
│   └─ outOfPaper ◦                         │
└─────────────────────────────────────────────┘
```

### 2. Infrastructure Layer (Implementations)

```
┌──────────────────────────────────────────────────┐
│ SunmiPrinterService                             │
│ implements IThermalPrinterService               │
├──────────────────────────────────────────────────┤
│                                                  │
│ ┌────────────────────────────────────────────┐  │
│ │ Wraps sunmi_printer_plus package          │  │
│ │                                            │  │
│ │ SunmiPrinter.bindingPrinter()             │  │
│ │ SunmiPrinter.initPrinter()                │  │
│ │ SunmiPrinter.printText(...)               │  │
│ │ SunmiPrinter.printLine()                  │  │
│ │ SunmiPrinter.printImage(...)              │  │
│ │ SunmiPrinter.startTransactionPrint()      │  │
│ │ SunmiPrinter.exitTransactionPrint()       │  │
│ └────────────────────────────────────────────┘  │
│                                                  │
│ Conversions                                     │
│  TextAlignment ↔ SunmiPrintAlign               │
│  PrinterStatus ↔ Sunmi Status                  │
│  int fontSize ↔ SunmiFontSize                  │
│                                                  │
└──────────────────────────────────────────────────┘

Future Implementations (Ready to add):

┌──────────────────────────────────────────────────┐
│ BluetoothPrinterService                         │
│ implements IThermalPrinterService               │
├──────────────────────────────────────────────────┤
│ Wraps: bluetooth_print or similar package       │
└──────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────┐
│ EscPosPrinterService                            │
│ implements IThermalPrinterService               │
├──────────────────────────────────────────────────┤
│ Wraps: esc_pos_printer package                  │
└──────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────┐
│ NetworkPrinterService                           │
│ implements IThermalPrinterService               │
├──────────────────────────────────────────────────┤
│ Wraps: Network printing (Windows, etc.)         │
└──────────────────────────────────────────────────┘
```

### 3. Application Layer (High-Level API)

```
┌───────────────────────────────────────────────────────┐
│ ThermalPrinterManager                                │
├───────────────────────────────────────────────────────┤
│                                                       │
│ Private: _service: IThermalPrinterService           │
│                                                       │
│ Public Methods:                                      │
│  initialize(printerId) → bool                       │
│    └─ calls _service.connectToPrinter()             │
│    └─ calls _service.initPrinter()                  │
│                                                       │
│  discoverPrinters(config) → List<ThermalPrinter>   │
│    └─ calls _service.discoverPrinters()             │
│                                                       │
│  getStatus() → PrinterStatus                        │
│    └─ calls _service.getPrinterStatus()             │
│                                                       │
│  printInvoice(header, rows, footer, ...) → bool     │
│    ├─ startTransactionPrint()                       │
│    ├─ printText() [multiple times]                  │
│    ├─ printLine()                                   │
│    └─ endTransactionPrint()                         │
│                                                       │
│  printReceipt(title, items, total, ...) → bool      │
│    ├─ startTransactionPrint()                       │
│    ├─ [format and print items]                      │
│    └─ endTransactionPrint()                         │
│                                                       │
│  disconnect() → bool                                │
│    └─ calls _service.disconnect()                   │
│                                                       │
│ Helper Classes:                                     │
│  PrintRow                                           │
│  ReceiptLine                                        │
│  ReceiptItemLine                                    │
│                                                       │
└───────────────────────────────────────────────────────┘

┌───────────────────────────────────────────────────────┐
│ Riverpod Providers (thermal_printer_providers.dart)  │
├───────────────────────────────────────────────────────┤
│                                                       │
│ thermalPrinterServiceProvider                        │
│  └─ provides IThermalPrinterService instance        │
│                                                       │
│ discoveredPrintersProvider                           │
│  └─ provides Future<List<ThermalPrinter>>           │
│                                                       │
│ connectedPrinterProvider                             │
│  └─ provides StateProvider<ThermalPrinter?>         │
│                                                       │
│ printerStatusProvider                                │
│  └─ provides Future<PrinterStatus>                  │
│                                                       │
└───────────────────────────────────────────────────────┘
```

### 4. Presentation Layer (User-Facing)

```
┌────────────────────────────────────────────────────┐
│ PrintInvoiceV2                                    │
├────────────────────────────────────────────────────┤
│                                                    │
│ Fields:                                           │
│  printerManager: ThermalPrinterManager            │
│                                                    │
│ Methods:                                          │
│  printInvoice(invoice) → bool                     │
│                                                    │
│ Internal Methods:                                 │
│  _printHeader(service, logoBytes)                 │
│  _printInvoiceInfo(service, invoice)              │
│  _printItemsHeader(service)                       │
│  _printItems(service, invoice)                    │
│  _printTotals(service, invoice)                   │
│  _printFooter(service, invoice)                   │
│  _padRight(text, width) → String                  │
│                                                    │
│ Flow:                                             │
│  1. Initialize printer                            │
│  2. Get logo image                                │
│  3. Start transaction                             │
│  4. Print header, info, items, totals, footer     │
│  5. End transaction                               │
│  6. Disconnect                                    │
│                                                    │
└────────────────────────────────────────────────────┘
```

## Data Flow Diagrams

### Printing an Invoice

```
User Clicks Print
         ↓
PrintInvoiceV2.printInvoice(invoice)
         ↓
  ThermalPrinterManager.initialize('sunmi_builtin')
         ↓
    SunmiPrinterService.connectToPrinter()
         ↓
      SunmiPrinter.bindingPrinter() [Native]
         ↓
   Initialize Successful ✓
         ↓
PrintInvoiceV2._printHeader()
         ↓
  service.startTransactionPrint()
         ↓
    Buffer all commands
         ↓
PrintInvoiceV2._printItems()
         ↓
  service.printText() [Buffered]
         ↓
PrintInvoiceV2._printTotals()
         ↓
  service.printLine() [Buffered]
         ↓
PrintInvoiceV2._printFooter()
         ↓
  service.endTransactionPrint(true)
         ↓
    SunmiPrinter.exitTransactionPrint() [Native]
         ↓
   Send All Commands to Printer
         ↓
      PRINT OUTPUT ✓
         ↓
    ThermalPrinterManager.disconnect()
         ↓
   Complete & Return true
```

### Discovering Printers

```
Manager.discoverPrinters()
         ↓
  Service.discoverPrinters()
         ↓
┌─ For Sunmi:
│   └─ Check if printer available
│       └─ Return SunmiPrinterService
│           └─ List with 1 item
│
├─ For Bluetooth (Future):
│   └─ Scan for nearby devices
│       └─ Filter by type
│           └─ List discovered devices
│
└─ For Network (Future):
    └─ Send mDNS query
        └─ Collect responses
            └─ List available printers
         ↓
   Return List<ThermalPrinter>
```

## State Machine

```
┌─────────────────┐
│   INITIAL       │
└────────┬────────┘
         │ initialize()
         ↓
┌─────────────────┐
│  CONNECTED ← ─ ─ ← isPrinterReady()
└────┬────────────┘
     │ startTransactionPrint()
     ↓
┌─────────────────┐
│   BUFFERING     │
│  (command queue)│
└────┬────────────┘
     │ printText(), printLine(), etc.
     ├───────────────┐
     │ (accumulate)  │
     └───────────────┘
     │ endTransactionPrint(true)
     ↓
┌─────────────────┐
│   SENDING       │
└────┬────────────┘
     │ Native printer execution
     ↓
┌─────────────────┐
│   PRINTING ✓    │
└────┬────────────┘
     │ disconnect()
     ↓
┌─────────────────┐
│  DISCONNECTED   │
└─────────────────┘

Error cases:
     ┌──→ ERROR (outOfPaper, offline, etc.)
     │      ↓
     ├──────── getPrinterStatus() → Error
     │
     └──→ Retry with initialize()
```

## Class Diagram

```
IThermalPrinterService
    ▲
    │
    │ implements
    │
SunmiPrinterService ◄─────┐
BluetoothPrinterService ◄──┤ Future implementations
NetworkPrinterService ◄────┘
    │
    │ used by
    ↓
ThermalPrinterManager
    │
    │ used by
    ↓
PrintInvoiceV2 ◄─────── Your App
    │
    │ uses
    ↓
ReceiptLine
ReceiptItemLine
PrintRow
```

## File Organization Tree

```
lib/features/print/
│
├── domain/                          (Contracts & Models)
│   ├── thermal_printer_model.dart
│   │   └─ ThermalPrinter, PrinterStatus, enums
│   │   └─ Freezed data classes
│   │
│   └── i_thermal_printer_service.dart
│       └─ IThermalPrinterService interface
│       └─ 16 abstract methods
│
├── infrastructure/                  (Implementations)
│   ├── sunmi_printer_service.dart
│   │   └─ SunmiPrinterService class
│   │   └─ Wraps sunmi_printer_plus
│   │
│   └── (future: other printer services)
│
├── application/                     (Business Logic)
│   ├── thermal_printer_manager.dart
│   │   └─ ThermalPrinterManager class
│   │   └─ High-level API
│   │   └─ Helper classes (PrintRow, etc.)
│   │
│   └── thermal_printer_providers.dart
│       └─ Riverpod provider definitions
│
└── presentation/                    (User-Facing)
    ├── print_invoice_v2.dart
    │   └─ PrintInvoiceV2 class
    │   └─ Invoice printing logic
    │
    ├── print_invoice.dart (existing)
    │   └─ Original implementation (still works)
    │
    ├── EXAMPLES.md
    │   └─ 4 practical code examples
    │
    └── (other existing files)
```

---

These diagrams illustrate the complete architecture, data flow, and organization of the thermal printer service implementation.
