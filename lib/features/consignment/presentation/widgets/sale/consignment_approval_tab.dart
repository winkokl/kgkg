import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentApprovalTab extends ConsumerWidget {
  const ConsignmentApprovalTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedConsignmentApprovalNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final consignmentApproval = data.items[index];
          return CustomCard(
            title: "${consignmentApproval.customer.name} ${consignmentApproval.businessUnit.name.isNotEmpty ? "- ${consignmentApproval.businessUnit.name}" : ""}",
            subtitle: consignmentApproval.code,
            date: prettierDateFormat(consignmentApproval.date),
            statusWidget: DecoratedContainer(
              height: 25,
              width: consignmentApproval.orderStatus == OrderStatus.accept || consignmentApproval.orderStatus == OrderStatus.alreadyInvoice ? 120 : 80,
              color: consignmentApproval.orderStatus.fillColor,
              border: Border.all(color: consignmentApproval.orderStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                consignmentApproval.orderStatus.name,
                color: consignmentApproval.orderStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  const ConsignmentDetailRoute(isOrderApproval: true).location,
                  extra: consignmentApproval,
                ),
          );
        },
      ),
    );
  }
}
