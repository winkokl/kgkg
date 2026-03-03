import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({
    super.key,
    required this.hasAction,
    required this.isReturn,
  });
  final bool hasAction;
  final bool isReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productlist = ref.watch(productListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: hasAction && !isReturn
            ? [
                CustomPopUpMenuButton(
                  popupMenuEntries: [
                    CustomPopUpMenuItem(
                      title: "Select",
                      isLast: true,
                      ontap: () => ref.watch(goRouterProvider).push(const SelectProductRoute().location),
                      icon: const Icon(Icons.square_outlined, size: 20),
                    ),
                  ],
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
            itemCount: productlist.length,
            itemBuilder: (ctx, index) {
              final product = productlist[index];

              return ProductCard(
                isReturn: isReturn,
                product: product,
                hasAction: hasAction,
                ontap: () => ref.watch(goRouterProvider).push(
                      ProductDetailRoute(
                        hasAction: hasAction,
                        isReturn: isReturn,
                      ).location,
                      extra: product,
                    ),
              );
            }),
      ),
    );
  }
}
