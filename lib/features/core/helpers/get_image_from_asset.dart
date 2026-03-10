import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

Future<Uint8List> getImageFromAsset(String path) async {
  ByteData fileData = await rootBundle.load(path);
  Uint8List fileUnit8List = fileData.buffer.asUint8List(fileData.offsetInBytes, fileData.lengthInBytes);
  return fileUnit8List;
}

/// Resize image from asset for thermal printer
/// [path] - asset path to the image
/// [targetWidth] - desired width in pixels (default 200 for centered logo on 58mm paper)
Future<Uint8List> getResizedImageFromAsset(String path, {int targetWidth = 200}) async {
  // Load image from assets
  ByteData fileData = await rootBundle.load(path);
  Uint8List originalBytes = fileData.buffer.asUint8List(fileData.offsetInBytes, fileData.lengthInBytes);

  // Decode the image
  img.Image? originalImage = img.decodeImage(originalBytes);

  if (originalImage == null) {
    // If decode fails, return original
    return originalBytes;
  }

  // Resize image maintaining aspect ratio
  img.Image resizedImage = img.copyResize(
    originalImage,
    width: targetWidth,
    interpolation: img.Interpolation.linear,
  );

  // Encode back to PNG
  Uint8List resizedBytes = Uint8List.fromList(img.encodePng(resizedImage));

  return resizedBytes;
}
