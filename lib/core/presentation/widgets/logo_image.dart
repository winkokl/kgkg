import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          // fit: BoxFit.fitHeight,
        ),
        const SizedBox(height: 30),
        Text(
          'Welcome to Mg Kaung',
          style: CustomTheme.appTheme.textTheme.bodyLarge!.copyWith(
            color: brandColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Please enter your username and password given to you by Mg Kaung.",
          style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(color: const Color(0xff5F6367), fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
