import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_text_span.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/show_region_search_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegionCard extends ConsumerWidget {
  const RegionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regions = ref.watch(allFiltersProvider.select((value) => value.regions));
    return CommonNameCard(
      title: "Region Name",
      nameCardOntap: () async {
        final regs = await showRegionSearchForm(context, regions);
        if (regs != null) {
          ref.read(allFiltersProvider.notifier).updateRegions(regs);
        }
      },
      onClear: () => ref.read(allFiltersProvider.notifier).clearRegions(),
      currentValueWidget: Text.rich(
        CustomTextSpan(
          textString: 'Selected',
          textColor: black,
          textSpanChildren: [CustomTextSpan(textString: '(${regions.length})')],
        ),
      ),
    );
  }
}
