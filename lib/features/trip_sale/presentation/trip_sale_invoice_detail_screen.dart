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
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/async_trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/invoice/trip_sale_invoice_over_view_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleInvoiceDetailScreen extends HookConsumerWidget {
  const TripSaleInvoiceDetailScreen({super.key, required this.tripSaleInvoice});
  final TripSaleInvoice tripSaleInvoice;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final ssInvoice = useState(tripSaleInvoice);

    final tripSaleInvoiceById = ref.watch(tripSaleInvoiceByIdProvider(tripSaleInvoice.id));

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceive, MODULE.trip);
    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.trip);

    ref.listen(tripSaleInvoiceByIdProvider(tripSaleInvoice.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (tripSaleInvoice) {
            List<Product> tmpProductList = [];
            for (var i = 0; i < tripSaleInvoice.products.length; i++) {
              final product = tripSaleInvoice.products[i].copyWith(isTrip: true);
              tmpProductList.add(product);
            }

            if (tripSaleInvoice.salePromotion.id != -1 && tripSaleInvoice.salePromotion.id != 0) {
              final promotion = tripSaleInvoice.salePromotion;
              final promoProductIds = <int>{};
              final promoName = promotion.promotionName;
              final details = promotion.details ?? <dynamic>[];

              for (final d in details) {
                final pid = (d.productId ?? -1) as int;
                if (pid != -1) promoProductIds.add(pid);
              }

              tmpProductList = tmpProductList
                  .map((e) => promoProductIds.contains(e.id)
                      ? e.copyWith(
                          isPromotionItem: true,
                          itemBackProduct: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.firstWhere((element) => element.itemQty > 0, orElse: () => Info(promotionName: promoName, skulabel: "")) : Info(promotionName: promoName, skulabel: ""),
                          promotionDetail: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()),
                          promotionInfo: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.first.copyWith(promotionName: promoName, skulabel: "") : Info(promotionName: promoName, skulabel: ""),
                          promotionSku: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).sku.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).sku.first : const Sku(),
                        )
                      : e)
                  .toList();
            }

            // ref.read(productListNotifierProvider.notifier).setProductList(tmpProductList);
            ref.read(productListNotifierProvider.notifier).setProductList(tmpProductList);

            final amount = tripSaleInvoice.subtotal;

            final discount = tripSaleInvoice.discountType == AmountOrPercentStatus.amount ? tripSaleInvoice.discountAmount : (tripSaleInvoice.discountAmount / 100) * amount;

            final tax = tripSaleInvoice.taxType == AmountOrPercentStatus.amount ? tripSaleInvoice.taxAmount : (tripSaleInvoice.taxAmount / 100) * amount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  taxType: tripSaleInvoice.taxType,
                  taxAmount: tax,
                  discountType: tripSaleInvoice.discountType,
                  discountAmount: discount,
                  otherChargesAmount: tripSaleInvoice.otherChargesAmount,
                  grandtotal: tripSaleInvoice.grandtotal,
                ));

            ssInvoice.value = tripSaleInvoice;
          });
    });
    ref.listen(salePromotionNotifierProvider, (previous, state) {
      state.maybeWhen(
        orElse: () {},
        data: (salePromotionOption) {
          salePromotionOption.match(
            () {},
            (salePromotion) {
              // ref.read(tripSaleByIdProvider(tripSale.id)).setPromotion(salePromotion);
            },
          );
        },
      );
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && ssInvoice.value.paymentStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment Receive",
                  ontap: () => ref.watch(goRouterProvider).push(
                        const MakeTripSalePaymentReceiveRoute().location,
                        extra: ssInvoice.value,
                      ),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.update) && ssInvoice.value.paymentStatus != PaymentStatus.paid && ssInvoice.value.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const ConvertToTripSaleInvoiceRoute(isEdit: true).location, extra: ssInvoice.value.copyWith(products: ref.watch(productListNotifierProvider)));
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.delete) && ssInvoice.value.paymentStatus != PaymentStatus.paid && ssInvoice.value.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      provider: asyncTripSaleFormNotifierProvider,
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleRoute().location),
                      onPressed: (v) {
                        ref.read(asyncTripSaleFormNotifierProvider.notifier).deleteInvoice(tripSaleInvoice.id, v);
                      }),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => printTripSaleInvoiceV2(context, ssInvoice.value),
                icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
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
                    value: tripSaleInvoiceById,
                    data: (data) {
                      return TabBarView(
                        physics: const BouncingScrollPhysics(),
                        controller: tabController,
                        children: [
                          TripSaleInvoiceOverViewTab(tripSaleInvoice: data),
                          ProductTab1(salePromotion: data.salePromotion),
                        ],
                      );
                    },
                    errorCallback: () => ref.invalidate(tripSaleInvoiceByIdProvider))),
          ],
        ),
      ),
    );
  }
}
