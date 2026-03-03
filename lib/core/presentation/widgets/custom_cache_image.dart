import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({
    super.key,
    this.boxFit,
    required this.url,
    this.height,
    this.width,
    this.borderRadius,
  });
  final BoxFit? boxFit;
  final String url;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: boxFit,
      height: height,
      width: width,
      imageUrl: url,
      imageBuilder: (ctx, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit ?? BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) => Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          image: DecorationImage(
            image: const AssetImage(
              'assets/images/placeholder.png',
            ),
            fit: boxFit ?? BoxFit.cover,
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: brandColor,
      ),
    );
  }
}
