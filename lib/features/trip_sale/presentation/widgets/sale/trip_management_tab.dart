import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripManagementTab extends ConsumerWidget {
  const TripManagementTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedTripManagementNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final tripManagement = data.items[index];
          return ListTileCard(
            titleWidget: HeaderText(tripManagement.tripName),
            subtitleWidgets: [
              const SizedBox(height: 6),
              HeaderTextSmall(tripManagement.code),
            ],
            trailingWidget: const DecoratedContainer(
              height: 32,
              width: 32,
              color: Color(0xffF4F8FD),
              child: Icon(Icons.info, color: brandColor, size: 20),
            ),
            // ontap: () => ref.watch(goRouterProvider).push(const TripManagementDetailRoute().location, extra: tripManagement),
          );
        },
      ),
    );
  }
}
