import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/async_secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/invoice/secondary_sale_invoice_over_view_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/promotion_eligible_dialog.dart';

class SecondarySaleInvoiceDetailScreen extends HookConsumerWidget {
  const SecondarySaleInvoiceDetailScreen({super.key, required this.secondarySaleInvoice});
  final SecondarySaleInvoice secondarySaleInvoice;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    final secondarySaleInvoiceById = ref.watch(secondarySaleInvoiceByIdProvider(secondarySaleInvoice.id));

    final hasInvoiceModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.secondarySalesOrder);
    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceive, MODULE.secondarySalesOrder);

    // Initialize product and charge data when invoice loads, with cleanup on dispose
    useEffect(() {
      secondarySaleInvoiceById.whenData((invoice) {
        _initializeProductsAndCharges(ref, invoice);
      });

      // Cleanup: Clear these providers when screen is disposed
      return () {
        ref.invalidate(productListNotifierProvider);
        ref.invalidate(totalChargesFormNotifierProvider);
      };
    }, [secondarySaleInvoiceById]);

    return secondarySaleInvoiceById.when(
      data: (invoice) => _buildScaffold(
        context,
        ref,
        tabController,
        invoice,
        hasInvoiceModuleAccess,
        hasPaymentModuleAccess,
      ),
      loading: () => Scaffold(
        appBar: AppBar(title: const Text("Invoice Details")),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        appBar: AppBar(title: const Text("Invoice Details")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text("Error loading invoice: $error"),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(secondarySaleInvoiceByIdProvider(secondarySaleInvoice.id)),
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _initializeProductsAndCharges(WidgetRef ref, SecondarySaleInvoice invoice) {
    final tmpProducts = invoice.products;
    List<Product> newProductList = [];

    for (final p in tmpProducts) {
      if (p.isPromotionItem) {
        final promotionDetail = p.promotionDetail;
        final infoList = promotionDetail.info;

        final unit = p.unitTypes.firstWhere((e) => e.id == p.unit.id);
        final baseQty = unit.baseQty == 0 ? 1 : unit.baseQty;

        final amount = p.amount * baseQty;
        final qty = baseQty * p.quantity;
        // Determine promotion info based on the range type
        final promotionInfo = infoList.firstWhere(
          (e) {
            final fromSaleRange = e.saleRangeFrom;
            final toSaleRange = e.saleRangeTo;
            // Check for MMK range type
            if (promotionDetail.rangeType == SaleRangeType.mmk) {
              if (amount >= fromSaleRange && amount <= toSaleRange) {
                return true;
              } else if (amount > toSaleRange) {
                return e == infoList.last;
              }
            } else {
              // Check for Quantity range type
              if (qty >= fromSaleRange && qty <= toSaleRange) {
                return true;
              } else if (qty > toSaleRange) {
                return e == infoList.last;
              }
            }
            return false;
          },
          orElse: () => Info.defaultValue(),
        );
        newProductList.add(p.copyWith(
            promotionInfo: promotionInfo.copyWith(
          promotionName: promotionDetail.promotionName,
          skulabel: promotionDetail.sku.firstWhere((element) => element.value == p.unit.id).label,
        )));
      } else {
        newProductList.add(p);
      }
    }

    ref.read(productListNotifierProvider.notifier).setProductList(newProductList);

    final amount = invoice.subtotal;

    final discount = invoice.discountType == AmountOrPercentStatus.amount ? invoice.discountAmount : (invoice.discountAmount / 100) * amount;

    final tax = invoice.taxType == AmountOrPercentStatus.amount ? invoice.taxAmount : (invoice.taxAmount / 100) * amount;

    ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
          taxType: invoice.taxType,
          taxAmount: tax,
          discountType: invoice.discountType,
          discountAmount: discount,
          otherChargesAmount: invoice.otherChargesAmount,
          grandtotal: invoice.grandtotal,
        ));
  }

  Widget _buildScaffold(
    BuildContext context,
    WidgetRef ref,
    TabController tabController,
    SecondarySaleInvoice invoice,
    List<String> hasInvoiceModuleAccess,
    List<String> hasPaymentModuleAccess,
  ) {
    final tabBar = CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Details"),
        actions: [
          if (invoice.balance == 0)
            InkWell(
              child: const Icon(Icons.payments_outlined),
              onTap: () => showPromotionEligibleDialog(context, invoice.id),
            ),
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && invoice.paymentStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment Receive",
                  ontap: () => ref.read(goRouterProvider).push(
                        const MakeSecondarySalePaymentReceiveRoute().location,
                        extra: invoice,
                      ),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasInvoiceModuleAccess.contains(PERMISSION.update) && invoice.paymentStatus != PaymentStatus.paid && invoice.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.read(goRouterProvider).push(
                          const ConvertToSecondarySaleInvoiceRoute(isEdit: true).location,
                          extra: invoice.copyWith(products: ref.read(productListNotifierProvider)),
                        );
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasInvoiceModuleAccess.contains(PERMISSION.delete) && invoice.paymentStatus != PaymentStatus.paid && invoice.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                    provider: asyncSecondarySaleFormNotifierProvider,
                    onData: (msg) => ref.read(goRouterProvider).popUntilPath(const SecondarySaleRoute().location),
                    onPressed: (v) {
                      ref.read(asyncSecondarySaleFormNotifierProvider.notifier).deleteInvoice(secondarySaleInvoice.id, v);
                    },
                  ),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printSecondarySaleInvoiceV2(context, invoice),
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
            tabBar,
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  SecondarySaleInvoiceOverViewTab(secondarySaleInvoice: invoice),
                  ProductTab1(salePromotion: invoice.salePromotion),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
