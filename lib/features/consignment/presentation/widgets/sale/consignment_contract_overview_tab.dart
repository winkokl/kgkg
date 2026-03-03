import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentContractOverViewTab extends ConsumerWidget {
  const ConsignmentContractOverViewTab({super.key, required this.contract});
  final ConsignmentContract contract;
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
                  InfoCard(title: "Consignment Contract ID", value: contract.code),
                  InfoCard(title: "Start Date", value: prettierDateFormat(contract.date)),
                  InfoCard(title: "Consignment Duration (Days)", value: "${contract.consignmentDuration}"),
                  InfoCard(title: "Customer Name", value: contract.customerName),
                  InfoCard(title: "Business Unit Name", value: contract.businessUnitName),
                  InfoCard(title: "Allocation Account Name", value: contract.warehouseName),
                  InfoCard(title: "Product Category", value: contract.productCategory.map((e) => e.name).join(", ")),
                  InfoCard(title: "Status", value: contract.status.name, textColor: contract.status.textColor),
                  InfoCard(title: "Description", value: contract.description),
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
