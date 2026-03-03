import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListTileCard extends ConsumerWidget {
  const ListTileCard({
    this.ontap,
    this.leadingWidget,
    required this.titleWidget,
    required this.subtitleWidgets,
    this.trailingWidget,
    super.key,
  });
  final VoidCallback? ontap;
  final Widget? leadingWidget;

  final Widget titleWidget;
  final List<Widget> subtitleWidgets;
  final Widget? trailingWidget;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: whiteContainerDecoration,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        visualDensity: const VisualDensity(vertical: 3),
        onTap: ontap,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        leading: leadingWidget,
        title: titleWidget,
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: subtitleWidgets,
        ),
        trailing: trailingWidget,
      ),
    );
  }
}
