import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomCard extends ConsumerWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.extraSubtitle,
    required this.date,
    this.amount,
    required this.ontap,
    this.statusWidget,
  });
  final VoidCallback ontap;
  final String title;
  final String subtitle;
  final String? extraSubtitle;
  final String date;
  final double? amount;
  final Widget? statusWidget;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileCard(
        ontap: ontap,
        titleWidget: HeaderText(title),
        subtitleWidgets: [
          if (extraSubtitle != null) ...[
            const SizedBox(height: 6),
            HeaderTextSmall(extraSubtitle!, color: secondaryTextColor),
          ],
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (subtitle.isNotEmpty) ...[
                Flexible(child: HeaderTextSmall(subtitle, color: brandColor)),
                const Text(" | ", style: TextStyle(fontSize: 16, color: Color(0xffE2E4E8))),
              ],
              Flexible(child: HeaderTextSmall(date, color: brandColor)),
            ],
          ),
        ],
        trailingWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (amount != null) ...[
              HeaderText(formatter.format(amount)),
              const HeaderTextSmall("MMK", color: secondaryTextColor),
            ],
            if (statusWidget != null) ...[statusWidget!],
          ],
        ));
  }
}
