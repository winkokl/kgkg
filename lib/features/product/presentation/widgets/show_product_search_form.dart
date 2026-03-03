import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/product/application/async_scanned_product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:flutter/material.dart';

Future<void> showProductSearchForm(
  BuildContext context,
  String? warehouseId,
  Function(Product c) onSelect,
) async {
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
          child: Padding(
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
                      const HeaderText("Select Products", color: brandColor),
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
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Consumer(builder: (context, ref, child) {
                    return AsyncValueWidget(
                      value: ref.watch(getAllProductsProvider(warehouseId ?? '')),
                      data: (d) {
                        final query = ref.watch(productSearchQueryNotifierProvider).toLowerCase();
                        final fetchedData = (query.isEmpty) ? d : d.where((element) => element.code.toLowerCase().contains(query)).toList();
                        print("Fetched product length: ${fetchedData.length}");
                        print("Fetched product: $fetchedData");
                        final data = fetchedData;
                        //filter data with quantity greater than 0
                        // final data = fetchedData.where((element) => element.availableQty > 0).toList();
                        // print("Filtered product length: ${data.length}");
                        // print("Filtered product: $data");
                        return Column(
                          children: [
                            FormTextInput(
                              prefixicon: const Icon(Icons.search),
                              hintText: "Search",
                              borderColor: bgWhite,
                              focusBorderColor: bgWhite,
                              onEditingComplete: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              onChanged: (text) => ref.read(productSearchQueryNotifierProvider.notifier).setQuery(text),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (c, index) {
                                    return InkWell(
                                        onTap: () {
                                          onSelect.call(data[index]);
                                          Navigator.of(context).pop();
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeaderText(data[index].name),
                                            const SizedBox(height: 10),
                                            HeaderTextSmall("${data[index].prefix}${data[index].code}"),
                                            const SizedBox(height: 16),
                                            const Divider(height: 0),
                                            const SizedBox(height: 16),
                                          ],
                                        ));
                                  }),
                            ),
                          ],
                        );
                      },
                      errorCallback: () => ref.invalidate(getAllProductsProvider),
                    );
                  }),
                )),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
