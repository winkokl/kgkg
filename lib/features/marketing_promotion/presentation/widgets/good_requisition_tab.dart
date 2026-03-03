import 'package:mgkaung_dms_mobile/core/enums/good_requisition_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';

class GoodRequisitionTab extends ConsumerWidget {
  const GoodRequisitionTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedGoodRequisitionNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final gr = data.items[index];
          return CustomCard(
            title: gr.marketingPromotionPlanName,
            subtitle: gr.marketingPromotionPlanCode,
            date: prettierDateFormat(gr.goodRequisitionDate),
            statusWidget: DecoratedContainer(
              height: 25,
              width: gr.status == GoodRequisitionStatus.paymentReceived ? 120 : 80,
              color: gr.status.fillColor,
              border: Border.all(color: gr.status.textColor),
              radius: 6,
              child: HeaderTextSmall(
                gr.status.name2,
                color: gr.status.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  GoodRequisitionDetailRoute(id: gr.id).location,
                ),
          );
        },
      ),
    );
  }
}
