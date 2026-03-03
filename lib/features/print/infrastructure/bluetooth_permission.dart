import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

/// Request and ensure necessary Bluetooth permissions on Android.
/// Call this before starting discovery or other Bluetooth operations.
Future<bool> ensureBluetoothPermissions() async {
  // On non-Android platforms there is no runtime permission to request here.
  if (!Platform.isAndroid) return true;

  try {
    // For Android 12+ we need bluetooth scan/connect/adverise permissions.
    // For older Android versions we still request location (required for BLE scan on older APIs).
    final scanStatus = await Permission.bluetoothScan.request();
    final connectStatus = await Permission.bluetoothConnect.request();
    // advertise is optional but request it if available
    PermissionStatus advertiseStatus = PermissionStatus.granted;
    try {
      advertiseStatus = await Permission.bluetoothAdvertise.request();
    } catch (_) {
      // Some versions of permission_handler may not expose bluetoothAdvertise; ignore.
    }

    // Request location as fallback for older Android versions that require it for discovery
    final locationStatus = await Permission.location.request();

    final granted = scanStatus.isGranted && connectStatus.isGranted;

    if (!granted) {
      return false;
    }

    // If we have scan+connect granted we're good; location/adverise may be optional depending on device
    return true;
  } catch (e) {
    // If anything goes wrong, return false so caller can handle gracefully
    print('Error requesting Bluetooth permissions: $e');
    return false;
  }
}
