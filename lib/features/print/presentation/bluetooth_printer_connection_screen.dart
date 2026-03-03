/// Bluetooth Printer Connection Screen
/// Allows users to discover and connect to ESC-POS Bluetooth thermal printers
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/thermal_printer_model.dart';
import '../infrastructure/esc_pos_bluetooth_service.dart';
import '../domain/printer_exceptions.dart';
import '../application/thermal_printer_providers_v2.dart';
import '../infrastructure/bluetooth_permission.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class BluetoothPrinterConnectionScreen extends ConsumerStatefulWidget {
  final Function(ThermalPrinter)? onPrinterSelected;
  final Function()? onConnectionComplete;

  const BluetoothPrinterConnectionScreen({
    Key? key,
    this.onPrinterSelected,
    this.onConnectionComplete,
  }) : super(key: key);

  @override
  ConsumerState<BluetoothPrinterConnectionScreen> createState() => _BluetoothPrinterConnectionScreenState();
}

class _BluetoothPrinterConnectionScreenState extends ConsumerState<BluetoothPrinterConnectionScreen> {
  bool _isConnecting = false;
  String? _selectedDeviceAddress;
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    final discoveredPrinters = ref.watch(discoveredPrintersProvider);
    final isBluetoothEnabled = ref.watch(isBluetoothEnabledProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect to Thermal Printer'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bluetooth Status Card
              _buildBluetoothStatusCard(isBluetoothEnabled),
              const SizedBox(height: 24),

              // Available Devices Section
              Text(
                'Available Devices',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),

              discoveredPrinters.when(
                data: (printers) => _buildDevicesList(printers),
                loading: () => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (error, stack) => _buildDiscoveryErrorWidget(error),
              ),

              if (_errorMessage != null) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    border: Border.all(color: Colors.red.shade400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline, color: Colors.red.shade700),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: TextStyle(color: Colors.red.shade700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              const SizedBox(height: 24),

              // Action Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _isConnecting
                      ? null
                      : () {
                          setState(() => _errorMessage = null);
                          ref.invalidate(discoveredPrintersProvider);
                        },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Refresh Devices'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBluetoothStatusCard(AsyncValue<bool> isBluetoothEnabled) {
    return isBluetoothEnabled.when(
      data: (enabled) => Card(
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: enabled ? Colors.blue.shade50 : Colors.orange.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                enabled ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
                color: enabled ? Colors.blue : Colors.orange,
                size: 32,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bluetooth Status',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      enabled ? 'Bluetooth is enabled' : 'Bluetooth is disabled',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (!enabled)
                ElevatedButton.icon(
                  onPressed: _enableBluetooth,
                  icon: const Icon(Icons.bluetooth, size: 18),
                  label: const Text('Enable'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      loading: () => const Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => Card(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.red.shade50,
          child: Row(
            children: [
              Icon(Icons.error_outline, color: Colors.red.shade700),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Error checking Bluetooth: $error',
                  style: TextStyle(color: Colors.red.shade700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDevicesList(List<ThermalPrinter> printers) {
    if (printers.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(32),
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(
              Icons.devices_other,
              size: 64,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              'No devices found',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey.shade600,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Make sure your printer is powered on and in pairing mode',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade500,
                  ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: printers.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final printer = printers[index];
        final isSelected = _selectedDeviceAddress == printer.macAddress;

        return Card(
          elevation: isSelected ? 4 : 1,
          child: ListTile(
            leading: Icon(
              Icons.print,
              color: isSelected ? Colors.blue : Colors.grey.shade400,
            ),
            title: Text(printer.name),
            subtitle: Text(
              printer.macAddress ?? 'Unknown',
              style: const TextStyle(fontSize: 12),
            ),
            trailing: _isConnecting && isSelected
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? Colors.green : Colors.grey.shade400,
                  ),
            selected: isSelected,
            onTap: _isConnecting ? null : () => _connectToPrinter(printer),
          ),
        );
      },
    );
  }

  Widget _buildErrorWidget(String error) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.error_outline, color: Colors.red.shade700),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Error loading devices',
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: TextStyle(
              color: Colors.red.shade600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDiscoveryErrorWidget(Object error) {
    // If the error is a permission issue, show an action to request/grant permission
    if (error is BluetoothPermissionDeniedException || error.toString().contains('BluetoothPermissionDeniedException')) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.orange.shade50,
          border: Border.all(color: Colors.orange.shade200),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.lock, color: Colors.orange.shade700),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Bluetooth permission required to discover printers',
                    style: TextStyle(color: Colors.orange.shade700, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Please grant Bluetooth permissions so the app can find nearby printers.',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final ok = await requestBluetoothPermissionWithDialog(context);
                    if (ok) {
                      // Retry discovery
                      ref.invalidate(discoveredPrintersProvider);
                    }
                  },
                  child: const Text('Grant Permission'),
                ),
                const SizedBox(width: 12),
                TextButton(
                  onPressed: () {
                    openAppSettings();
                  },
                  child: const Text('Open Settings'),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Fallback generic error
    return _buildErrorWidget(error.toString());
  }

  Future<void> _connectToPrinter(ThermalPrinter printer) async {
    setState(() {
      _isConnecting = true;
      _errorMessage = null;
      _selectedDeviceAddress = printer.macAddress;
    });

    try {
      final service = EscPosBluethoothService();
      final success = await service.connectToPrinter(printer.macAddress ?? printer.id);

      if (mounted) {
        if (success) {
          // Update connected printer in provider
          ref.read(connectedPrinterProvider.notifier).state = printer;

          // Callback
          widget.onPrinterSelected?.call(printer);

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Connected to ${printer.name}'),
              backgroundColor: Colors.green,
            ),
          );

          // Auto-pop or callback
          widget.onConnectionComplete?.call();
          if (Navigator.canPop(context)) {
            Navigator.pop(context, printer);
          }
        } else {
          setState(() {
            _errorMessage = 'Failed to connect to ${printer.name}. Make sure it\'s nearby and powered on.';
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Connection error: $e';
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isConnecting = false;
        });
      }
    }
  }

  Future<void> _enableBluetooth() async {
    try {
      final service = EscPosBluethoothService();
      await service.enableBluetooth();
      if (mounted) {
        ref.invalidate(isBluetoothEnabledProvider);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error enabling Bluetooth: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

Future<bool> requestBluetoothPermissionWithDialog(BuildContext context) async {
  if (!Platform.isAndroid) return true;

  final granted = await ensureBluetoothPermissions();
  if (granted) return true;

  final result = await showDialog<bool>(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Bluetooth permission required'),
      content: const Text('This feature needs Bluetooth permission to find printers. Please grant it in App Settings.'),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
        TextButton(
          onPressed: () {
            openAppSettings();
            Navigator.pop(context, true);
          },
          child: const Text('Open Settings'),
        ),
      ],
    ),
  );

  return result == true;
}
