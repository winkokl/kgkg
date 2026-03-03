import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/side_effect.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> showMppSearchForm(BuildContext context, Function(MarketingPromotionPlan mpp) onSelect) async {
  await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: bgColor,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (context) => GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: DraggableScrollableSheet(
              initialChildSize: 0.75,
              minChildSize: 0.75,
              maxChildSize: 0.95,
              expand: false,
              builder: (context, scrollController) => SafeArea(
                child: HookConsumer(
                  builder: (context, ref, child) {
                    final (clear: _, mutate: _, snapshot: _) = useSideEffect<void>();

                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                const Spacer(),
                                const HeaderText("Select Marketing Promotion", color: brandColor),
                                const Spacer(),
                                InkWell(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: const Icon(Icons.close),
                                ),
                              ],
                            ),
                          ),
                          const Divider(thickness: 0.6),
                          const SizedBox(height: 16),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: SearchTextField(
                              title: 'cinv',
                              filterControl: FilterControl(
                                hasDate: true,
                                hasPaymentStatus: true,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: CommonPagingView(
                                provider: paginatedMarketingPromotionPlanNotifierProvider,
                                contentBuilder: (data, endItem) => ListView.builder(
                                  key: const PageStorageKey('pageBasedView'),
                                  itemCount: data.items.length + (endItem != null ? 1 : 0),
                                  itemBuilder: (context, index) {
                                    if (endItem != null && index == data.items.length) {
                                      return endItem;
                                    }
                                    return InkWell(
                                      onTap: () async {
                                        onSelect.call(data.items[index]);
                                        Navigator.of(context).pop();

                                        // final future = ref.watch(consignmentRepositoryProvider).getConsignmentContractById(data.items[index].id);

                                        // mutate(future);
                                        // try {
                                        //   LoadingOverlay.show();
                                        //   final consignmentContract = await future;
                                        //   LoadingOverlay.hide();
                                        //   final products = consignmentContract.products.map((e) => e.copyWith(availableReturnQty: e.consignmentContractQty - e.terminateSaleQty)).toList();
                                        //   ref.read(productListNotifierProvider.notifier).setProductList(products);

                                        //   // final amount = consignmentContract.subtotal;

                                        //   // final discount = consignmentContract.discountType == AmountOrPercentStatus.amount ? consignmentContract.discountAmount : (consignmentContract.discountAmount / 100) * amount;

                                        //   // final tax = consignmentContract.taxType == AmountOrPercentStatus.amount ? consignmentContract.taxAmount : (consignmentContract.taxAmount / 100) * amount;

                                        //   // ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                        //   //       taxType: consignmentContract.taxType,
                                        //   //       taxAmount: tax,
                                        //   //       discountType: consignmentContract.discountType,
                                        //   //       discountAmount: discount,
                                        //   //       otherChargesAmount: consignmentContract.otherChargesAmount,
                                        //   //       grandtotal: consignmentContract.grandtotal,
                                        //   //     ));
                                        //   onSelect.call(consignmentContract);
                                        //   Navigator.of(context).pop();
                                        // } catch (exception) {
                                        //   LoadingOverlay.hide();
                                        //   if (!context.mounted) return;
                                        //   CustomDialog.showFailureDialog(
                                        //     title: "Failed",
                                        //     msg: "Error while fetching data.",
                                        //     onPressed: () => context.pop(),
                                        //   );
                                        // }
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          HeaderText(data.items[index].planCode),
                                          const SizedBox(height: 16),
                                          const Divider(height: 0),
                                          const SizedBox(height: 16),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ));
}
