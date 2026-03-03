import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderApprovalTab extends ConsumerWidget {
  const OrderApprovalTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedSecondarySaleOrderApprovalNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final secondarySale = data.items[index];
          return CustomCard(
            title: "${secondarySale.customer.name} ${secondarySale.businessUnit.name.isNotEmpty ? "- ${secondarySale.businessUnit.name}" : ""}",
            subtitle: secondarySale.code,
            date: prettierDateFormat(secondarySale.date),
            statusWidget: DecoratedContainer(
              height: 25,
              width: secondarySale.orderStatus == OrderStatus.accept || secondarySale.orderStatus == OrderStatus.alreadyInvoice ? 120 : 80,
              color: secondarySale.orderStatus.fillColor,
              border: Border.all(color: secondarySale.orderStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                secondarySale.orderStatus.name,
                color: secondarySale.orderStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  SecondarySaleDetailRoute(isOrderApproval: true).location,
                  extra: secondarySale,
                ),
          );
        },
      ),
    );
  }
}
