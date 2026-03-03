import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';

class DialogIconWidget extends StatelessWidget {
  const DialogIconWidget({
    super.key,
    required this.backgroundColor,
    required this.iconData,
    this.height = 70,
    this.width = 70,
    this.iconSize = 40,
  });
  final Color backgroundColor;
  final IconData iconData;
  final double height;
  final double width;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor.withOpacity(0.3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
              ),
              child: Center(
                child: Icon(
                  iconData,
                  color: bgWhite,
                  size: iconSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
