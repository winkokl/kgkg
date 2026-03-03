import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerCard extends ConsumerWidget {
  const CustomerCard({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileCard(
      titleWidget: HeaderText(title),
      subtitleWidgets: [
        const SizedBox(height: 6),
        HeaderTextSmall(description),
      ],
      trailingWidget: const DecoratedContainer(
        height: 32,
        width: 32,
        color: Color(0xffF4F8FD),
        child: Icon(Icons.info, color: brandColor, size: 20),
      ),
      ontap: onTap,
    );
  }
}
