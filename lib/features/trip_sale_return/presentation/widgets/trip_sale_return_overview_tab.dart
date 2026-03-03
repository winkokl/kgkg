import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleReturnOverViewTab extends ConsumerWidget {
  const TripSaleReturnOverViewTab({super.key, required this.tripSaleReturn});
  final TripSaleReturn tripSaleReturn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInvoiceReturnType = tripSaleReturn.returnType == 1;

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
                  InfoCard(title: "Trip Sale Return ID", value: tripSaleReturn.code),
                  InfoCard(title: "Return Date", value: prettierDateFormat(tripSaleReturn.returnDate)),
                  InfoCard(
                    title: "Trip Sale ${isInvoiceReturnType ? 'Invoice ID' : 'Request ID'}",
                    value: isInvoiceReturnType ? tripSaleReturn.invoiceCode : tripSaleReturn.tripSaleRequest.tripSaleRequestCode,
                  ),
                  InfoCard(
                    title: "Retrurn Reason",
                    value: tripSaleReturn.returnReason.name,
                  ),
                  InfoCard(title: "Description", value: tripSaleReturn.description),
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
