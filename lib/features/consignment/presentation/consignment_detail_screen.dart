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
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/async_consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_over_view_tab.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentDetailScreen extends HookConsumerWidget {
  const ConsignmentDetailScreen({
    super.key,
    required this.consignment,
    required this.isOrderApproval,
  });
  final Consignment consignment;
  final bool isOrderApproval;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final consignmentOrder = useState(consignment);
    final consignmentById = ref.watch(consignmentByIdProvider(consignment.id));

    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.consignment);
    final hasSaleModulesAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.consignment, MODULE.consignment);

    ref.listen(consignmentByIdProvider(consignment.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (consignment) {
            consignmentOrder.value = consignment;

            ref.read(productListNotifierProvider.notifier).setProductList(consignment.products.map((e) => e.copyWith(isConsignment: true)).toList());

            final amount = consignment.subtotal;

            final discount = consignment.discountType == AmountOrPercentStatus.amount ? consignment.discountAmount : (consignment.discountAmount / 100) * amount;

            final tax = consignment.taxType == AmountOrPercentStatus.amount ? consignment.taxAmount : (consignment.taxAmount / 100) * amount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  taxType: consignment.taxType,
                  taxAmount: tax,
                  discountType: consignment.discountType,
                  discountAmount: discount,
                  otherChargesAmount: consignment.otherChargesAmount,
                  grandtotal: consignment.grandtotal,
                ));
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    final convertToInvoiceButton = CustomPopUpMenuItem(
      title: "Convert to Invoice",
      ontap: () {
        ref.watch(goRouterProvider).push(
              const ConvertToConsignmentInvoiceRoute(isEdit: false).location,
              extra: ConsignmentInvoice(
                customer: consignmentOrder.value.customer,
                consignmentCode: consignmentOrder.value.code,
                dueDate: getDueDate(consignmentOrder.value.date, consignmentOrder.value.paymentTerm.name),
                consignmentId: consignmentOrder.value.id,
                consignmentTypeId: consignmentOrder.value.consignmentTypeId,
                paymentTerm: consignmentOrder.value.paymentTerm,
                paymentType: consignmentOrder.value.paymentType,
                balance: consignmentOrder.value.grandtotal,
                grandtotal: consignmentOrder.value.grandtotal,
                products: ref.watch(productListNotifierProvider),
                otherChargesAmount: consignmentOrder.value.otherChargesAmount,
                saleDate: consignmentOrder.value.date,
                taxType: consignmentOrder.value.taxType,
                taxAmount: consignmentOrder.value.taxAmount,
                discountType: consignmentOrder.value.discountType,
                discountAmount: consignmentOrder.value.discountAmount,
                subtotal: consignmentOrder.value.subtotal,
                businessUnit: consignmentOrder.value.businessUnit,
                region: consignmentOrder.value.region,
                consignmentMethod: consignmentOrder.value.consignmentMethod,
                // warehouse: consignmentOrder.value.warehouse,
              ),
            );
      },
      icon: const Icon(Icons.receipt_long_outlined, size: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment Details"),
        actions: [
          if (!isOrderApproval)
            CustomPopUpMenuButton(
              popupMenuEntries: [
                // credit
                if (hasInvModuleAccess.contains(PERMISSION.create) && consignmentOrder.value.orderStatus == OrderStatus.accept) ...[convertToInvoiceButton],

                //cash down
                // if (consignmentOrder.value.paymentType.id == 3 &&
                //     consignmentOrder.value.orderStatus !=
                //         OrderStatus.alreadyInvoice) ...[convertToInvoiceButton],
                //edit
                if (hasSaleModulesAccess.contains(PERMISSION.update) && consignmentOrder.value.orderStatus != OrderStatus.accept && consignmentOrder.value.orderStatus != OrderStatus.alreadyInvoice) ...[
                  CustomPopUpMenuItem(
                    title: "Edit",
                    ontap: () {
                      ref.watch(goRouterProvider).push(
                            const ConsignmentFormRoute(isEdit: true).location,
                            extra: consignmentOrder.value,
                          );
                    },
                    icon: const Icon(Icons.edit_outlined, size: 20),
                  ),
                ],

                if (hasSaleModulesAccess.contains(PERMISSION.delete) && consignmentOrder.value.orderStatus != OrderStatus.accept && consignmentOrder.value.orderStatus != OrderStatus.alreadyInvoice)
                  CustomPopUpMenuItem(
                    title: "Delete",
                    textColor: errorColor,
                    ontap: () => CustomDialog.showDeleteWitReasonDialog(
                        onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location),
                        provider: asyncConsignmentFormNotifierProvider,
                        onPressed: (v) {
                          ref.read(asyncConsignmentFormNotifierProvider.notifier).deleteConsignment(consignment.id, v);
                        }),
                    icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                  ),
                CustomPopUpMenuItem(
                  title: "Print",
                  textColor: brandColor,
                  isLast: true,
                  ontap: () async => await printConsignmentV2(context, consignmentOrder.value),
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
                  ontap: () async => await printConsignmentV2(context, consignmentOrder.value),
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
              value: consignmentById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    ConsignmentOverViewTab(
                      sale: data,
                      isOrderApproval: isOrderApproval,
                    ),
                    const ProductTab1(),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(consignmentByIdProvider(consignment.id)),
            )),
          ],
        ),
      ),
    );
  }
}
