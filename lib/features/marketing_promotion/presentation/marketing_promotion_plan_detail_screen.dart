import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/item_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/marketing_promotion_plan_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketingPromotionPlanDetailScreen extends HookConsumerWidget {
  const MarketingPromotionPlanDetailScreen({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final marketingPromotionPlanById = ref.watch(marketingPromotionPlanByIdProvider(id));

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products", "Gift Items", "Gift Rule"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Promotion Plan Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
                child: AsyncValueWidget(
              value: marketingPromotionPlanById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    MarketingPromotionPlanOverViewTab(marketingpromotionplan: data),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final product = data.products[index];
                        return ItemCard(
                          title: product.productName,
                          subtitle: '${product.planQty} (${product.unitName})',
                          extraSubtitle: product.warehouseName,
                          statusWidget: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const HeaderTextSmall("Normal Discount"),
                              const SizedBox(height: 4),
                              HeaderText('${product.normalDiscount} ${product.discountType.name}'),
                            ],
                          ),
                        );
                      },
                      itemCount: data.products.length,
                    ),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final product = data.giftItems[index];
                        return ItemCard(
                          title: product.giftName,
                          subtitle: '${product.baseQty} (${product.unitName})',
                          extraSubtitle: product.warehouseName,
                        );
                      },
                      itemCount: data.giftItems.length,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: whiteContainerDecoration,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            child: Column(
                              children: [
                                InfoCard(title: "Sale Qty", value: "${data.productRule}"),
                                InfoCard(title: "Gift Item Qty", value: '${data.giftRule}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
              errorCallback: () => ref.invalidate(marketingPromotionPlanByIdProvider(id)),
            )),
          ],
        ),
      ),
    );
  }
}
