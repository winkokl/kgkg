import 'package:mgkaung_dms_mobile/core/constants.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryNoteProductDetailScreen extends ConsumerWidget {
  const DeliveryNoteProductDetailScreen({
    super.key,
    required this.product,
  });
  final Product product;
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
                      InfoCard(title: "Product Code", value: "${product.prefix}${product.code}"),
                      InfoCard(title: "Product Name", value: product.name),
                      // InfoCard(title: "API Level", value: product.apiLevel),
                      InfoCard(title: "Allocation Account Name", value: product.warehouse.name),
                      InfoCard(title: "Unit", value: product.unit.name),
                      InfoCard(title: "Request Quantity", value: "${product.requestQty}"),
                      InfoCard(title: "Total Issued Quantity", value: "${product.totalIssuedQty}"),
                      InfoCard(title: "Issued Balance Quantity", value: "${product.issuedBalanceQty}"),
                      InfoCard(title: "Issued Quantity", value: "${product.issueQty}"),
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
