import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';

//trip sale request, // trip management // trip use assign
class ConsignmentContractTab extends ConsumerWidget {
  const ConsignmentContractTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedConsignmentContractNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final consignmentContract = data.items[index];
          return CustomCard(
            title: "${consignmentContract.customerName} ${consignmentContract.businessUnitName.isNotEmpty ? "- ${consignmentContract.businessUnitName}" : ""}",
            subtitle: consignmentContract.code,
            date: prettierDateFormat(consignmentContract.date),
            statusWidget: DecoratedContainer(
              height: 25,
              width: 80,
              color: consignmentContract.status.fillColor,
              border: Border.all(color: consignmentContract.status.textColor),
              radius: 6,
              child: HeaderTextSmall(
                consignmentContract.status.name,
                color: consignmentContract.status.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  const ConsignmentContractDetailRoute().location,
                  extra: consignmentContract,
                ),
          );
        },
      ),
    );
  }
}
