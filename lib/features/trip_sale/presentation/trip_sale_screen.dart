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
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/invoice/trip_sale_invoice_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/payment_receive/payment_receive_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_proposal_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_request_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleScreen extends HookConsumerWidget {
  const TripSaleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 5, ref: ref);

    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasTripSOModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.TripSaleOrder, MODULE.trip);

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: tripSaleTitleList);

    String? getTitle() {
      switch (tabIndex) {
        case 0:
          return 'tp'; // For TripProposalTab
        case 1:
          return 'treq'; // For TripSaleRequestTab
        case 2:
          return 'ts'; // For TripSaleTab
        case 3:
          return 'tsinv'; // For TripSaleInvoiceTab
        case 4:
          return 'pr'; // For PaymentReceiveTab
        default:
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Sale"),
        centerTitle: false,
        actions: !hasTripSOModuleAccess.contains(PERMISSION.create)
            ? null
            : [
                AddButton(
                  onTap: () {
                    ref.invalidate(productListNotifierProvider);

                    ref.watch(goRouterProvider).push(const TripSaleFormRoute(isEdit: false).location);
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
              title: getTitle(),
              //  hasCustomer: tabIndex == 3,
              //   hasDate: tabIndex == 1 || tabIndex == 2 ? false : true,
              //   hasTripSaleRequestStatus: tabIndex == 0,
              //   hasPaymentStatus: tabIndex == 4,
              //   hasPaymentType: tabIndex == 3,
              //   hasOrderStatus: tabIndex == 3,
              //   hasRegion: tabIndex == 1,
              //   hasTripName: tabIndex == 0 || tabIndex == 2,
              //   isNeedToChangeStatusName: tabIndex == 3,

              // TripSaleRequestTab(),0
              //   TripManagementTab(),1
              //   TripUserAssignTab(),2
              //   TripSaleTab(),3
              //   TripSaleInvoiceTab(),4
              //   PaymentReceiveTab(),5
              filterControl: FilterControl(
                hasCustomer: tabIndex == 2,
                hasDate: true,
                hasPaymentStatus: tabIndex == 3,
                hasPaymentType: tabIndex == 2,
                hasOrderStatus: tabIndex == 2,
                hasRegion: tabIndex == 0,
                hasTripName: tabIndex == 0,
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
                  TripProposalTab(),
                  TripSaleRequestTab(),
                  TripSaleTab(),
                  TripSaleInvoiceTab(),
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
