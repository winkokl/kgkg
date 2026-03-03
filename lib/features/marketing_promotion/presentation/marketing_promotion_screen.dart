import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/good_requisition_tab.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/invoice_tab.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/marketing_promotion_plan_tab.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/receipt_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketingPromotionPlanScreen extends HookConsumerWidget {
  const MarketingPromotionPlanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 4, ref: ref);

    final tabIndex = tabControllerWithIndex.tabIndex.value;

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: marketingpromotionplanTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Promotion"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SearchTextField(
              title: tabIndex == 2 ? 'cinv' : null,
              filterControl: FilterControl(hasDate: tabIndex == 0),
            ),
            const SizedBox(height: 10),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabControllerWithIndex.tabController,
                children: const [
                  MarketingPromotionPlanTab(),
                  GoodRequisitionTab(),
                  InvoiceTab(),
                  ReceiptTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
