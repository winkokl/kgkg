import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> showConsignmentContractCustomerSearchForm(BuildContext context, Function(Customer c, BusinessUnit business) onSelect) async {
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
                                const HeaderText("Select Customer", color: brandColor),
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
                            child: SearchTextField(title: 'contractCus'),
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: CommonPagingView(
                                provider: paginatedConsignmentContractCustomerNotifierProvider,
                                contentBuilder: (data, endItem) => ListView.builder(
                                  key: const PageStorageKey('pageBasedView'),
                                  itemCount: data.items.length + (endItem != null ? 1 : 0),
                                  itemBuilder: (context, index) {
                                    if (endItem != null && index == data.items.length) {
                                      return endItem;
                                    }
                                    return InkWell(
                                      onTap: () async {
                                        final customer = data.items[index];
                                        onSelect.call(customer, const BusinessUnit());
                                        Navigator.of(context).pop();
                                        // final future = ref.watch(consignmentRepositoryProvider).getConsignmentContractById(
                                        //       customer.consignmentContractId,
                                        //     );

                                        // mutate(future);
                                        // try {
                                        //   LoadingOverlay.show();
                                        //   final consignmentContract = await future;

                                        //   LoadingOverlay.hide();

                                        // onSelect.call(
                                        //   customer,
                                        //   BusinessUnit(id: consignmentContract.businessUnitId, name: consignmentContract.businessUnitName),
                                        // );
                                        // Navigator.of(context).pop();
                                        // }
                                        // catch (exception) {
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
                                          HeaderText(data.items[index].name),
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
