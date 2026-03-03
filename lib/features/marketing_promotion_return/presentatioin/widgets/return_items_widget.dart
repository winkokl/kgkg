import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/item_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/return_form_notifier.dart';

class ReturnItemsWidget extends HookWidget {
  const ReturnItemsWidget({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Products", "Gift Items"], scrollable: false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          tabBar(),
          const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: tabController,
              children: const [
                ProductList(),
                GiftItemList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GiftItemList extends ConsumerWidget {
  const GiftItemList({super.key, this.isReadOnly = false});
  final bool isReadOnly;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final giftItems = ref.watch(returnFormNotifierProvider.select((value) => value.giftItems));

    return ListView.builder(
      itemBuilder: (context, index) {
        final product = giftItems[index];
        return GestureDetector(
            onTap: () => ref.watch(goRouterProvider).push(const ReturnGiftItemFormRoute().location, extra: (
                  product,
                  isReadOnly ? null : (p) => ref.read(returnFormNotifierProvider.notifier).updateGiftItems(p),
                )),
            child: ItemCard(
              title: product.productName.isEmpty ? product.giftName : product.productName,
              subtitle: '${product.returnQty}',
              label: 'Return Qty ',
              extraSubtitle: product.warehouseName,
            ));
      },
      itemCount: giftItems.length,
    );
  }
}

class ProductList extends ConsumerWidget {
  const ProductList({super.key, this.isReadOnly = false});
  final bool isReadOnly;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(returnFormNotifierProvider.select((value) => value.products));
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () => ref.watch(goRouterProvider).push(const ReturnProductFormRoute().location, extra: (
            product,
            isReadOnly ? null : (p) => ref.read(returnFormNotifierProvider.notifier).updateProduct(p),
          )),
          child: ItemCard(
            title: product.productName,
            subtitle: '${product.returnQty} (${product.unitName})',
            extraSubtitle: product.warehouseName,
            label: 'Return Qty ',
            statusWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const HeaderTextSmall("Normal Discount"),
                const SizedBox(height: 4),
                HeaderText('${product.normalDiscount} ${product.discountType.name}'),
                const HeaderTextSmall("Return Amount"),
                const SizedBox(height: 4),
                HeaderText(formatter.format(product.returnAmount)),
              ],
            ),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
