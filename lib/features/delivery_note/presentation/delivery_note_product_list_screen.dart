import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryNoteProductListScreen extends ConsumerWidget {
  const DeliveryNoteProductListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productlist = ref.watch(productListNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
            itemCount: productlist.length,
            itemBuilder: (ctx, index) {
              final product = productlist[index];

              return DNProductCard(
                product: product,
                ontap: () => ref.watch(goRouterProvider).push(DeliveryNoteProductDetailRoute().location, extra: product),
              );
            }),
      ),
    );
  }
}
