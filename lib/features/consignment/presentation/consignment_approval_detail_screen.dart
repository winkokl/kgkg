import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/async_consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_order_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentApprovalDetailScreen extends HookConsumerWidget {
  const ConsignmentApprovalDetailScreen({
    super.key,
    required this.consignmentApproval,
  });
  final ConsignmentApproval consignmentApproval;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final conApproval = useState(consignmentApproval);

    final consignmentApprovalById = ref.watch(consignmentApprovalByIdProvider(consignmentApproval.id));

    ref.listen(consignmentApprovalByIdProvider(consignmentApproval.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (consignmentApproval) {
            ref.read(productListNotifierProvider.notifier).setProductList(consignmentApproval.products);
            conApproval.value = consignmentApproval;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    Future<void> printSaleOrder(ConsignmentApproval ss) async {
      LoadingOverlay.show();
      final subtotal = ss.subtotal;
      await PrintServiceV2.excuteSaleOrder(
          context,
          SaleOrderPrintFormat(
            customerName: ss.customer.name,
            date: ss.date,
            code: ss.code,
            products: ss.products,
            subtotal: subtotal,
            discount: ss.discountType == AmountOrPercentStatus.amount ? ss.discountAmount : (ss.discountAmount / 100) * subtotal,
            tax: ss.taxType == AmountOrPercentStatus.amount ? ss.taxAmount : (ss.taxAmount / 100) * subtotal,
            otherCharges: ss.otherChargesAmount,
            grandTotal: ss.grandtotal,
            paymentTerm: ss.paymentTerm.name,
          ));
      LoadingOverlay.hide();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment Approval Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              CustomPopUpMenuItem(
                title: "Delete",
                textColor: errorColor,
                ontap: () => CustomDialog.showDeleteWitReasonDialog(
                    onData: (message) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location),
                    provider: asyncConsignmentFormNotifierProvider,
                    onPressed: (v) {
                      ref.read(asyncConsignmentFormNotifierProvider.notifier).deleteConsignmentApproval(consignmentApproval.id, v);
                    }),
                isLast: true,
                icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
              ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                ontap: () async => await printSaleOrder(conApproval.value),
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
              value: consignmentApprovalById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    // ConsignmentApprovalOverViewTab(consignmentapproval: data),
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
              errorCallback: () => ref.invalidate(consignmentApprovalByIdProvider(consignmentApproval.id)),
            )),
          ],
        ),
      ),
    );
  }
}
