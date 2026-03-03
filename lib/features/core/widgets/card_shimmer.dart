import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/shimmer_item.dart';
import 'package:flutter/material.dart';

class CardShimmer extends StatelessWidget {
  const CardShimmer({
    Key? key,
    this.boxDecoration,
    this.leadingItem,
    required this.children,
    this.padding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  }) : super(key: key);

  final BoxDecoration? boxDecoration;
  final Widget? leadingItem;
  final List<Widget> children;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: boxDecoration ?? whiteContainerDecoration.copyWith(border: Border.all(color: Colors.transparent)),
      padding: padding,
      child: Row(
        children: [
          if (leadingItem != null) ...[
            leadingItem!,
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          )
        ],
      ),
    );
  }
}

class CommonShimmer extends StatelessWidget {
  const CommonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: CardShimmer(
        children: [
          ShimmerItem(width: 300),
          SizedBox(height: 20),
          ShimmerItem(width: 150),
        ],
      ),
    );
  }
}
