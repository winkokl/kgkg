import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/good_requisition_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/item_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/good_requisition_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodRequisitionDetailScreen extends HookConsumerWidget {
  const GoodRequisitionDetailScreen({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    final goodRequisitionById = ref.watch(goodRequisitionByIdProvider(id));
    final goodRequisition = useState<GoodRequisition?>(null);

    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoices, MODULE.marketingPromotion);

    final hasGoodRequisitionModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.goodRequisition, MODULE.marketingPromotion);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products", "Gift Items"]);

    ref.listen(goodRequisitionByIdProvider(id), (previous, state) {
      state.maybeWhen(orElse: () {}, data: (data) => goodRequisition.value = data);
    });

    ref.listen(marketingPromotionNotifierProvider, (previous, state) {
      state.maybeWhen(
        orElse: () {},
        error: (error, stackTrace) => LoadingOverlay.hide(),
        loading: () => LoadingOverlay.show(),
        data: (data) {
          LoadingOverlay.hide();
          return data.fold(
            () => null,
            (mmp) {
              final invoice = Invoice(
                planId: mmp.id,
                customerId: mmp.customerId,
                businessUnitId: mmp.businessUnitId,
                products: mmp.products,
                giftItems: mmp.giftItems,
                marketingPromotionPlan: mmp,
              );
              ref.watch(goRouterProvider).push(const InvoiceFormRoute(isEdit: false).location, extra: invoice);
            },
          );
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Good Requisition Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasGoodRequisitionModuleAccess.contains(PERMISSION.update) && goodRequisition.value?.status == GoodRequisitionStatus.open)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () => ref.watch(goRouterProvider).push(const GoodRequisitionFormRoute().location, extra: goodRequisition.value),
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.create) && goodRequisition.value?.status == GoodRequisitionStatus.open)
                CustomPopUpMenuItem(
                  title: "Convert To Invoice",
                  textColor: brandColor,
                  isLast: true,
                  ontap: () => ref.read(marketingPromotionNotifierProvider.notifier).getById(id),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20, color: brandColor),
                ),
            ],
          ),
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
                child: AsyncValueWidget(
              value: goodRequisitionById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    GoodRequisitionOverViewTab(goodrequisition: data),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final product = data.products[index];
                        return GestureDetector(
                          onTap: () => ref.watch(goRouterProvider).push(const PromotionProductDetailRoute().location, extra: product),
                          child: ItemCard(
                            title: product.productName,
                            subtitle: '${product.baseQty} (${product.unitName})',
                            extraSubtitle: product.warehouseName,
                            statusWidget: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const HeaderTextSmall("Amount"),
                                const SizedBox(height: 4),
                                HeaderText(formatter.format(product.amount)),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.products.length,
                    ),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final product = data.giftItems[index];
                        return ItemCard(
                          title: product.giftName,
                          subtitle: '${product.baseQty} (${product.unitName})',
                        );
                      },
                      itemCount: data.giftItems.length,
                    ),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(goodRequisitionByIdProvider(id)),
            )),
          ],
        ),
      ),
    );
  }
}
