import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/presentation/widgets/sale_promotion_overview_tab.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/presentation/widgets/sale_promotion_product_details_tab.dart';

class SalePromotionDetailScreen extends HookConsumerWidget {
  const SalePromotionDetailScreen({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final salePromotionById = ref.watch(salePromotionByIdProvider(id));

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Product Detail"]);

    return Scaffold(
      appBar: AppBar(title: const Text("Promotion Details")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
                child: AsyncValueWidget(
              value: salePromotionById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    SalePromotionOverViewTab(salePromotion: data),
                    SalePromotionProductDetailsTab(salePromotion: data),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(salePromotionByIdProvider(id)),
            )),
          ],
        ),
      ),
    );
  }
}
