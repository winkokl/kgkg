import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';

class MarketingPromotionReturnOverViewTab extends ConsumerWidget {
  const MarketingPromotionReturnOverViewTab({
    super.key,
    required this.mpreturn,
  });
  final MarketingPromotionReturn mpreturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            decoration: whiteContainerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  InfoCard(title: "Marketing Promotion Return ID", value: mpreturn.code),
                  InfoCard(title: "Marketing Promotion ID", value: mpreturn.marketingPromotionPlan.planCode),
                  InfoCard(title: "Return Date", value: prettierDateFormat(mpreturn.returnDate)),
                  InfoCard(title: "Customer Name", value: mpreturn.customerName),
                  InfoCard(title: "Business Unit", value: mpreturn.businessUnitName),
                  InfoCard(title: "Status", value: mpreturn.returnStatus.name, textColor: mpreturn.returnStatus.textColor),
                  InfoCard(title: "Description", value: mpreturn.description),
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
