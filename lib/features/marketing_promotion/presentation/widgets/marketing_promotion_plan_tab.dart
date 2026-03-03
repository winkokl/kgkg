import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';

class MarketingPromotionPlanTab extends ConsumerWidget {
  const MarketingPromotionPlanTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedMarketingPromotionPlanNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final mpp = data.items[index];
          return CustomCard(
            title: mpp.customerName,
            subtitle: mpp.planCode,
            date: prettierDateFormat(mpp.startDate),
            statusWidget: DecoratedContainer(
              height: 25,
              width: 80,
              color: mpp.status.fillColor,
              border: Border.all(color: mpp.status.textColor),
              radius: 6,
              child: HeaderTextSmall(
                mpp.status.name,
                color: mpp.status.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  MarketingPromotionPlanDetailRoute(id: mpp.id).location,
                ),
          );
        },
      ),
    );
  }
}
