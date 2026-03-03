import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/product/application/async_scanned_product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/presentation/widgets/product_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'total_product_card.dart';

class AddNewProductWidget extends HookConsumerWidget {
  const AddNewProductWidget({
    super.key,
    required this.hasAction,
    required this.isReturn,
  });
  final bool hasAction;
  final bool isReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(productNotifierProvider.notifier);
    final newProductNotifier = ref.read(newProductNotifierProvider.notifier);

    ref.listen(asyncScannedProductNotifierProvider, (previous, state) {
      state.unwrapPrevious().maybeWhen(
            orElse: () {},
            loading: () => LoadingOverlay.show(),
            data: (data) {
              LoadingOverlay.hide();
              final product = data.fold(() => null, (t) => t);
              if (product == null) {
                CustomDialog.showFailureDialog(
                  title: "Error",
                  msg: "No Product.",
                  onPressed: () => context.pop(),
                );
                return;
              }
              productNotifier.setProduct(product);
              newProductNotifier.setProduct(product);
            },
            error: (e, stack) {
              LoadingOverlay.hide();
              CustomDialog.showFailureDialog(
                title: "Error",
                msg: "Cannot retreive product data.",
                onPressed: () => context.pop(),
              );
            },
          );
    });

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(userAssignWarehousesProvider);
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TotalProductCard(
              ontap: () => ref.watch(goRouterProvider).push(ProductListRoute(
                    hasAction: hasAction,
                    isReturn: isReturn,
                  ).location),
            ),
            const ProductForm()
          ],
        ),
      ),
    );
  }
}
