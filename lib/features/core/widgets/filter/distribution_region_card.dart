import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';

class DistributionRegionCard extends ConsumerWidget {
  const DistributionRegionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final region = ref.watch(allFiltersProvider.select((value) => value.distributionRegion));
    return CommonNameCard(
      title: "Distribution Region Name",
      nameCardOntap: () async {
        await CustomPicker.modalSheetPicker<Region>(
          context: context,
          onSelect: (v) {
            ref.read(allFiltersProvider.notifier).setDistributionRegion(v);
          },
          display: (v) => v.name,
          currentValue: region,
          futureProvider: distributionRegionsProvider,
          errorCallback: () => ref.invalidate(distributionRegionsProvider),
        );
      },
      onClear: () => ref.read(allFiltersProvider.notifier).clearDistributionRegion(),
      currentValueWidget: HeaderText(region.id != -1 ? region.name : '-'),
    );
  }
}
