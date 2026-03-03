import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketingPromotionPlanOverViewTab extends ConsumerWidget {
  const MarketingPromotionPlanOverViewTab({
    super.key,
    required this.marketingpromotionplan,
  });
  final MarketingPromotionPlan marketingpromotionplan;
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
                  InfoCard(title: "Promotion ID", value: marketingpromotionplan.planCode),
                  InfoCard(title: "Promotion name", value: marketingpromotionplan.name),
                  InfoCard(title: "Customer Name", value: marketingpromotionplan.customerName),
                  InfoCard(title: "Business Unit", value: marketingpromotionplan.businessUnitName),
                  InfoCard(title: "Start Date", value: prettierDateFormat(marketingpromotionplan.startDate)),
                  InfoCard(title: "End Date", value: prettierDateFormat(marketingpromotionplan.endDate)),
                  InfoCard(title: "Way", value: marketingpromotionplan.wayName),
                  InfoCard(title: "Status", value: marketingpromotionplan.status.name, textColor: marketingpromotionplan.status.textColor),
                  InfoCard(title: "Eligible Duration For Bonus (Day)", value: '${marketingpromotionplan.bonusDuration}'),
                  InfoCard(title: "Bonus Note", value: marketingpromotionplan.bonusReason),
                  InfoCard(title: "Eligible Duration For Cashback (Day)", value: '${marketingpromotionplan.cashbackDuration}'),
                  InfoCard(title: "Cashback Note", value: marketingpromotionplan.cashbackReason),
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
