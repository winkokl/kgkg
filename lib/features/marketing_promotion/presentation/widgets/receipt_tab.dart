import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/application/providers.dart';

class ReceiptTab extends ConsumerWidget {
  const ReceiptTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedReceiptNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final receipt = data.items[index];
          return CustomCard(
            title: receipt.code,
            subtitle: receipt.invoiceCode,
            date: prettierDateFormat(receipt.paymentReciveDate),
            amount: receipt.paymentReceiveAmount,
            ontap: () => ref.watch(goRouterProvider).push(ReceiptDetailRoute(id: receipt.id).location, extra: receipt),
          );
        },
      ),
    );
  }
}
