import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleRequestOverViewTab extends ConsumerWidget {
  const TripSaleRequestOverViewTab({super.key, required this.sale});
  final TripSaleRequest sale;
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
                  InfoCard(title: "Trip Sale ID", value: sale.tripSaleRequestCode),
                  InfoCard(title: "Request Date", value: prettierDateFormat(sale.date)),
                  InfoCard(title: "Trip Name", value: sale.tripName),
                  InfoCard(title: "Allocation Account Name", value: sale.warehouse.name),
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
