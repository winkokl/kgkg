import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/application/providers.dart';

class ReturnReceiptTab extends ConsumerWidget {
  const ReturnReceiptTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedReturnReceiptNotifierProvider,
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
            subtitle: '',
            date: prettierDateFormat(receipt.paymentDate),
            amount: receipt.paidAmount,
            ontap: () => ref.watch(goRouterProvider).push(const MarketingPromotionReturnPaymentDetailRoute().location, extra: receipt),
          );
        },
      ),
    );
  }
}
