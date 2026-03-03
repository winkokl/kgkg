import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OvalCard extends ConsumerWidget {
  const OvalCard({
    super.key,
    required this.name,
    required this.onTap,
    required this.isSelected,
  });
  final String name;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: whiteContainerDecoration.copyWith(border: Border.all(color: black.withOpacity(0.1)), color: isSelected ? brandColor : null, borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
            color: isSelected ? bgWhite : null,
          ),
        ),
      ),
    );
  }
}
