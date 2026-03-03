import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class DialogText extends StatelessWidget {
  const DialogText(this.text, {super.key, this.textAlign = TextAlign.center});

  final String text;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTheme.appTheme.textTheme.bodyMedium,
      textAlign: textAlign,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
