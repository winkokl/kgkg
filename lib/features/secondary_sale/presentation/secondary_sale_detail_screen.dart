import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/async_secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/presentation/widgets/sale/secondary_sale_over_view_tab.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleDetailScreen extends HookConsumerWidget {
  const SecondarySaleDetailScreen({
    super.key,
    required this.secondarySale,
    required this.isOrderApproval,
  });
  final SecondarySale secondarySale;
  final bool isOrderApproval;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final ss = useState(secondarySale);
    final secondarySaleById = ref.watch(secondarySaleByIdProvider(secondarySale.id));

    final hasSaleOrderAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.salesOrder, MODULE.secondarySalesOrder);
    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.secondarySalesOrder);

    ref.listen(secondarySaleByIdProvider(secondarySale.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (secondarySale) {
            final tmpProducts = secondarySale.products;

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
                print("Promotion Info List: $infoList"); // Debug print
                if (infoList.isEmpty) {
                  continue;
                }
                final promotionInfo = infoList.firstWhere(
                  (e) {
                    final fromSaleRange = e.saleRangeFrom;
                    final toSaleRange = e.saleRangeTo;
                    // Check for MMK range type
                    if (promotionDetail.rangeType == SaleRangeType.mmk) {
                      if (amount >= fromSaleRange && amount <= toSaleRange) {
                        return true;
                      } else if (amount > toSaleRange) {
                        return e == infoList.last; // Ensure we return the last item for over-range
                      }
                    } else {
                      // Check for Quantity range type
                      if (qty >= fromSaleRange && qty <= toSaleRange) {
                        return true;
                      } else if (qty > toSaleRange) {
                        return e == infoList.last; // Ensure we return the last item for over-range
                      }
                    }
                    return false;
                  },
                  orElse: () => Info.defaultValue(), // Return null if no match is found
                );
                newProductList.add(p.copyWith(
                    promotionInfo: promotionInfo.copyWith(
                  promotionName: promotionDetail.promotionName,
                  skulabel: promotionDetail.sku.isEmpty ? "" : promotionDetail.sku.firstWhere((element) => element.value == p.unit.id).label,
                )));
              } else {
                newProductList.add(p);
              }
            }

            ref.read(productListNotifierProvider.notifier).setProductList(newProductList);

            final amount = secondarySale.subtotal;

            final discount = secondarySale.discountType == AmountOrPercentStatus.amount ? secondarySale.discountAmount : (secondarySale.discountAmount / 100) * amount;

            final tax = secondarySale.taxType == AmountOrPercentStatus.amount ? secondarySale.taxAmount : (secondarySale.taxAmount / 100) * amount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  taxType: secondarySale.taxType,
                  taxAmount: tax,
                  discountType: secondarySale.discountType,
                  discountAmount: discount,
                  otherChargesAmount: secondarySale.otherChargesAmount,
                  grandtotal: secondarySale.grandtotal,
                ));
            ss.value = secondarySale;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    final converToInvoiceButton = CustomPopUpMenuItem(
      title: "Convert to Invoice",
      ontap: () {
        ref.watch(goRouterProvider).push(
              const ConvertToSecondarySaleInvoiceRoute(isEdit: false).location,
              extra: SecondarySaleInvoice(
                customer: secondarySale.customer,
                dueDate: secondarySale.paymentType.id == 3 ? dateFormat(DateTime.now()) : getDueDate(secondarySale.date, secondarySale.paymentTerm.name),
                deliveryDate: secondarySale.deliveryDate,
                paymentTerm: secondarySale.paymentTerm,
                paymentType: secondarySale.paymentType,
                balance: secondarySale.grandtotal,
                grandtotal: secondarySale.grandtotal,
                products: ref.watch(productListNotifierProvider),
                otherChargesAmount: secondarySale.otherChargesAmount,
                saleDate: secondarySale.date,
                taxType: secondarySale.taxType,
                taxAmount: secondarySale.taxAmount,
                discountType: secondarySale.discountType,
                discountAmount: secondarySale.discountAmount,
                subtotal: secondarySale.subtotal,
                saleOrderId: secondarySale.id,
                businessUnit: ss.value.businessUnit,
                cashBack: ss.value.cashBack,
                bonus: ss.value.bonus,
                salePromotion: ss.value.salePromotion.id == -1 ? null : ss.value.salePromotion,
              ),
            );
      },
      icon: const Icon(Icons.receipt_long_outlined, size: 20),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sales Order Details"),
        actions: [
          if (!isOrderApproval)
            CustomPopUpMenuButton(
              popupMenuEntries: [
                // credit
                // if (hasInvModuleAccess.value.contains(PERMISSION.create) && ss.value.paymentType.id == 1 && ss.value.orderStatus == OrderStatus.accept) ...[converToInvoiceButton],

                //cash down
                if (hasInvModuleAccess.contains(PERMISSION.create) && ss.value.orderStatus == OrderStatus.accept && ss.value.orderStatus != OrderStatus.alreadyInvoice) ...[converToInvoiceButton],

                //edit
                if (hasSaleOrderAccess.contains(PERMISSION.update) && ss.value.orderStatus != OrderStatus.accept && ss.value.orderStatus != OrderStatus.alreadyInvoice) ...[
                  CustomPopUpMenuItem(
                    title: "Edit",
                    ontap: () {
                      ref.watch(goRouterProvider).push(
                            const SecondarySaleFormRoute(isEdit: true).location,
                            extra: ss.value,
                          );
                    },
                    icon: const Icon(Icons.edit_outlined, size: 20),
                  ),
                ],

                if (hasSaleOrderAccess.contains(PERMISSION.delete) && ss.value.orderStatus != OrderStatus.accept && ss.value.orderStatus != OrderStatus.alreadyInvoice)
                  CustomPopUpMenuItem(
                    title: "Delete",
                    textColor: errorColor,
                    ontap: () => CustomDialog.showDeleteWitReasonDialog(
                        onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const SecondarySaleRoute().location),
                        provider: asyncSecondarySaleFormNotifierProvider,
                        onPressed: (v) {
                          ref.read(asyncSecondarySaleFormNotifierProvider.notifier).deleteSecondarySale(secondarySale.id, v);
                        }),
                    icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                  ),
                CustomPopUpMenuItem(
                  title: "Print",
                  textColor: brandColor,
                  isLast: true,
                  ontap: () async => await printSecondarySaleV2(context,ss.value),
                  icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
                ),
              ],
            ),
          if (isOrderApproval)
            CustomPopUpMenuButton(
              popupMenuEntries: [
                CustomPopUpMenuItem(
                  title: "Print",
                  textColor: brandColor,
                  isLast: true,
                  ontap: () async => await printSecondarySaleV2(context,ss.value),
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
              value: secondarySaleById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    SecondarySaleOverViewTab(sale: data, isOrderApproval: isOrderApproval),
                    ProductTab1(salePromotion: ss.value.salePromotion.id == -1 ? null : ss.value.salePromotion),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(secondarySaleByIdProvider(secondarySale.id)),
            )),
          ],
        ),
      ),
    );
  }
}
