import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class QuantityButton extends ConsumerStatefulWidget {
  const QuantityButton({
    super.key,
    required this.currentQuantity,
    required this.increaseCallback,
    required this.decreaseCallback,
    this.color = Colors.white,
    this.padding = 3,
  });
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
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: widget.color,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: InkWell(
            onTap: widget.decreaseCallback,
            child: const Icon(
              Icons.remove,
              size: 16,
            ),
          ),
        ),
        Text(widget.currentQuantity.toString(), style: CustomTheme.appTheme.textTheme.bodySmall),
        Expanded(
          child: InkWell(
            onTap: widget.increaseCallback,
            child: const Icon(
              Icons.add,
              size: 16,
            ),
          ),
        ),
      ]),
    );
  }
}
