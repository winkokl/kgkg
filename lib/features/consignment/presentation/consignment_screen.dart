import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/invoice/consignment_invoice_tab.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_approval_tab.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_contract_tab.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_tab.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/payment_receive/payment_receive_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentScreen extends HookConsumerWidget {
  const ConsignmentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 5, ref: ref);

    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasConModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.consignment, MODULE.consignment);

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: consignmentTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment"),
        centerTitle: false,
        actions: !hasConModuleAccess.contains(PERMISSION.create)
            ? null
            : [
                AddButton(
                  onTap: () {
                    ref.invalidate(productListNotifierProvider);

                    ref.watch(goRouterProvider).push(
                          const ConsignmentFormRoute(isEdit: false).location,
                        );
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
              title: tabIndex == 3 ? 'cinv' : null,
              filterControl: FilterControl(
                hasBusinessUnit: tabIndex == 0,
                hasContractStatus: tabIndex == 0,
                hasDistributionRegion: tabIndex == 1 || tabIndex == 2,
                hasCustomer: tabIndex == 0 || tabIndex == 1 || tabIndex == 2,
                hasDate: tabIndex == 0 ? false : true,
                hasOrderStatus: tabIndex == 1 || tabIndex == 2,
                hasPaymentStatus: tabIndex == 3,
                hasPaymentType: tabIndex == 2,
                isNeedToChangeStatusName: tabIndex == 2,
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
                  ConsignmentContractTab(),
                  ConsignmentApprovalTab(),
                  ConsignmentTab(),
                  ConsignmentInvoiceTab(),
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
