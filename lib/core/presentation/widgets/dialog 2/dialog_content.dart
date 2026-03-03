import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
    required this.content,
    this.height = 400,
  });
  final Widget content;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: bgWhite),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SingleChildScrollView(child: content),
      ),
    );
  }
}
