import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PromotionProductDetailScreen extends ConsumerWidget {
  const PromotionProductDetailScreen({
    super.key,
    required this.product,
  });
  final PromotionProduct product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: whiteContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      if (product.warehouseName.isNotEmpty) InfoCard(title: "Allocation Account Name", value: product.warehouseName),
                      InfoCard(title: "Product Name", value: product.productName),
                      InfoCard(title: "Plan Qty", value: "${product.requestedQty} ${product.unitName}"),
                      InfoCard(title: "Toal Request Qty", value: "${product.baseQty} ${product.unitName}"),
                      InfoCard(title: "Sale Price", value: formatter.format(product.productPrice)),
                      InfoCard(title: "Normal Discount", value: '${formatter.format(product.normalDiscount)} ${product.discountType.name}'),
                      InfoCard(title: "Amount", value: formatter.format(product.amount)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
