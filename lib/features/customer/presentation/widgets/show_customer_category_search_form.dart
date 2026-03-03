import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:flutter/material.dart';

Future<void> showCustomerCategorySearchForm(
  BuildContext context,
  Function(CustomerCategory c) onSelect,
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
                      const HeaderText("Select Customer Category", color: brandColor),
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
                  child: SearchTextField(title: 'CusCategory'),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonPagingView(
                      provider: paginatedCustomerCategoryNotifierProvider,
                      contentBuilder: (data, endItem) => ListView.builder(
                        key: const PageStorageKey('pageBasedView'),
                        itemCount: data.items.length + (endItem != null ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (endItem != null && index == data.items.length) {
                            return endItem;
                          }
                          return InkWell(
                            onTap: () {
                              onSelect.call(data.items[index]);
                              Navigator.of(context).pop();
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: HeaderText(data.items[index].name),
                                    ),
                                  ],
                                ),
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
          ),
        ),
      ),
    ),
  );
}
