import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';

class SalePromotionOverViewTab extends StatelessWidget {
  const SalePromotionOverViewTab({
    super.key,
    required this.salePromotion,
  });

  final SalePromotion salePromotion;

  @override
  Widget build(BuildContext context) {
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
                  InfoCard(
                    title: "Regions",
                    value: salePromotion.region.map((e) => e.promotionRegionName).join(',  '),
                    maxLines: salePromotion.region.length,
                  ),
                  InfoCard(title: "Start Date", value: prettierDateFormat(salePromotion.startDate)),
                  InfoCard(title: "End Date", value: prettierDateFormat(salePromotion.endDate)),
                  // InfoCard(title: "Eligible Duration For Bonus (Day)", value: '${salePromotion.bonusDuration}'),
                  // InfoCard(title: "Eligible Duration For Cashback (Day)", value: '${salePromotion.cashBackDuration}'),
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
