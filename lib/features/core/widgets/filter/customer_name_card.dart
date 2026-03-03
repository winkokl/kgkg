import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_customer_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerNameCard extends ConsumerWidget {
  const CustomerNameCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(allFiltersProvider.select((value) => value.customer));
    return CommonNameCard(
      title: "Customer Name",
      nameCardOntap: () => showCustomerSearchForm(
        context,
        (c) => ref.read(allFiltersProvider.notifier).setCustomer(c),
      ),
      onClear: () => ref.read(allFiltersProvider.notifier).clearCustomer(),
      currentValueWidget: HeaderText(customer.id != -1 ? customer.name : '-'),
    );
  }
}
