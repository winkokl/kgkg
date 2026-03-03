import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/marketing_promotion_return_tab.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/return_receipt_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketingPromotionReturnScreen extends HookConsumerWidget {
  const MarketingPromotionReturnScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 2, ref: ref);

    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.marketingPromotionReturn, MODULE.marketingPromotionReturn);

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: marketingpromotionReturnTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Promotion Return"),
        centerTitle: false,
        actions: hasReturnModuleAccess.contains(PERMISSION.create)
            ? [
                AddButton(
                  onTap: () => ref.watch(goRouterProvider).push(
                        const MarketingPromotionReturnFormRoute(isEdit: false).location,
                      ),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SearchTextField(
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
                  MarketingPromotionReturnTab(),
                  ReturnReceiptTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
