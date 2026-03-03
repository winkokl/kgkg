import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//trip sale request, // trip management // trip use assign
class TripSaleRequestTab extends ConsumerWidget {
  const TripSaleRequestTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedTripSaleRequestNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final tripSaleRequest = data.items[index];
          return CustomCard(
            title: tripSaleRequest.tripName,
            subtitle: tripSaleRequest.tripSaleRequestCode,
            date: prettierDateFormat(tripSaleRequest.date),
            statusWidget: DecoratedContainer(
              height: 25,
              width: 80,
              color: tripSaleRequest.status.fillColor,
              border: Border.all(color: tripSaleRequest.status.textColor),
              radius: 6,
              child: HeaderTextSmall(
                tripSaleRequest.status.name,
                color: tripSaleRequest.status.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  const TripSaleRequestDetailRoute().location,
                  extra: tripSaleRequest,
                ),
          );
        },
      ),
    );
  }
}
