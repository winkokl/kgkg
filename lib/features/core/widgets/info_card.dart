import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    this.textColor = black,
    this.maxLines = 3,
    this.child,
  });
  final String title;
  final String value;
  final Color textColor;
  final int maxLines;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTextSmall(title, color: secondaryTextColor),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: HeaderText(value, color: textColor, maxLines: maxLines)),
            if (child != null) ...[
              const SizedBox(width: 8),
              child!,
            ],
          ],
        ),
        const SizedBox(height: 16),
        const Divider(height: 0),
        const SizedBox(height: 16),
      ],
    );
  }
}
