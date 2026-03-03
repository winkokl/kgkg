import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';

class ConsignmentTab extends ConsumerWidget {
  const ConsignmentTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedConsignmentNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final consignment = data.items[index];
          return CustomCard(
            title: "${consignment.customer.name} ${consignment.businessUnit.name.isNotEmpty ? "- ${consignment.businessUnit.name}" : ""}",
            subtitle: consignment.code,
            date: prettierDateFormat(consignment.date),
            amount: consignment.grandtotal,
            statusWidget: DecoratedContainer(
              height: 23,
              width: consignment.orderStatus == OrderStatus.accept || consignment.orderStatus == OrderStatus.alreadyInvoice ? 120 : 80,
              color: consignment.orderStatus.fillColor,
              border: Border.all(color: consignment.orderStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                consignment.orderStatus.name2,
                color: consignment.orderStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  const ConsignmentDetailRoute(isOrderApproval: false).location,
                  extra: consignment,
                ),
          );
        },
      ),
    );
  }
}
