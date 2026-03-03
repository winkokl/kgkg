import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectProductScreen extends HookConsumerWidget {
  const SelectProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productlist = ref.watch(productListNotifierProvider);
    final productlistNotifier = ref.read(productListNotifierProvider.notifier);

    final isSelectAll = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                isSelectAll.value = !isSelectAll.value;

                if (!isSelectAll.value) {
                  productlistNotifier.deselectAll();
                } else {
                  productlistNotifier.selectAll();
                }
              },
              child: Row(
                children: [
                  Icon(
                    isSelectAll.value ? Icons.check_box : Icons.square_outlined,
                    color: isSelectAll.value ? brandColor : null,
                  ),
                  const SizedBox(width: 20),
                  const HeaderTextSmall("Select All"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: productlist.length,
                  itemBuilder: (ctx, index) {
                    final product = productlist[index];

                    return InkWell(
                      onTap: () => productlistNotifier.select(product),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            product.isSelected ? Icons.check_box : Icons.square_outlined,
                            color: product.isSelected ? brandColor : null,
                          ),
                          const SizedBox(width: 20),
                          Expanded(child: ProductCard(product: product, isReturn: false)),
                        ],
                      ),
                    );
                  })),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: bgWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  ActionButton(
                    label: "Delete",
                    onPressed: () => productlistNotifier.removeSelectedProducts(),
                    foregroundColor: errorColor,
                    backgroundColor: const Color(0xffFFC8C8),
                  ),
                  const SizedBox(height: 20),
                  ActionButton(
                    label: "Cancel",
                    onPressed: () => context.pop(),
                    foregroundColor: const Color(0xff7A7A7A),
                    backgroundColor: const Color(0xffEBEBEB),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
