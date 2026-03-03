import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MakePaymentTab extends ConsumerWidget {
  const MakePaymentTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedSecondarySaleReturnReceiptNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          final secondarySaleReturnReceipt = data.items[index];
          return ListTileCard(
            ontap: () => ref.watch(goRouterProvider).push(const SecondarySaleReturnPaymentDetailRoute().location, extra: secondarySaleReturnReceipt),
            titleWidget: HeaderText(secondarySaleReturnReceipt.code),
            subtitleWidgets: [
              const SizedBox(height: 6),
              HeaderTextSmall(prettierDateFormat(secondarySaleReturnReceipt.paymentDate), color: brandColor),
            ],
            trailingWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [HeaderText(formatter.format(secondarySaleReturnReceipt.paidAmount)), const HeaderTextSmall("MMK", color: secondaryTextColor)],
            ),
          );
        },
      ),
    );
  }
}
