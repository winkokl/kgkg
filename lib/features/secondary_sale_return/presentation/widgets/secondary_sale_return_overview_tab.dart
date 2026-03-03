import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleReturnOverViewTab extends ConsumerWidget {
  const SecondarySaleReturnOverViewTab({super.key, required this.secondarySaleReturn});
  final SecondarySaleReturn secondarySaleReturn;
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
                  InfoCard(title: "Sale Return ID", value: secondarySaleReturn.code),
                  InfoCard(title: "Return Date", value: prettierDateFormat(secondarySaleReturn.returnDate)),
                  InfoCard(title: "Sale Invoice ID", value: secondarySaleReturn.invoiceCode),
                  InfoCard(title: "Reason", value: secondarySaleReturn.returnReason.name),
                  InfoCard(title: "Description", value: secondarySaleReturn.description),
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
