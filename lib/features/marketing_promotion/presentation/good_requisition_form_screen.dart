import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/async_marketing_promotion_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/good_requisition_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/current_qty_dialog.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/good_requisition_info_form.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodRequisitionFormScreen extends HookConsumerWidget {
  const GoodRequisitionFormScreen({super.key});

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenX(
      provider: asyncMarketingPromotionFormNotifierProvider,
      onData: (res) => ref.watch(goRouterProvider).popUntilPath(const MarketingPromotionPlanRoute().location),
    );

    final tabController = useTabController(initialLength: 3);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products", "Gift Items"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Good Requisition"),
        actions: [
          IconButton(
            onPressed: () {
              if (formKey.currentState!.validate() == true) {
                final goodRequisition = ref.read(goodRequisitionFormNotifierProvider);
                if (!goodRequisition.products.any((element) => element.currentQty != 0)) {
                  CustomDialog.showFailureDialog(title: "Failed", msg: "Please enter current qty for at least one product", onPressed: () => context.pop());
                  return;
                }
                ref.read(asyncMarketingPromotionFormNotifierProvider.notifier).updateGoodRequisition(goodRequisition);
              }
            },
            icon: const Icon(Icons.save, color: brandColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              tabBar(),
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: const [
                    GoodRequisitionInfoForm(),
                    ProductList(),
                    GiftItemList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GiftItemList extends ConsumerWidget {
  const GiftItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final giftItems = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.giftItems));

    return ListView.builder(
      itemBuilder: (context, index) {
        final product = giftItems[index];
        return GestureDetector(
          onTap: () => showQtyDialog<GiftItem>(
            context,
            product,
            (updated) => ref.read(goodRequisitionFormNotifierProvider.notifier).updateGiftItems(updated),
          ),
          child: ItemCard(
            title: product.giftName,
            subtitle: '${product.baseQty} (${product.unitName})',
            extraSubtitle: product.warehouseName,
            label: "Total Req Qty - ",
            statusWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HeaderTextSmall("Plan Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                HeaderTextSmall('${product.requestedQty} (${product.unitName})'),
                const SizedBox(height: 8),
                const HeaderTextSmall("Current Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                if (product.currentQty != 0) HeaderTextSmall('${product.currentQty} (${product.currentQtyUnit?.label})'),
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
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(goodRequisitionFormNotifierProvider.select((value) => value.products));
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () => showQtyDialog<PromotionProduct>(
            context,
            product,
            (updated) {
              ref.read(goodRequisitionFormNotifierProvider.notifier).updateProduct(updated);
            },
          ),
          child: ItemCard(
            title: product.productName,
            subtitle: '${product.baseQty} (${product.unitName})',
            extraSubtitle: product.warehouseName,
            label: "Total Req Qty - ",
            statusWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HeaderTextSmall("Plan Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                HeaderTextSmall('${product.requestedQty} (${product.unitName})'),
                const SizedBox(height: 8),
                const HeaderTextSmall("Current Qty", color: secondaryTextColor),
                const SizedBox(height: 4),
                if (product.currentQty != 0) HeaderTextSmall('${product.currentQty} (${product.currentQtyUnit?.label})'),
              ],
            ),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
