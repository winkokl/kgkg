import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/item_card.dart';

class InvoiceItemsWidget extends HookWidget {
  const InvoiceItemsWidget({super.key, required this.isEdit});
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
    final giftItems = ref.watch(invoiceFormNotifierProvider.select((value) => value.giftItems));

    return ListView.builder(
      itemBuilder: (context, index) {
        final product = giftItems[index];
        return GestureDetector(
          onTap: () => ref.watch(goRouterProvider).push(const InvoiceGiftItemFormRoute().location, extra: (
            product,
            isReadOnly ? null : (p) => ref.read(invoiceFormNotifierProvider.notifier).updateGiftItems(p),
          )),
          child: ItemCard(
            title: product.giftName,
            subtitle: '${product.requestedQty} ${product.unitName}',
            label: "Requested Qty - ",
            statusWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const HeaderTextSmall("Plan Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                HeaderTextSmall('${product.requestedQty} (${product.unitName})'),
                const SizedBox(height: 8),
                const HeaderTextSmall("Gift Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                HeaderTextSmall('${product.saleQty}'),
              ],
            ),
          ),
        );
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
    final products = ref.watch(invoiceFormNotifierProvider.select((value) => value.products));
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () => ref.watch(goRouterProvider).push(const InvoiceProductFormRoute().location, extra: (
            product,
            isReadOnly ? null : (p) => ref.read(invoiceFormNotifierProvider.notifier).updateProduct(p),
          )),
          child: ItemCard(
            title: product.productName,
            subtitle: '${product.saleQty}',
            extraSubtitle: 'Net Sale Price- ${product.netSalePrice == 0 ? '' : formatter.format(product.netSalePrice)}',
            label: "Sale Qty - ",
            statusWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const HeaderTextSmall("Amount", color: secondaryTextColor),
                const SizedBox(height: 4),
                HeaderText(formatter.format(product.amount)),
              ],
            ),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
