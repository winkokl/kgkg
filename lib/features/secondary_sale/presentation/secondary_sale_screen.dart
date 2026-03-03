import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/async_customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/invoice/secondary_sale_invoice_tab.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/payment_receive/payment_receive_tab.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/order_approval_tab.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/secondary_sale_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleScreen extends HookConsumerWidget {
  const SecondarySaleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 4, ref: ref);
    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasSsoModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.salesOrder, MODULE.secondarySalesOrder);

    ref.listenX(
        provider: asyncCustomerFormNotifierProvider,
        onData: (msg) {
          ref.watch(goRouterProvider).push(const SecondarySaleFormRoute(isEdit: false).location);
        });

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: saleOrderTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale"),
        centerTitle: false,
        actions: !hasSsoModuleAccess.contains(PERMISSION.create)
            ? null
            : [
                AddButton(
                  onTap: () {
                    ref.invalidate(productListNotifierProvider);
                    // ref.watch(goRouterProvider).push(const SecondarySaleFormRoute(isEdit: false).location);

                    ref.read(asyncCustomerFormNotifierProvider.notifier).checkWayCustomerAvailablity(SharedPrefs.getInt('user_id')!);
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
              title: tabIndex == 2 ? 'ssinv' : null,
              filterControl: FilterControl(
                hasCustomer: tabIndex == 0 || tabIndex == 1 || tabIndex == 2,
                hasDate: true,
                hasSaleType: tabIndex == 1,
                hasOrderStatus: tabIndex == 0 || tabIndex == 1,
                hasPaymentStatus: tabIndex == 2,
                hasPaymentType: tabIndex == 0 || tabIndex == 1,
                isNeedToChangeStatusName: tabIndex == 1,
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
                  SecondarySaleTab(),
                  OrderApprovalTab(),
                  SecondarySaleInvoiceTab(),
                  PaymentReceiveTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
