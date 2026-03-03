import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TotalProductCard extends ConsumerWidget {
  const TotalProductCard({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileCard(
      ontap: ontap,
      leadingWidget: Image.asset("assets/images/products.png"),
      titleWidget: HeaderTextLarge(ref.watch(productListNotifierProvider).length.toString(), color: brandColor),
      subtitleWidgets: const [HeaderTextSmall("Total Products")],
      trailingWidget: const DecoratedContainer(
        height: 40,
        width: 40,
        color: Color(0xffF4F8FD),
        child: Icon(Icons.arrow_forward, color: brandColor, size: 20),
      ),
    );
  }
}
