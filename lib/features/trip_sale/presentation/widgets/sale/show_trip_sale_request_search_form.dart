import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/side_effect.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/helpers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/repos/trip_sale_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> showTripSaleRequestSearchForm(BuildContext context, Function(TripSaleRequest tripSaleRequest) onSelect) async {
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

              // Initialize filter provider to ensure it's not null
              ref.watch(filterApplyProvider('treq'));

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
                          const HeaderText("Select Trip Sale", color: brandColor),
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
                      child: SearchTextField(),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CommonPagingView(
                          provider: paginatedTripSaleRequestNotifierProvider,
                          contentBuilder: (data, endItem) => ListView.builder(
                            key: const PageStorageKey('pageBasedView'),
                            itemCount: data.items.length + (endItem != null ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (endItem != null && index == data.items.length) {
                                return endItem;
                              }
                              return InkWell(
                                onTap: () async {
                                  final future = ref.watch(tripSaleRepositoryProvider).getTripSaleRequestById(data.items[index].id);

                                  mutate(future);
                                  try {
                                    LoadingOverlay.show();

                                    final tripSaleRequest = await future;

                                    final products = getModifiedProducts(tripSaleRequest, true);
                                    ref.read(productListNotifierProvider.notifier).setProductList(products);

                                    LoadingOverlay.hide();

                                    onSelect.call(tripSaleRequest);
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
                                    HeaderText(data.items[index].tripSaleRequestCode),
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
    ),
  );
}
