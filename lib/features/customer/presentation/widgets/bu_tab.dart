import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/customer_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';

class BuTab extends ConsumerWidget {
  const BuTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedBusinessUnitNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          return CustomerCard(
            title: data.items[index].name,
            description: data.items[index].code,
            onTap: () => ref.watch(goRouterProvider).push(const BusinessUnitDetailRoute().location, extra: data.items[index]),
          );
        },
      ),
    );
  }
}
