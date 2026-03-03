import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/async_trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_name_tab.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_user_assign_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripUserAssignDetailScreen extends HookConsumerWidget {
  const TripUserAssignDetailScreen({super.key, required this.tripUserAssign});
  final TripUserAssign tripUserAssign;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["User Information", "Trip Names"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip User Assign Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              // CustomPopUpMenuItem(
              //   title: "Print",
              //   textColor: brandColor,
              //   ontap: () async {},
              //   icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
              // ),
              CustomPopUpMenuItem(
                title: "Delete",
                textColor: errorColor,
                ontap: () => CustomDialog.showDeleteWitReasonDialog(
                  onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleRoute().location),
                  provider: asyncTripSaleFormNotifierProvider,
                  onPressed: (v) => ref.read(asyncTripSaleFormNotifierProvider.notifier).deleteTripUserAssign(tripUserAssign.id, v),
                ),
                isLast: true,
                icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  TripUserAssignOverViewTab(tripUserAssign: tripUserAssign),
                  TripNameTab(trips: tripUserAssign.trips),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
