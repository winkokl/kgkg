import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class DialogHeaderText extends StatelessWidget {
  const DialogHeaderText(this.text, {super.key, this.color = brandColor});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTheme.appTheme.textTheme.headlineLarge!.copyWith(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
