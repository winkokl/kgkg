import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleOverViewTab extends ConsumerWidget {
  const SecondarySaleOverViewTab({
    super.key,
    required this.sale,
    required this.isOrderApproval,
  });
  final SecondarySale sale;
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
                  InfoCard(title: "Sale Order ID", value: sale.code),
                  InfoCard(title: "Sale Date", value: prettierDateFormat(sale.date)),
                  InfoCard(title: "Delivery Date", value: prettierDateFormat(sale.deliveryDate)),
                  InfoCard(title: "Sale Type", value: sale.saleType.name),
                  InfoCard(title: "Customer Name", value: sale.customer.name),
                  InfoCard(title: "Business Unit", value: sale.businessUnit.name),
                  InfoCard(title: "Payment Type", value: sale.paymentType.name),
                  InfoCard(title: "Payment Term", value: sale.paymentTerm.name),
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
