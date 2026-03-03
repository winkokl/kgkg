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
import 'package:mgkaung_dms_mobile/features/consignment_return/application/async_consignment_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/widgets/consignment_return_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentReturnDetailScreen extends HookConsumerWidget {
  const ConsignmentReturnDetailScreen({super.key, required this.consignmentReturn});
  final ConsignmentReturn consignmentReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final cReturn = useState(consignmentReturn);

    final consignmentReturnById = ref.watch(consignmentReturnByIdProvider(consignmentReturn.id));
    final hasConReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.consignmentReturn, MODULE.consignmentReturn);

    ref.listen(consignmentReturnByIdProvider(consignmentReturn.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (consignmentReturn) {
            ref.read(productListNotifierProvider.notifier).setProductList(consignmentReturn.products);

            final amount = consignmentReturn.subtotal;

            final returnDeduct = consignmentReturn.returnDeductType == AmountOrPercentStatus.amount ? consignmentReturn.returnDeductAmount : (consignmentReturn.returnDeductAmount / 100) * amount;

            final otherCharges = consignmentReturn.otherChargesAmount;

            final grandTotal = amount + otherCharges;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  returnDeductAmount: returnDeduct,
                  returnDeductType: consignmentReturn.returnDeductType,
                  totalReturnAmount: amount + otherCharges - returnDeduct,
                  otherChargesAmount: consignmentReturn.otherChargesAmount,
                  grandtotal: grandTotal,
                ));

            cReturn.value = consignmentReturn;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment Return Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasConReturnModuleAccess.contains(PERMISSION.update) && consignmentReturn.paymentStatus != PaymentStatus.paid && consignmentReturn.paymentStatus != PaymentStatus.partial) ...[
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const ConsignmentReturnFormRoute(isEdit: true).location, extra: cReturn.value);
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
                if (hasConReturnModuleAccess.contains(PERMISSION.delete))
                  CustomPopUpMenuItem(
                    title: "Delete",
                    textColor: errorColor,
                    ontap: () => CustomDialog.showDeleteWitReasonDialog(
                        provider: asyncConsignmentReturnFormNotifierProvider,
                        onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentReturnRoute().location),
                        onPressed: (v) {
                          ref.read(asyncConsignmentReturnFormNotifierProvider.notifier).deleteConsignmentReturn(consignmentReturn.id, v);
                        }),
                    icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                  )
              ],
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printConsignmentReturnV2(context, cReturn.value),
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
              value: consignmentReturnById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    ConsignmentReturnOverViewTab(consignmentReturn: data),
                    const ProductTab2(),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(consignmentReturnByIdProvider(consignmentReturn.id)),
            )),
          ],
        ),
      ),
    );
  }
}
