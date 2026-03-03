import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/side_effect.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/total_charges_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/repos/secondary_sale_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> showSecondarySaleInvoiceSearchForm(BuildContext context, Function(SecondarySaleInvoice saleInvoice) onSelect) async {
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
                    final (clear: _, :mutate, snapshot: _) = useSideEffect<void>();

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
                                const HeaderText("Select Invoice", color: brandColor),
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
                              title: 'ssinv',
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
                                provider: paginatedSecondarySaleInvoiceNotifierProvider,
                                contentBuilder: (data, endItem) => ListView.builder(
                                  key: const PageStorageKey('pageBasedView'),
                                  itemCount: data.items.length + (endItem != null ? 1 : 0),
                                  itemBuilder: (context, index) {
                                    if (endItem != null && index == data.items.length) {
                                      return endItem;
                                    }
                                    return InkWell(
                                      onTap: () async {
                                        final future = ref.watch(secondarySaleRepositoryProvider).getSecondarySaleInvoiceById(data.items[index].id);

                                        mutate(future);
                                        try {
                                          LoadingOverlay.show();
                                          final secondarySaleInvoice = await future;
                                          LoadingOverlay.hide();
                                          ref.read(productListNotifierProvider.notifier).setProductList(secondarySaleInvoice.products.map((e) => e.copyWith(isPromotionItem: false, promotionDetail: PromotionDetail.defaultValue())).toList());

                                          final amount = secondarySaleInvoice.subtotal;

                                          final discount = secondarySaleInvoice.discountType == AmountOrPercentStatus.amount ? secondarySaleInvoice.discountAmount : (secondarySaleInvoice.discountAmount / 100) * amount;

                                          final tax = secondarySaleInvoice.taxType == AmountOrPercentStatus.amount ? secondarySaleInvoice.taxAmount : (secondarySaleInvoice.taxAmount / 100) * amount;

                                          ref.read(totalChargesFormNotifierProvider.notifier).setTotalCharges(TotalCharges(
                                                taxType: secondarySaleInvoice.taxType,
                                                taxAmount: tax,
                                                discountType: secondarySaleInvoice.discountType,
                                                discountAmount: discount,
                                                otherChargesAmount: secondarySaleInvoice.otherChargesAmount,
                                                grandtotal: secondarySaleInvoice.grandtotal,
                                              ));
                                          onSelect.call(secondarySaleInvoice);
                                          Navigator.of(context).pop();
                                        } catch (exception) {
                                          LoadingOverlay.hide();
                                          if (!context.mounted) return;
                                          CustomDialog.showFailureDialog(
                                            title: "Failed",
                                            msg: "Error while fetching data.",
                                            onPressed: () => context.pop(),
                                          );
                                        }
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          HeaderText(data.items[index].code),
                                          if (index != 14 - 1) ...[
                                            const SizedBox(height: 16),
                                            const Divider(height: 0),
                                          ],
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
