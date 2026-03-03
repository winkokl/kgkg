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
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_tab.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/async_consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/invoice/consignment_invoice_over_view_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentInvoiceDetailScreen extends HookConsumerWidget {
  const ConsignmentInvoiceDetailScreen({super.key, required this.consignmentInvoice});
  final ConsignmentInvoice consignmentInvoice;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final ssInvoice = useState(consignmentInvoice);

    final consignmentInvoiceById = ref.watch(consignmentInvoiceByIdProvider(consignmentInvoice.id));

    final hasInvModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.invoice, MODULE.consignment);

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceive, MODULE.consignment);

    ref.listen(consignmentInvoiceByIdProvider(consignmentInvoice.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (consignmentInvoice) {
            ref.read(productListNotifierProvider.notifier).setProductList(consignmentInvoice.products.map((e) => e.copyWith(isConsignment: true)).toList());

            final amount = consignmentInvoice.subtotal;

            final discount = consignmentInvoice.discountType == AmountOrPercentStatus.amount ? consignmentInvoice.discountAmount : (consignmentInvoice.discountAmount / 100) * amount;

            final tax = consignmentInvoice.taxType == AmountOrPercentStatus.amount ? consignmentInvoice.taxAmount : (consignmentInvoice.taxAmount / 100) * amount;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  taxType: consignmentInvoice.taxType,
                  taxAmount: tax,
                  discountType: consignmentInvoice.discountType,
                  discountAmount: discount,
                  otherChargesAmount: consignmentInvoice.otherChargesAmount,
                  grandtotal: consignmentInvoice.grandtotal,
                ));

            ssInvoice.value = consignmentInvoice;
          });
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
                  ontap: () => ref.watch(goRouterProvider).push(const MakeConsignmentPaymentReceiveRoute().location, extra: ssInvoice.value),
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.update) && ssInvoice.value.paymentStatus != PaymentStatus.paid && ssInvoice.value.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () => ref.watch(goRouterProvider).push(const ConvertToConsignmentInvoiceRoute(isEdit: true).location, extra: ssInvoice.value.copyWith(products: ref.watch(productListNotifierProvider))),
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasInvModuleAccess.contains(PERMISSION.delete) && ssInvoice.value.paymentStatus != PaymentStatus.paid && ssInvoice.value.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      provider: asyncConsignmentFormNotifierProvider,
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location),
                      onPressed: (v) {
                        ref.read(asyncConsignmentFormNotifierProvider.notifier).deleteInvoice(consignmentInvoice.id, v);
                      }),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printConsignmentInvoiceV2(context, ssInvoice.value),
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
                    value: consignmentInvoiceById,
                    data: (data) {
                      return TabBarView(
                        physics: const BouncingScrollPhysics(),
                        controller: tabController,
                        children: [
                          ConsignmentInvoiceOverViewTab(consignmentInvoice: data),
                          const ProductTab1(),
                        ],
                      );
                    },
                    errorCallback: () => ref.invalidate(consignmentInvoiceByIdProvider))),
          ],
        ),
      ),
    );
  }
}
