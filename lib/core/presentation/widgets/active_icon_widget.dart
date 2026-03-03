import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActiveIconWidget extends StatelessWidget {
  const ActiveIconWidget({
    super.key,
    required this.iconData,
    required this.title,
  });
  final IconData iconData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
            width: 40,
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(color: brandColor, width: 3.5),
            )),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 4),
              Icon(iconData, color: brandColor),
              Text(
                title,
                style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(color: brandColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ],
    );
  }
}

class InactiveIconWidget extends StatelessWidget {
  const InactiveIconWidget({
    super.key,
    required this.iconData,
    required this.title,
  });
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 4),
        Icon(iconData, color: const Color(0xff737791)),
        Text(
          title,
          style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(color: const Color(0xff737791)),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
