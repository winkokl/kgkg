import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_cache_image.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

class SignatureImage extends StatelessWidget {
  const SignatureImage({super.key, required this.imageUrl, this.title = "Signature"});
  final String imageUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTextSmall(title, color: secondaryTextColor),
        const SizedBox(height: 8),
        Container(
          height: 150,
          width: double.infinity,
          decoration: whiteContainerDecoration.copyWith(
              border: Border.all(
            color: const Color(0xffE2E4E8),
          )),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomCacheImage(
              boxFit: BoxFit.contain,
              url: imageUrl,
            ),
          ),
        ),
      ],
    );
  }
}
