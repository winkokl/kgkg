import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/show_business_unit_search_form.dart';

class BusinessUnitNameCard extends ConsumerWidget {
  const BusinessUnitNameCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final businessunit = ref.watch(allFiltersProvider.select((value) => value.businessUnit));
    return CommonNameCard(
      title: "Business Unit Name",
      nameCardOntap: () => showBusinessUnitSearchForm(
        context,
        (c) => ref.read(allFiltersProvider.notifier).setBusinessUnit(c),
      ),
      onClear: () => ref.read(allFiltersProvider.notifier).clearBusinessUnit(),
      currentValueWidget: HeaderText(businessunit.id != -1 ? businessunit.name : '-'),
    );
  }
}
