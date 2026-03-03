import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({
    super.key,
    this.height = 40,
    this.width = 40,
    this.color = const Color(0xff4F93E2),
    required this.child,
    this.radius = 9,
    this.ontap,
    this.border = const Border(),
  });
  final double height;
  final double width;
  final Color color;
  final Widget child;
  final double radius;
  final VoidCallback? ontap;
  final BoxBorder border;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.zero,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: border,
        ),
        child: Center(child: child),
      ),
    );
  }
}
