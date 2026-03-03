import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/async_marketing_promotion_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/invoice_items_widget.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/invoice_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/widgets/total_amount_widget.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';

class InvoiceDetailScreen extends HookConsumerWidget {
  const InvoiceDetailScreen({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final invoiceById = ref.watch(invoiceByIdProvider(id));
    final inv = useState<Invoice?>(null);

    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoices, MODULE.marketingPromotion);

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceived, MODULE.marketingPromotion);

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products", "Gift Items", "Total Amount"]);

    ref.listen(invoiceByIdProvider(id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (invoice) {
            final subtotal = invoice.products.isEmpty
                ? 0.0
                : invoice.products.map((e) => e.amount).reduce(
                      (value, element) => value + element,
                    );

            final amount = subtotal;
            final discount = invoice.discountType == AmountOrPercentStatus.amount ? invoice.discountAmount : (invoice.discountAmount / 100) * amount;
            final tax = invoice.taxType == AmountOrPercentStatus.amount ? invoice.taxAmount : (invoice.taxAmount / 100) * amount;
            final bonus = invoice.bonusType == AmountOrPercentStatus.amount ? invoice.bonusAmt : (invoice.bonusAmt / 100) * amount;
            final cashback = invoice.cashbackType == AmountOrPercentStatus.amount ? invoice.cashbackAmt : (invoice.cashbackAmt / 100) * amount;

            final otherCharges = invoice.otherCharges;

            final totalAmount = amount + tax + otherCharges - (discount + bonus + cashback);

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  subtotal: subtotal,
                  taxType: invoice.taxType,
                  taxAmount: tax,
                  discountType: invoice.discountType,
                  discountAmount: discount,
                  bonusType: invoice.bonusType,
                  bonusAmount: bonus,
                  cashbackType: invoice.cashbackType,
                  cashbackAmount: cashback,
                  otherChargesAmount: invoice.otherCharges,
                  grandtotal: totalAmount,
                ));
            ref.read(invoiceFormNotifierProvider.notifier).setProducts(invoice.products);
            ref.read(invoiceFormNotifierProvider.notifier).setGiftItems(invoice.giftItems);
            return inv.value = invoice.copyWith(
              customerId: invoice.marketingPromotionPlan.customerId,
              businessUnitId: invoice.marketingPromotionPlan.businessUnitId,
            );
          });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && inv.value?.paymentStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment Receive",
                  ontap: () => ref.watch(goRouterProvider).push(const MakePaymentReceiveRoute().location, extra: inv.value),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.update) && inv.value?.paymentStatus != PaymentStatus.paid && inv.value?.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () => ref.watch(goRouterProvider).push(const InvoiceFormRoute(isEdit: true).location, extra: inv.value),
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.delete) && inv.value?.paymentStatus != PaymentStatus.paid && inv.value?.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  isLast: true,
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      provider: asyncMarketingPromotionFormNotifierProvider,
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const MarketingPromotionPlanRoute().location),
                      onPressed: (v) {
                        ref.read(asyncMarketingPromotionFormNotifierProvider.notifier).deleteInvoice(id, v);
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
              value: invoiceById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    InvoiceOverViewTab(invoice: data),
                    const ProductList(isReadOnly: true),
                    const GiftItemList(isReadOnly: true),
                    const TotalAmountWidget(isReadOnly: true),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(invoiceByIdProvider(id)),
            )),
          ],
        ),
      ),
    );
  }
}
