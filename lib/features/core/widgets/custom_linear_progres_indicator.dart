import 'package:flutter/material.dart';

class CustomLinearProgresIndicator extends StatelessWidget {
  const CustomLinearProgresIndicator({
    super.key,
    required this.value,
    required this.height,
  });
  final double value;
  final double height;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: height,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      backgroundColor: const Color(0xffDFDFDF),
    );
  }
}
