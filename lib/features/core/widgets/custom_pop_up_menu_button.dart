import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';

class CustomPopUpMenuButton<T> extends StatelessWidget {
  const CustomPopUpMenuButton({
    super.key,
    required this.popupMenuEntries,
    this.dy = 50,
    this.boxConstraints,
    this.iconWidget,
    this.iconData = Icons.more_vert,
    this.menuKey,
  });
  final List<PopupMenuEntry<T>> popupMenuEntries;

  final double dy;
  final BoxConstraints? boxConstraints;
  final IconData iconData;
  final GlobalKey? menuKey;
  final Widget? iconWidget;
  @override
  Widget build(BuildContext context) {
    if (popupMenuEntries.isEmpty) return const SizedBox.shrink();
    return PopupMenuButton(
      key: menuKey,
      elevation: 3,
      constraints: boxConstraints,
      padding: EdgeInsets.zero,
      offset: Offset(0, dy),
      icon: iconWidget ?? Icon(iconData),
      itemBuilder: (context) => popupMenuEntries,
    );
  }
}

class CustomPopUpMenuItem<T> extends PopupMenuItem {
  CustomPopUpMenuItem({
    super.key,
    this.icon,
    required this.title,
    this.textColor = black,
    this.isLast = false,
    this.ontap,
  }) : super(
          height: 30,
          onTap: ontap,
          child: Column(
            children: [
              ListTile(
                dense: true,
                leading: icon,
                title: HeaderTextSmall(title, color: textColor),
              ),
              if (!isLast) const Divider(height: 0)
            ],
          ),
        );
  final Widget? icon;
  final String title;
  final Color textColor;
  final VoidCallback? ontap;
  final bool isLast;
}
