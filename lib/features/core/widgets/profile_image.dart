import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.radius,
    required this.image,
  });
  final double radius;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: bgWhite,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: ClipOval(child: image),
      ),
    );
  }
}
