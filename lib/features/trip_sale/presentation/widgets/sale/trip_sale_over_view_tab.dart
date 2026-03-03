import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleOverViewTab extends ConsumerWidget {
  const TripSaleOverViewTab({super.key, required this.sale});
  final TripSale sale;
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
                  InfoCard(title: sale.tripSaleMethod == TripSaleMethod.saleRequest ? "Trip Sale Request ID" : "Trip Proposal ID", value: sale.tripSaleMethod == TripSaleMethod.saleRequest ? sale.tripSaleRequest.tripSaleRequestCode : sale.tripProposal.tripCode),
                  if (sale.tripSaleMethod == TripSaleMethod.extraSale) ...[
                    InfoCard(title: "Allocation Account Name", value: sale.warehouse == null ? "" : sale.warehouse!.name),
                  ],
                  InfoCard(title: "Customer Name", value: sale.customer.name),
                  InfoCard(title: "Business Unit", value: sale.businessUnit.name),
                  InfoCard(title: "Payment Type", value: sale.paymentType.name),
                  InfoCard(title: "Payment Term", value: sale.paymentTerm.name),
                  // if (sale.orderStatus != OrderStatus.all)
                  //   InfoCard(
                  //     title: "Status",
                  //     value: sale.orderStatus.name,
                  //     textColor: sale.orderStatus.textColor,
                  //   ),
                  // if (sale.orderStatus == OrderStatus.reject)
                  //   InfoCard(title: "Reason", value: sale.description),
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
