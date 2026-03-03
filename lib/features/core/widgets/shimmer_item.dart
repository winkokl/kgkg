import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({
    super.key,
    this.height = 15,
    this.width,
    this.baseColor,
    this.highlightColor,
    this.radius = 12.0,
  });
  final double height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey.shade100,
      highlightColor: highlightColor ?? Colors.grey.shade50,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.white,
        ),
      ),
    );
  }
}
