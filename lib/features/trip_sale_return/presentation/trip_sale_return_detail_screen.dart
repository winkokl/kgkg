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
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/async_trip_sale_return_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/presentation/widgets/trip_sale_return_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleReturnDetailScreen extends HookConsumerWidget {
  const TripSaleReturnDetailScreen({super.key, required this.tripSaleReturn});
  final TripSaleReturn tripSaleReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final tripReturn = useState(tripSaleReturn);

    final tripSaleReturnById = ref.watch(tripSaleReturnByIdProvider(tripSaleReturn.id));

    final hasPaymentModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.makePayment, MODULE.tripReturn);
    final hasSaleReturnModulesAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.tripSaleReturn, MODULE.tripReturn);

    ref.listen(tripSaleReturnByIdProvider(tripSaleReturn.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (tripSaleReturn) {
            ref.read(productListNotifierProvider.notifier).setProductList(tripSaleReturn.products);

            final amount = tripSaleReturn.subtotal;

            final returnDeduct = tripSaleReturn.returnDeductType == AmountOrPercentStatus.amount ? tripSaleReturn.returnDeductAmount : (tripSaleReturn.returnDeductAmount / 100) * amount;

            final otherCharges = tripSaleReturn.otherChargesAmount;

            final grandTotal = amount + otherCharges;

            ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                  returnDeductAmount: returnDeduct,
                  returnDeductType: tripSaleReturn.returnDeductType,
                  totalReturnAmount: amount + otherCharges - returnDeduct,
                  otherChargesAmount: tripSaleReturn.otherChargesAmount,
                  grandtotal: grandTotal,
                ));

            tripReturn.value = tripSaleReturn;
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Sale Return Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              if (hasPaymentModuleAccess.contains(PERMISSION.create) && tripSaleReturn.paymentStatus != PaymentStatus.paid)
                CustomPopUpMenuItem(
                  title: "Make Payment",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const MakeTripSaleReturnPaymentRoute().location,
                        extra: TripSaleReturnReceipt(
                          balance: tripSaleReturn.balance,
                          code: tripSaleReturn.code,
                          customer: tripSaleReturn.customer,
                          description: tripSaleReturn.description,
                          grandtotal: tripSaleReturn.grandtotal,
                          invoiceCode: tripSaleReturn.invoiceCode,
                          otherChargesAmount: tripSaleReturn.otherChargesAmount,
                          returnDeductAmount: tripSaleReturn.returnDeductAmount,
                          returnDeductType: tripSaleReturn.returnDeductType,
                          subtotal: tripSaleReturn.subtotal,
                          products: ref.watch(productListNotifierProvider),
                          remark: tripSaleReturn.remark,
                          tripSaleReturnId: tripSaleReturn.id,
                          totalReturnAmount: tripSaleReturn.totalReturnAmount,
                          returnDate: tripSaleReturn.returnDate,
                          tripSaleInvoice: tripSaleReturn.tripSaleInvoice,
                        ));
                  },
                  icon: const Icon(Icons.receipt_long_outlined, size: 20),
                ),
              if (hasSaleReturnModulesAccess.contains(PERMISSION.update) && tripSaleReturn.paymentStatus != PaymentStatus.paid && tripSaleReturn.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Edit",
                  ontap: () {
                    ref.watch(goRouterProvider).push(const TripSaleReturnFormRoute(isEdit: true).location, extra: tripReturn.value);
                  },
                  icon: const Icon(Icons.edit_outlined, size: 20),
                ),
              if (hasSaleReturnModulesAccess.contains(PERMISSION.delete) && tripSaleReturn.paymentStatus != PaymentStatus.paid && tripSaleReturn.paymentStatus != PaymentStatus.partial)
                CustomPopUpMenuItem(
                  title: "Delete",
                  textColor: errorColor,
                  ontap: () => CustomDialog.showDeleteWitReasonDialog(
                      provider: asyncTripSaleReturnFormNotifierProvider,
                      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleReturnRoute().location),
                      onPressed: (v) {
                        ref.read(asyncTripSaleReturnFormNotifierProvider.notifier).deleteTripSaleReturn(tripSaleReturn.id, v);
                      }),
                  icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                ),
              CustomPopUpMenuItem(
                title: "Print",
                textColor: brandColor,
                isLast: true,
                ontap: () async => await printTripSaleReturnV2(context, tripReturn.value),
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
              value: tripSaleReturnById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    TripSaleReturnOverViewTab(tripSaleReturn: data),
                    const ProductTab2(),
                  ],
                );
              },
              errorCallback: () => ref.invalidate(tripSaleReturnByIdProvider(tripSaleReturn.id)),
            )),
          ],
        ),
      ),
    );
  }
}
