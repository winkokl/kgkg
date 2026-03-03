import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodRequisitionOverViewTab extends ConsumerWidget {
  const GoodRequisitionOverViewTab({
    super.key,
    required this.goodrequisition,
  });
  final GoodRequisition goodrequisition;
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
                  InfoCard(title: "Promotion Name", value: goodrequisition.marketingPromotionPlanName),
                  InfoCard(title: "Promotion Code", value: goodrequisition.marketingPromotionPlanCode),
                  InfoCard(title: "Request Date", value: prettierDateFormat(goodrequisition.goodRequisitionDate)),
                  InfoCard(title: "Customer Name", value: goodrequisition.customerName),
                  InfoCard(title: "Business Unit", value: goodrequisition.businessUnit),
                  InfoCard(title: "Start Date", value: prettierDateFormat(goodrequisition.startDate)),
                  InfoCard(title: "End Date", value: prettierDateFormat(goodrequisition.endDate)),
                  InfoCard(title: "Status", value: goodrequisition.status.name2, textColor: goodrequisition.status.textColor),
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
