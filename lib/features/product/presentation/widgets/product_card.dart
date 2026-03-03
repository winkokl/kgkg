import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    this.ontap,
    required this.product,
    required this.isReturn,
    this.hasAction,
  });
  final VoidCallback? ontap;
  final Product product;
  final bool isReturn;
  final bool? hasAction;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            decoration: whiteContainerDecoration,
            margin: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderText(product.name),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: HeaderTextSmall(product.code, color: brandColor),
                            ),
                            const Text(" | ", style: TextStyle(fontSize: 16, color: Color(0xffE2E4E8))),
                            Flexible(
                              child: HeaderTextSmall(
                                  isReturn
                                      ? product.returnQty.toString()
                                      : product.isConsignmentContract
                                          ? product.consignmentContractQty.toString()
                                          : product.quantity.toString(),
                                  color: brandColor),
                            ),
                            const Flexible(child: HeaderTextSmall(" Qty", color: textGray)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  isReturn
                      ? ReturnForm(product: product, hasAction: hasAction)
                      : product.isViewOnly
                          ? const SizedBox.shrink()
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                HeaderText(formatter.format(product.isConsignmentContract ? product.consignmentContractAmount : product.totalAmount), color: brandColor),
                                const SizedBox(height: 10),
                                const HeaderTextSmall("MMK", color: secondaryTextColor),
                              ],
                            ),
                ],
              ),
            ),
          ),
        ),
        if (product.isPromotionItem) ...[
          Positioned(
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: const Text(
                'Promotion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class ReturnForm extends ConsumerWidget {
  const ReturnForm({
    super.key,
    required this.product,
    this.hasAction,
  });
  final Product product;
  final bool? hasAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          HeaderText(formatter.format(product.returnAmount), color: brandColor),
          const SizedBox(width: 10),
          const HeaderTextSmall("MMK", color: secondaryTextColor),
        ],
      ),
      // const SizedBox(height: 10),
      // QuantityButton(
      //   currentQuantity: product.returnQty,
      //   increaseCallback: (hasAction != null && hasAction! && product.availableReturnQty != 0) ? () => ref.read(productListNotifierProvider.notifier).increaseReturnQuantity(product) : () {},
      //   decreaseCallback: (hasAction != null && hasAction! && product.availableReturnQty != 0) ? () => ref.read(productListNotifierProvider.notifier).decreaseReturnQuantity(product) : () {},
      // )
    ]);
  }
}

class DNProductCard extends ConsumerWidget {
  const DNProductCard({
    super.key,
    this.ontap,
    required this.product,
  });
  final VoidCallback? ontap;
  final Product product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: whiteContainerDecoration,
        margin: const EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(product.name),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: HeaderTextSmall("${product.prefix}${product.code}", color: brandColor),
                        ),
                        const Text(" | ", style: TextStyle(fontSize: 16, color: Color(0xffE2E4E8))),
                        Flexible(child: HeaderTextSmall(product.issueQty.toString(), color: brandColor)),
                        Flexible(child: HeaderTextSmall(" ${product.unit.name}", color: textGray)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
