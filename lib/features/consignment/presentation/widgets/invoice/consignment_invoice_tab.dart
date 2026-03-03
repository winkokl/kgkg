import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';

import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentInvoiceTab extends ConsumerWidget {
  const ConsignmentInvoiceTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedConsignmentInvoiceNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final saleInvoice = data.items[index];
          return CustomCard(
            title: "${saleInvoice.code} ${saleInvoice.businessUnit.name.isNotEmpty ? "- ${saleInvoice.businessUnit.name}" : ""}",
            subtitle: saleInvoice.consignmentCode,
            statusWidget: DecoratedContainer(
              height: 25,
              width: 80,
              color: saleInvoice.paymentStatus.fillColor,
              border: Border.all(color: saleInvoice.paymentStatus.textColor),
              radius: 6,
              child: HeaderTextSmall(
                saleInvoice.paymentStatus.name,
                color: saleInvoice.paymentStatus.textColor,
              ),
            ),
            date: prettierDateFormat(saleInvoice.invoiceDate),
            ontap: () => ref.watch(goRouterProvider).push(
                  const ConsignmentInvoiceDetailRoute().location,
                  extra: saleInvoice,
                ),
          );
        },
      ),
    );
  }
}
