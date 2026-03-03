import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends TextSpan {
  final String textString;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final List<InlineSpan>? textSpanChildren;
  CustomTextSpan({
    required this.textString,
    this.textColor = brandColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 14.0,
    this.textSpanChildren,
  }) : super(
          text: textString,
          children: textSpanChildren,
          style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        );
}
