import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentReturnOverViewTab extends ConsumerWidget {
  const ConsignmentReturnOverViewTab({super.key, required this.consignmentReturn});
  final ConsignmentReturn consignmentReturn;
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
                  InfoCard(title: "Consignment Return ID", value: consignmentReturn.code),
                  InfoCard(title: "Return Date", value: prettierDateFormat(consignmentReturn.returnDate)),
                  InfoCard(title: "Consignment Contract ID", value: consignmentReturn.consignmentContract.code),
                  InfoCard(title: "Return Reason", value: consignmentReturn.returnReason.name),
                  InfoCard(title: "Description", value: consignmentReturn.description),
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
