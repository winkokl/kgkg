import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_text_span.dart';

class SignaturePad extends StatefulWidget {
  final Function(String? errMsg, File?) onSignatureGenerated;

  const SignaturePad({Key? key, required this.onSignatureGenerated}) : super(key: key);

  @override
  State<SignaturePad> createState() => _SignaturePadState();
}

class _SignaturePadState extends State<SignaturePad> {
  Future<void> _generateSignatureFile() async {
    try {
      final Uint8List? signature = await _controller.toPngBytes();
      if (signature == null) {
        widget.onSignatureGenerated('No signature is found.', null);
        return;
      }

      // Create a temporary file
      final Directory tempDir = await getTemporaryDirectory();
      final String tempPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_signature.png';
      final File tempFile = File(tempPath);

      // Write the signature to the file
      await tempFile.writeAsBytes(signature);
      widget.onSignatureGenerated(null, tempFile);
    } catch (e) {
      widget.onSignatureGenerated('Error generating signature file: $e', null);
    }
  }

  // initialize the signature controller
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
    exportPenColor: Colors.black,
    onDrawStart: () => log('onDrawStart called!'),
    onDrawEnd: () => log('onDrawEnd called!'),
  );

  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _debounceTimer?.cancel(); // Cancel previous timer if user draws again

      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        _generateSignatureFile();
      });
    });
    // ..onDrawEnd = () {
    //   _generateSignatureFile(_controller);
    // };
  }

  @override
  void dispose() {
    _controller.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          CustomTextSpan(
            textString: "Signature ",
            textColor: secondaryTextColor,
            fontWeight: FontWeight.w500,
            textSpanChildren: [CustomTextSpan(textString: '*', textColor: errorColor)],
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 300,
          // color: Colors.grey[200],
          decoration: whiteContainerDecoration.copyWith(
              border: Border.all(
            color: const Color(0xffE2E4E8),
          )),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.undo),
                    color: brandColor,
                    onPressed: () {
                      setState(() => _controller.undo());
                    },
                    tooltip: 'Undo',
                  ),
                  IconButton(
                    icon: const Icon(Icons.redo),
                    color: brandColor,
                    onPressed: () {
                      setState(() => _controller.redo());
                    },
                    tooltip: 'Redo',
                  ),
                  //CLEAR CANVAS
                  IconButton(
                    key: const Key('clear'),
                    icon: const Icon(Icons.close),
                    color: brandColor,
                    onPressed: () {
                      setState(() => _controller.clear());
                    },
                    tooltip: 'Clear',
                  ),
                  // STOP Edit
                  IconButton(
                    key: const Key('stop'),
                    icon: Icon(
                      _controller.disabled ? Icons.pause : Icons.play_arrow,
                    ),
                    color: brandColor,
                    onPressed: () {
                      setState(() => _controller.disabled = !_controller.disabled);
                    },
                    tooltip: _controller.disabled ? 'Pause' : 'Play',
                  ),
                ],
              ),
              Expanded(
                child: GestureDetector(
                  onVerticalDragUpdate: _controller.disabled
                      ? (details) {
                          Scrollable.of(context).position.moveTo(
                                Scrollable.of(context).position.pixels - details.delta.dy,
                              );
                        }
                      : null,
                  child: IgnorePointer(
                    ignoring: _controller.disabled,
                    child: Signature(
                      controller: _controller,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
