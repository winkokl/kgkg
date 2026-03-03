import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleTab extends ConsumerWidget {
  const TripSaleTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedTripSaleNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final tripSale = data.items[index];
          return CustomCard(
            title: "${tripSale.customer.name} ${tripSale.businessUnit.name.isNotEmpty ? "- ${tripSale.businessUnit.name}" : ""}",
            subtitle: tripSale.code,
            date: prettierDateFormat(tripSale.date),
            amount: tripSale.grandtotal,
            statusWidget: DecoratedContainer(
              height: 23,
              width: tripSale.orderStatus == OrderStatus.accept || tripSale.orderStatus == OrderStatus.alreadyInvoice ? 120 : 80,
              color: tripSale.orderStatus.fillColor,
              border: Border.all(color: tripSale.orderStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                tripSale.orderStatus.name2,
                color: tripSale.orderStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  const TripSaleDetailRoute().location,
                  extra: tripSale,
                ),
          );
        },
      ),
    );
  }
}
