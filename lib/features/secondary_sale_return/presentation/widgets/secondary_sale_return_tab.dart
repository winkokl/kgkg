import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SaleReturnTab extends ConsumerWidget {
  const SaleReturnTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedSecondarySaleReturnNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final secondarySaleReturn = data.items[index];
          final status = secondarySaleReturn.paymentStatus;
          return CustomCard(
            title: secondarySaleReturn.customer.name,
            subtitle: secondarySaleReturn.code,
            extraSubtitle: secondarySaleReturn.invoiceCode,
            statusWidget: DecoratedContainer(
              height: 23,
              width: 80,
              color: status.fillColor,
              border: Border.all(color: status.textColor),
              radius: 6,
              child: HeaderTextSmall(
                status.name,
                color: status.textColor,
              ),
            ),
            date: prettierDateFormat(secondarySaleReturn.returnDate),
            amount: secondarySaleReturn.totalReturnAmount,
            ontap: () => ref.watch(goRouterProvider).push(const SecondarySaleReturnDetailRoute().location, extra: secondarySaleReturn),
          );
        },
      ),
    );
  }
}
