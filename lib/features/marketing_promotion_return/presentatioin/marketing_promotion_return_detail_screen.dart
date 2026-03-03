import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/async_marketing_promotion_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/marketing_promotion_return_overview_tab.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/marketing_promotion_return_total_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/presentatioin/widgets/return_items_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';

class MarketingPromotionReturnDetailScreen extends HookConsumerWidget {
  const MarketingPromotionReturnDetailScreen({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final marketingPromotionReturnById = ref.watch(marketingPromotionReturnByIdProvider(id));
    final marketingReturn = useState<MarketingPromotionReturn?>(null);

    final hasReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.marketingPromotionReturn, MODULE.marketingPromotionReturn);

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.makePayment, MODULE.marketingPromotionReturn);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products", "Gift Items", "Total Amount"]);

    ref.listen(marketingPromotionReturnByIdProvider(id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (mpReturn) {
            final subtotal = mpReturn.products.isEmpty
                ? 0.0
                : mpReturn.products.map((e) => e.returnAmount).reduce(
                      (value, element) => value + element,
                    );

            final amount = subtotal;

            final otherCharges = mpReturn.otherCharges;
            final detuctAmount = mpReturn.deductAmount;
            final grandTotal = subtotal + otherCharges;
            final totalReturnAmount = amount + otherCharges - detuctAmount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  subtotal: subtotal,
                  returnDeductAmount: detuctAmount,
                  totalReturnAmount: totalReturnAmount,
                  otherChargesAmount: mpReturn.otherCharges,
                  grandtotal: grandTotal,
                ));
            ref.read(returnFormNotifierProvider.notifier).setProducts(mpReturn.products);
            ref.read(returnFormNotifierProvider.notifier).setGiftItems(mpReturn.giftItems);
            marketingReturn.value = mpReturn;
          });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Promotion Return Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && marketingReturn.value?.returnStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment",
                  ontap: () => ref.watch(goRouterProvider).push(const MakeReturnPaymentRoute().location, extra: marketingReturn.value),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasReturnModuleAccess.contains(PERMISSION.update) && marketingReturn.value?.returnStatus != PaymentStatus.paid && marketingReturn.value?.returnStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () => ref.watch(goRouterProvider).push(const MarketingPromotionReturnFormRoute(isEdit: true).location, extra: marketingReturn.value),
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasReturnModuleAccess.contains(PERMISSION.delete) && marketingReturn.value?.returnStatus != PaymentStatus.paid && marketingReturn.value?.returnStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  isLast: true,
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      provider: asyncMarketingPromotionReturnFormNotifierProvider,
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const MarketingPromotionReturnRoute().location),
                      onPressed: (v) {
                        ref.read(asyncMarketingPromotionReturnFormNotifierProvider.notifier).deleteMarketingPromotionReturn(id, v);
                      }),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
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
                child: AsyncValueWidget(
              value: marketingPromotionReturnById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    MarketingPromotionReturnOverViewTab(mpreturn: data),
                    const ProductList(isReadOnly: true),
                    const GiftItemList(isReadOnly: true),
                    const MarketingPromotionReturnTotalWidget(isReadOnly: true),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(marketingPromotionPlanByIdProvider(id)),
            )),
          ],
        ),
      ),
    );
  }
}
