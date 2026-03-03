import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_assignee_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_detail_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_product_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_proposal_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_vehicle_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_warehouse_details_tab.dart';

class TripProposalDetailScreen extends HookConsumerWidget {
  const TripProposalDetailScreen({super.key, required this.tripProposal});
  final TripProposal tripProposal;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 6);

    final tripPp = useState(tripProposal);
    // final vehicles = useState(tripProposal.tripVehicle);
    // final tripDetails = useState(tripProposal.tripDetails);
    // final userAssigns = useState(tripProposal.assigneeData);
    // final warehouses = useState(tripProposal.tripWarehouseDetails);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: [
          "Overview",
          "Allocation Accounts (${tripPp.value.tripWarehouseDetails.length})",
          "Vehicles  (${tripPp.value.tripVehicle.length})",
          "Assignees  (${tripPp.value.assigneeData.length})",
          "Trip Details  (${tripPp.value.tripDetails.length})",
          "Products  (${tripPp.value.productDetail.length})",
        ]);

    ref.listen(tripProposalByIdProvider(tripProposal.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (tripProposal) {
            tripPp.value = tripProposal;
            List<Product> tmpPrductList = [];

            for (var i = 0; i < tripProposal.productDetail.length; i++) {
              final tmp = tripProposal.productDetail[i];
              final product = tmp.copyWith(isTrip: true, salePrice: tmp.salePrice, isViewOnly: true);
              tmpPrductList.add(product);
            }

            ref.read(productListNotifierProvider.notifier).setProductList(tmpPrductList);
          });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Proposal Details"),
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
              value: ref.watch(tripProposalByIdProvider(tripProposal.id)),
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    TripProposalOverViewTab(tripProposal: data),
                    TripWarehouseDetailsTab(tripProposal: data),
                    TripVehicleTab(tripProposal: data),
                    TripAssigneeTab(tripProposal: data),
                    TripDetailTab(tripProposal: data),
                    const TripProductTab(),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(
                TripProposalByIdProvider(tripProposal.id),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
