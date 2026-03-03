import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripProductTab extends ConsumerWidget {
  const TripProductTab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productlist = ref.watch(productListNotifierProvider);

    return ListView.builder(
      itemCount: productlist.length,
      itemBuilder: (ctx, index) {
        final product = productlist[index];

        return ProductCard(
          isReturn: false,
          product: product,
          hasAction: true,
          ontap: () => ref.watch(goRouterProvider).push(
                const ProductDetailRoute(hasAction: true, isReturn: false).location,
                extra: product,
              ),
        );
      },
    );
  }
}
