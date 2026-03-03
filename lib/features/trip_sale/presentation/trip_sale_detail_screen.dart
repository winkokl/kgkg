import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/async_trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_over_view_tab.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleDetailScreen extends HookConsumerWidget {
  const TripSaleDetailScreen({
    super.key,
    required this.tripSale,
  });
  final TripSale tripSale;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final tripSaleOrder = useState(tripSale);
    final tripSaleById = ref.watch(tripSaleByIdProvider(tripSale.id));

    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.trip);
    final hasSaleModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.salesOrder, MODULE.trip);

    ref.listen(tripSaleByIdProvider(tripSale.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (tripSale) {
            tripSaleOrder.value = tripSale;
            List<Product> tmpProductList = [];

            // Add trip products
            for (var i = 0; i < tripSale.products.length; i++) {
              final product = tripSale.products[i].copyWith(isTrip: true);
              tmpProductList.add(product);
            }

            // Apply promotion details if available
            if (tripSale.salePromotion.id != -1 && tripSale.salePromotion.id != 0) {
              final promotion = tripSale.salePromotion;
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

            ref.read(productListNotifierProvider.notifier).setProductList(tmpProductList);

            final amount = tripSale.subtotal;
            final discount = tripSale.discountType == AmountOrPercentStatus.amount ? tripSale.discountAmount : (tripSale.discountAmount / 100) * amount;
            final tax = tripSale.taxType == AmountOrPercentStatus.amount ? tripSale.taxAmount : (tripSale.taxAmount / 100) * amount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  taxType: tripSale.taxType,
                  taxAmount: tax,
                  discountType: tripSale.discountType,
                  discountAmount: discount,
                  otherChargesAmount: tripSale.otherChargesAmount,
                  grandtotal: tripSale.grandtotal,
                ));
          });

      //     ref.listen(salePromotionNotifierProvider, (previous, state) {
      // state.maybeWhen(
      //   orElse: () {},
      //   data: (salePromotionOption) {
      //     salePromotionOption.match(
      //       () {},
      //       (salePromotion) {
      //         ref.read(tripSaleFormNotifierProvider.notifier).setPromotion(salePromotion);
      //       },
      //     );
      //   },);
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
        title: const Text("Sales Order Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasInvModuleAccess.contains(PERMISSION.create) && tripSale.orderStatus != OrderStatus.alreadyInvoice) ...[
                CustomPopUpMenuItem(
                  title: "Convert to Invoice",
                  ontap: () {
                    print("trip sale in convert to invoice promotion: ${tripSaleOrder.value.salePromotion}");
                    ref.watch(goRouterProvider).push(const ConvertToTripSaleInvoiceRoute(isEdit: false).location,
                        extra: TripSaleInvoice(
                          customer: tripSale.customer,
                          tripSaleId: tripSale.tripSaleRequest.tripSaleRequestCode,
                          saleOrderCode: tripSale.code,
                          dueDate: tripSale.paymentType.id == 3 ? dateFormat(DateTime.now()) : getDueDate(tripSale.date, tripSale.paymentTerm.name),
                          paymentTerm: tripSale.paymentTerm,
                          paymentType: tripSale.paymentType,
                          balance: tripSale.grandtotal,
                          grandtotal: tripSale.grandtotal,
                          products: ref.watch(productListNotifierProvider),
                          otherChargesAmount: tripSale.otherChargesAmount,
                          saleDate: tripSale.date,
                          taxType: tripSale.taxType,
                          taxAmount: tripSale.taxAmount,
                          discountType: tripSale.discountType,
                          discountAmount: tripSale.discountAmount,
                          subtotal: tripSale.subtotal,
                          saleOrderId: tripSale.id,
                          businessUnit: tripSaleOrder.value.businessUnit,
                          salePromotionId: tripSaleOrder.value.salePromotion.id,
                          salePromotion: tripSaleOrder.value.salePromotion,
                        ));
                  },
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              ],
              if (hasSaleModuleAccess.contains(PERMISSION.update) && tripSale.orderStatus != OrderStatus.alreadyInvoice) ...[
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const TripSaleFormRoute(isEdit: true).location, extra: tripSaleOrder.value);
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              ],
              if (hasSaleModuleAccess.contains(PERMISSION.delete) && tripSale.orderStatus != OrderStatus.alreadyInvoice)
                CustomPopUpMenuItem(
                  title: "Delete",
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleRoute().location),
                      provider: asyncTripSaleFormNotifierProvider,
                      onPressed: (v) {
                        ref.read(asyncTripSaleFormNotifierProvider.notifier).deleteTripSale(tripSale.id, v);
                      }),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printTripSaleV2(context, tripSaleOrder.value),
                icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
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
              value: tripSaleById,
              data: (data) {
                print("data is : ${data.salePromotion}");
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    TripSaleOverViewTab(sale: data),
                    ProductTab1(
                      salePromotion: data.salePromotion,
                    ),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(tripSaleByIdProvider(tripSale.id)),
            )),
          ],
        ),
      ),
    );
  }
}
