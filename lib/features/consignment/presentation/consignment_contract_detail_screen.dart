import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_contract_overview_tab.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/total_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentContractDetailScreen extends HookConsumerWidget {
  const ConsignmentContractDetailScreen({
    super.key,
    required this.consignmentContract,
  });
  final ConsignmentContract consignmentContract;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final consignmentContractById = ref.watch(consignmentContractByIdProvider(consignmentContract.id));

    ref.listen(consignmentContractByIdProvider(consignmentContract.id), (previous, state) {
      state.maybeWhen(
          orElse: () {},
          data: (consignmentContract) {
            List<Product> tmpPrductList = [];
            for (final p in consignmentContract.products) {
              // final amount = p.secondarySalePrice * p.consignmentContractQty;

              // final tax = p.secondarySaleTaxType == AmountOrPercentStatus.amount ? p.secondarySaleTax : (p.secondarySaleTax / 100) * amount;

              final product = p.copyWith(
                salePrice: p.salePrice,
                isConsignmentContract: true,
                // amount: amount,
                // totalAmount: amount + tax,
                // taxAmount: p.secondarySaleTax,
                // taxType: p.secondarySaleTaxType,
              );
              tmpPrductList.add(product);
            }

            ref.read(productListNotifierProvider.notifier).setProductList(tmpPrductList);
          });
    });

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: const ["Overview", "Products"]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment Contract Details"),
        // actions: [
        //   CustomPopUpMenuButton(
        //     popupMenuEntries: [
        //       CustomPopUpMenuItem(
        //         title: "Delete",
        //         textColor: errorColor,
        //         ontap: () => CustomDialog.showDeleteWitReasonDialog(
        //             onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location),
        //             provider: asyncConsignmentFormNotifierProvider,
        //             onPressed: (v) {
        //               ref.read(asyncConsignmentFormNotifierProvider.notifier).deleteConsignmentContract(consignmentContract.id, v);
        //             }),
        //         isLast: true,
        //         icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
        //       ),
        //       // CustomPopUpMenuItem(
        //       //   title: "Print",
        //       //   textColor: brandColor,
        //       //   ontap: () async {
        //       //     // await PrintService.executeSaleOrder();
        //       //   },
        //       //   icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
        //       // ),
        //     ],
        //   ),
        // ],
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
              value: consignmentContractById,
              data: (data) {
                return TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    ConsignmentContractOverViewTab(contract: data),
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
              errorCallback: () => ref.invalidate(consignmentContractByIdProvider(consignmentContract.id)),
            )),
          ],
        ),
      ),
    );
  }
}
