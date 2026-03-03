import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';

Future<void> showPromotionOverView(BuildContext context, SalePromotion salePromotion, List<Product> promotionItemList) async {
  showModalBottomSheet(
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
        initialChildSize: 0.95,
        minChildSize: 0.95,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const HeaderTextLarge("Promotion OverView"),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: SalePromotionOverViewWidget(salePromotion: salePromotion, promotionItemList: promotionItemList),
                )
              ],
            ),
          ),
        )),
      ),
    ),
  );
}

class SalePromotionOverViewWidget extends ConsumerWidget {
  const SalePromotionOverViewWidget({super.key, required this.salePromotion, required this.promotionItemList});
  final SalePromotion salePromotion;
  final List<Product> promotionItemList;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bonusTotal = promotionItemList.isNotEmpty
        ? promotionItemList.map((element) {
            final bonus = element.promotionInfo.bonus;
            final bonusType = element.promotionInfo.bonusType;
            final finalBonus = bonusType == AmountOrPercentStatus.amount ? bonus : (bonus / 100) * element.amount;
            return finalBonus;
          }).reduce((value, element) => value + element)
        : 0;

    final cashBackTotal = promotionItemList.isNotEmpty
        ? promotionItemList.map((element) {
            final cashBack = element.promotionInfo.cashback;
            final cashBackType = element.promotionInfo.cashbackType;
            final finalCashBack = cashBackType == AmountOrPercentStatus.amount ? cashBack : (cashBack / 100) * element.amount;
            return finalCashBack;
          }).reduce((value, element) => value + element)
        : 0;

    // final itemBackTotal = promotionItemList.isNotEmpty ? promotionItemList.map((e) {

    //   return '${e.promotionInfo.itemName} (${e.promotionInfo.itemQty} ${e.promotionInfo.itemUnitName})';
    // }).join(", ") : "";

// Updated logic for calculating itemBackTotal
    final Map<int, Map<int, List<Info>>> groupedItems = {};

    for (var element in promotionItemList) {
      final itemId = element.promotionInfo.item;
      final itemUnitId = element.promotionInfo.itemUnit;

      groupedItems.putIfAbsent(itemId, () => {});
      groupedItems[itemId]!.putIfAbsent(itemUnitId, () => []);
      groupedItems[itemId]![itemUnitId]!.add(element.promotionInfo);
    }
    // print(groupedItems);

    final itemBackTotal = groupedItems.entries.map((entry) {
      print("Entry: $entry");
      // final itemId = entry.key;
      final unitGroups = entry.value;

      if (unitGroups.length == 1) {
        // Case 1: Same `itemId` and `itemUnitId`
        final infoList = unitGroups.values.first;
        final firstInfo = infoList.first;
        final totalQty = infoList.fold(0, (sum, info) => sum + info.itemQty);
        return '${firstInfo.itemName} ($totalQty ${firstInfo.itemUnitName})';
      } else {
        // Case 2: Same `itemId` but different `itemUnitId`
        final firstInfo = unitGroups.values.first.first;
        final unitDetails = unitGroups.entries.map((unitEntry) {
          final unitInfoList = unitEntry.value;
          final totalQty = unitInfoList.fold(0, (sum, info) => sum + info.itemQty);
          final unitName = unitInfoList.first.itemUnitName;
          return '$totalQty $unitName';
        }).join(", ");
        return '${firstInfo.itemName} ($unitDetails)';
      }
    }).join(", ");

    print("Item Back Total: $itemBackTotal");

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 20),
          InfoCard(title: "Start Date", value: prettierDateFormat(salePromotion.startDate)),
          InfoCard(title: "End Date", value: prettierDateFormat(salePromotion.endDate)),
          InfoCard(
            title: "Customer Channels",
            value: salePromotion.customerChannel.isEmpty ? "" : salePromotion.customerChannel.map((e) => e.customerChannelName).join(",  "),
            maxLines: salePromotion.customerChannel.isEmpty ? 1 : salePromotion.customerChannel.length,
          ),
          InfoCard(title: "Bonus Total", value: "${formatter.format(bonusTotal)} MMK"),
          InfoCard(title: "Cashback Total", value: "${formatter.format(cashBackTotal)} MMK"),
          InfoCard(title: "Item Back Total", value: itemBackTotal),
        ],
      ),
    );
  }
}
