import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/presentation/widgets/delivery_note_overview_tab.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';

class DeliveryNoteDetailScreen extends HookConsumerWidget {
  const DeliveryNoteDetailScreen({
    super.key,
    required this.deliveryNote,
  });
  final DeliveryNote deliveryNote;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final ss = useState(deliveryNote);
    final deliveryNoteById = ref.watch(deliveryNoteByIdProvider(deliveryNote.id));

    final hasDeliveryNoteModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.deliveryNote, MODULE.goodRequest);

    ref.listen(deliveryNoteByIdProvider(deliveryNote.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (deliveryNote) {
            ref.read(productListNotifierProvider.notifier).setProductList(deliveryNote.products);
            ss.value = deliveryNote;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Note Details"),
        actions: hasDeliveryNoteModuleAccess.contains(PERMISSION.update) && ss.value.status == DeliveryNoteStatus.pending
            ? [
                CustomPopUpMenuButton(
                  popupMenuEntries: [
                    CustomPopUpMenuItem(
                      title: "Make Deliver",
                      ontap: () {
                        ref.watch(goRouterProvider).push(const SignToDeliveryNoteRoute().location, extra: ss.value);
                      },
                      icon: const Icon(Icons.edit_outlined, size: 20),
                    ),
                  ],
                ),
              ]
            : null,
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
              value: deliveryNoteById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    DeliveryNoteOverViewTab(deliveryNote: data),
                    Column(
                      children: [
                        TotalProductCard(
                          ontap: () => ref.watch(goRouterProvider).push(DeliveryNoteProductListRoute().location),
                        ),
                      ],
                    ),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(deliveryNoteByIdProvider(deliveryNote.id)),
            )),
          ],
        ),
      ),
    );
  }
}
