import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class BottomErrorWidget extends StatelessWidget {
  const BottomErrorWidget({super.key, required this.retryCallback});

  final VoidCallback retryCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          """Error: Unable to process your request!\nPlease ensure your internet connection is active.""",
          textAlign: TextAlign.center,
          style: CustomTheme.appTheme.textTheme.bodySmall,
        ),
        TextButton(
          onPressed: retryCallback,
          child: const Text("Retry"),
        ),
      ],
    );
  }
}
