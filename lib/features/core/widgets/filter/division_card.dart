import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DivisionCard extends ConsumerWidget {
  const DivisionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityId = ref.watch(allFiltersProvider.select((value) => value.cityId));

    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("States"),
        AsyncValueWidget(
          value: ref.watch(divisionsProvider),
          data: (data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data.map((e) {
                final div = e;
                return ExpansionTile(
                  childrenPadding: EdgeInsets.zero,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  title: HeaderText(div.name, color: brandColor),
                  tilePadding: EdgeInsets.zero,
                  dense: true,
                  children: div.cities
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Expanded(flex: 2, child: HeaderText(e.name, color: const Color(0xff002C76))),
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Transform.scale(
                                  scale: 1,
                                  child: Checkbox(
                                    activeColor: brandColor,
                                    value: e.id == cityId,
                                    onChanged: (bool? value) {
                                      ref.read(allFiltersProvider.notifier).setCity(div, e.id);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                );
              }).toList(),
            );
          },
          errorCallback: () => ref.invalidate(divisionsProvider),
        )
      ],
    ));
  }
}
