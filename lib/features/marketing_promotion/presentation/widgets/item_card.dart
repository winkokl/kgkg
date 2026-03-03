import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.extraSubtitle,
    this.statusWidget,
    this.label = "Qty - ",
  });
  final String title;
  final String subtitle;
  final String label;
  final String? extraSubtitle;
  final Widget? statusWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      decoration: whiteContainerDecoration,
      margin: const EdgeInsets.only(bottom: 10),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(title),
                  if (extraSubtitle != null && extraSubtitle!.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    HeaderTextSmall(extraSubtitle!, color: secondaryTextColor),
                  ],
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Flexible(child: HeaderTextSmall(label)),
                      Flexible(child: HeaderText(subtitle)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: statusWidget ?? const SizedBox()),
          ],
        ),
      ),
    );
  }
}
