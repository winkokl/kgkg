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
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/async_secondary_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/presentation/widgets/secondary_sale_return_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleReturnDetailScreen extends HookConsumerWidget {
  const SecondarySaleReturnDetailScreen({super.key, required this.secondarySaleReturn});
  final SecondarySaleReturn secondarySaleReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final ssReturn = useState(secondarySaleReturn);

    final secondarySaleReturnById = ref.watch(secondarySaleReturnByIdProvider(secondarySaleReturn.id));

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.makePayment, MODULE.secondarySalesReturn);
    final hasSaleReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.salesReturn, MODULE.secondarySalesReturn);

    ref.listen(secondarySaleReturnByIdProvider(secondarySaleReturn.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (secondarySaleReturn) {
            ref.read(productListNotifierProvider.notifier).setProductList(secondarySaleReturn.products);

            final amount = secondarySaleReturn.subtotal;

            final returnDeduct = secondarySaleReturn.returnDeductType == AmountOrPercentStatus.amount ? secondarySaleReturn.returnDeductAmount : (secondarySaleReturn.returnDeductAmount / 100) * amount;

            final otherCharges = secondarySaleReturn.otherChargesAmount;

            final grandTotal = amount + otherCharges;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  returnDeductAmount: returnDeduct,
                  returnDeductType: secondarySaleReturn.returnDeductType,
                  totalReturnAmount: amount + otherCharges - returnDeduct,
                  otherChargesAmount: secondarySaleReturn.otherChargesAmount,
                  grandtotal: grandTotal,
                ));

            ssReturn.value = secondarySaleReturn;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Return Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && secondarySaleReturn.paymentStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const MakeSecondarySaleReturnPaymentRoute().location,
                        extra: SecondarySaleReturnReceipt(
                          balance: secondarySaleReturn.balance,
                          code: secondarySaleReturn.code,
                          customer: secondarySaleReturn.customer,
                          description: secondarySaleReturn.description,
                          grandtotal: secondarySaleReturn.grandtotal,
                          invoiceCode: secondarySaleReturn.invoiceCode,
                          otherChargesAmount: secondarySaleReturn.otherChargesAmount,
                          returnDeductAmount: secondarySaleReturn.returnDeductAmount,
                          returnDeductType: secondarySaleReturn.returnDeductType,
                          subtotal: secondarySaleReturn.subtotal,
                          products: ref.watch(productListNotifierProvider),
                          remark: secondarySaleReturn.remark,
                          secondarySaleReturnId: secondarySaleReturn.id,
                          totalReturnAmount: secondarySaleReturn.totalReturnAmount,
                          returnDate: secondarySaleReturn.returnDate,
                          secondarySaleInvoice: secondarySaleReturn.secondarySaleInvoice,
                        ));
                  },
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasSaleReturnModuleAccess.contains(PERMISSION.update) && secondarySaleReturn.paymentStatus != PaymentStatus.paid && secondarySaleReturn.paymentStatus != PaymentStatus.partial) ...[
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const SecondarySaleReturnFormRoute(isEdit: true).location, extra: ssReturn.value);
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
                if (hasSaleReturnModuleAccess.contains(PERMISSION.delete) && secondarySaleReturn.paymentStatus != PaymentStatus.paid && secondarySaleReturn.paymentStatus != PaymentStatus.partial)
                  CustomPopUpMenuItem(
                    title: "Delete",
                    textColor: errorColor,
                    ontap: () => CustomDialog.showDeleteWitReasonDialog(
                        provider: asyncSecondarySaleReturnFormNotifierProvider,
                        onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const SecondarySaleReturnRoute().location),
                        onPressed: (v) {
                          ref.read(asyncSecondarySaleReturnFormNotifierProvider.notifier).deleteSecondarySaleReturn(secondarySaleReturn.id, v);
                        }),
                    icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                  )
              ],
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printSecondarySaleReturnV2(context, ssReturn.value),
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
              value: secondarySaleReturnById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    SecondarySaleReturnOverViewTab(secondarySaleReturn: data),
                    const ProductTab2(),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(secondarySaleReturnByIdProvider(secondarySaleReturn.id)),
            )),
          ],
        ),
      ),
    );
  }
}
