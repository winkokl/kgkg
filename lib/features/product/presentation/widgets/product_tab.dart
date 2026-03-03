import 'package:mgkaung_dms_mobile/features/core/widgets/display_return_total_widget.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_total_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';

class ProductTab1 extends ConsumerWidget {
  const ProductTab1({super.key, this.salePromotion});
  final SalePromotion? salePromotion;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DisplayTotalWidget(isReadOnly: true, salePromotion: salePromotion);
  }
}

class ProductTab2 extends ConsumerWidget {
  const ProductTab2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const DisplayReturnTotalWidget(isReadOnly: true);
  }
}
