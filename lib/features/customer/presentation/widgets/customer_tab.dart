import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/customer_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerTab extends ConsumerWidget {
  const CustomerTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonPagingView(
      provider: paginatedCustomerNotifierProvider,
      contentBuilder: (data, endItem) => ListView.builder(
        key: const PageStorageKey('pageBasedView'),
        itemCount: data.items.length + (endItem != null ? 1 : 0),
        itemBuilder: (context, index) {
          if (endItem != null && index == data.items.length) {
            return endItem;
          }
          return CustomerCard(
            title: data.items[index].name,
            description: data.items[index].customerCode,
            onTap: () => ref.watch(goRouterProvider).push(const CustomerDetailRoute().location, extra: data.items[index]),
          );
        },
      ),
    );
  }
}
