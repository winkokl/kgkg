import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuantityButton extends ConsumerStatefulWidget {
  const QuantityButton({
    Key? key,
    required this.currentQuantity,
    required this.increaseCallback,
    required this.decreaseCallback,
    this.color = const Color(0xffEBEBEB),
    this.padding = 3,
  }) : super(key: key);
  final VoidCallback increaseCallback;
  final VoidCallback decreaseCallback;
  final int currentQuantity;
  final Color? color;
  final double padding;
  @override
  QuantityButtonState createState() => QuantityButtonState();
}

class QuantityButtonState extends ConsumerState<QuantityButton> {
  QuantityButtonState();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.padding),
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.color,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: widget.decreaseCallback,
          child: const Icon(
            Icons.remove,
            size: 16,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            widget.currentQuantity.toString(),
            style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(color: brandColor, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: widget.increaseCallback,
          child: const Icon(
            Icons.add,
            size: 16,
          ),
        ),
      ]),
    );
  }
}
