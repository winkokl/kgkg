import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/providers.dart';

class MarketingPromotionReturnTab extends ConsumerWidget {
  const MarketingPromotionReturnTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedMarketingPromotionReturnNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final mpreturn = data.items[index];
          return CustomCard(
            title: mpreturn.customerName,
            subtitle: mpreturn.code,
            date: prettierDateFormat(mpreturn.returnDate),
            amount: mpreturn.total,
            extraSubtitle: mpreturn.marketingPromotionPlan.planCode,
            statusWidget: DecoratedContainer(
              height: 23,
              width: 80,
              color: mpreturn.returnStatus.fillColor,
              border: Border.all(color: mpreturn.returnStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                mpreturn.returnStatus.name,
                color: mpreturn.returnStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  MarketingPromotionReturnDetailRoute(mpreturn.id).location,
                ),
          );
        },
      ),
    );
  }
}
