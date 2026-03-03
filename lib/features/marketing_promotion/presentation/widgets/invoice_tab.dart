import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';

class InvoiceTab extends ConsumerWidget {
  const InvoiceTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedInvoiceNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final inv = data.items[index];
          return CustomCard(
            title: inv.code,
            subtitle: inv.planCode,
            date: prettierDateFormat(inv.invoiceDate),
            statusWidget: DecoratedContainer(
              height: 25,
              width: 80,
              color: inv.paymentStatus.fillColor,
              border: Border.all(color: inv.paymentStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                inv.paymentStatus.name,
                color: inv.paymentStatus.textColor,
              ),
            ),
            ontap: () => ref.watch(goRouterProvider).push(
                  InvoiceDetailRoute(id: inv.id).location,
                ),
          );
        },
      ),
    );
  }
}
