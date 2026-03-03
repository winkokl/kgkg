import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentOverViewTab extends ConsumerWidget {
  const ConsignmentOverViewTab({
    super.key,
    required this.sale,
    required this.isOrderApproval,
  });
  final Consignment sale;
  final bool isOrderApproval;
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
                  InfoCard(title: "Consignment Order ID", value: sale.code),
                  InfoCard(title: "Consignment Date", value: prettierDateFormat(sale.date)),
                  InfoCard(title: "Customer Name", value: sale.customer.name),
                  InfoCard(title: "Business Unit", value: sale.businessUnit.name),
                  InfoCard(title: "Consignment Method", value: sale.consignmentMethod.name),
                  InfoCard(title: "Distribution Region", value: sale.region.name),
                  InfoCard(title: "Payment Type", value: sale.paymentType.name),
                  InfoCard(title: "Payment Term", value: sale.paymentTerm.name),
                  // InfoCard(title: "Warehouse", value: sale.warehouse.name),
                  if (sale.orderStatus != OrderStatus.all)
                    InfoCard(
                      title: "Status",
                      value: isOrderApproval ? sale.orderStatus.name : sale.orderStatus.name2,
                      textColor: sale.orderStatus.textColor,
                    ),
                  if (sale.orderStatus == OrderStatus.reject) InfoCard(title: "Reason", value: sale.rejectReason),
                  // InfoCard(title: "Remark", value: sale.remark),
                  InfoCard(title: "Description", value: sale.description),
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
