import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/helpers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_request_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleRequestDetailScreen extends HookConsumerWidget {
  const TripSaleRequestDetailScreen({
    super.key,
    required this.tripSaleRequest,
  });
  final TripSaleRequest tripSaleRequest;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final tripSaleRequestById = ref.watch(tripSaleRequestByIdProvider(tripSaleRequest.id));

    ref.listen(tripSaleRequestByIdProvider(tripSaleRequest.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (tripSaleRequest) {
            final products = getModifiedProducts(tripSaleRequest);
            ref.read(productListNotifierProvider.notifier).setProductList(products);
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Sale Request Details"),
        // actions: [
        //   CustomPopUpMenuButton(
        //     popupMenuEntries: [
        //       CustomPopUpMenuItem(
        //         title: "Delete",
        //         textColor: errorColor,
        //         ontap: () => CustomDialog.showDeleteWitReasonDialog(
        //             onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleRoute().location),
        //             provider: asyncTripSaleFormNotifierProvider,
        //             onPressed: (v) {
        //               ref.read(asyncTripSaleFormNotifierProvider.notifier).deleteTripSaleRequest(tripSaleRequest.id, v);
        //             }),
        //         isLast: true,
        //         icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
        //       ),
        //     ],
        //   ),
        // ],
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
              value: tripSaleRequestById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    TripSaleRequestOverViewTab(sale: data),
                    Column(
                      children: [
                        TotalProductCard(
                          ontap: () => ref.watch(goRouterProvider).push(const ProductListRoute(
                                hasAction: false,
                                isReturn: false,
                              ).location),
                        ),
                      ],
                    ),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(tripSaleRequestByIdProvider(tripSaleRequest.id)),
            )),
          ],
        ),
      ),
    );
  }
}
