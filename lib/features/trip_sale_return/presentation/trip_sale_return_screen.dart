import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/widgets/make_payment_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/widgets/trip_sale_return_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleReturnScreen extends HookConsumerWidget {
  const TripSaleReturnScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 2, ref: ref);
    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasTripReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.tripSaleReturn, MODULE.tripReturn);

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: saleReturnTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Sale Goods Return"),
        centerTitle: false,
        actions: !hasTripReturnModuleAccess.contains(PERMISSION.create)
            ? null
            : [
                AddButton(
                  onTap: () {
                    ref.invalidate(productListNotifierProvider);

                    ref.watch(goRouterProvider).push(const TripSaleReturnFormRoute(isEdit: false).location);
                  },
                )
              ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SearchTextField(
              filterControl: FilterControl(
                hasDate: true,
                hasCustomer: tabIndex == 0,
                hasPaymentStatus: tabIndex == 0,
              ),
            ),
            const SizedBox(height: 10),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabControllerWithIndex.tabController,
                children: const [
                  SaleReturnTab(),
                  MakePaymentTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
