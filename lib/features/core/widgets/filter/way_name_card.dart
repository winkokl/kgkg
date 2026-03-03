import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_way_search_form.dart';

class WayNameCard extends ConsumerWidget {
  const WayNameCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final way = ref.watch(allFiltersProvider.select((value) => value.way));
    return CommonNameCard(
      title: 'Way Name',
      nameCardOntap: () => showWaySearchForm(
        context,
        (c) => ref.read(allFiltersProvider.notifier).setWay(c),
      ),
      onClear: () => ref.read(allFiltersProvider.notifier).clearWay(),
      currentValueWidget: HeaderText(way.id != -1 ? way.name : '-'),
    );
  }
}
