import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IndicatorWidget extends ConsumerWidget {
  const IndicatorWidget({
    super.key,
    required this.length,
  });
  final int length;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(length, (index) {
          if (index == length - 1) {
            return DecoratedContainer(
              height: 16,
              width: 16,
              border: indicatorValue == index ? const Border() : Border.all(color: black.withOpacity(0.1)),
              color: indicatorValue == index ? brandColor : Colors.transparent,
              child: const SizedBox(),
            );
          } else {
            return IndicatorItem(border: indicatorValue == index || index < indicatorValue ? const Border() : Border.all(color: black.withOpacity(0.1)), lineColor: index < indicatorValue ? brandColor : black.withOpacity(0.1), color: indicatorValue == index || index < indicatorValue ? brandColor : Colors.transparent, thickness: length - index < indicatorValue ? 2 : 1);
          }
        }).toList());
  }
}

class IndicatorItem extends StatelessWidget {
  const IndicatorItem({
    super.key,
    required this.color,
    this.lineColor,
    required this.thickness,
    required this.border,
  });
  final Color color;
  final Color? lineColor;
  final Border border;
  final double thickness;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedContainer(
          height: 16,
          width: 16,
          border: border,
          color: color,
          child: const SizedBox(),
        ),
        SizedBox(
          height: 10,
          width: 100,
          child: Divider(
            color: lineColor,
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}
