import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_form_notifier.dart';

class PromotionOverviewScreen extends ConsumerWidget {
  const PromotionOverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final salePromotion = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.salePromotion));
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: whiteContainerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoCard(title: "Promotion ID", value: salePromotion.promotionId),
                  InfoCard(title: "Promotion Name", value: salePromotion.promotionName),
                  InfoCard(
                    title: "Customer Channels",
                    value: salePromotion.customerChannel.map((e) => e.customerChannelName).join(",  "),
                    maxLines: salePromotion.customerChannel.length,
                  ),
                  InfoCard(title: "Start Date", value: prettierDateFormat(salePromotion.startDate)),
                  InfoCard(title: "End Date", value: prettierDateFormat(salePromotion.endDate)),
                  InfoCard(title: "Bonus Total", value: formatter.format(1000)),
                  InfoCard(title: "Cashback Total", value: formatter.format(1000)),
                  const InfoCard(title: "Item Back", value: 'info.itemName'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
