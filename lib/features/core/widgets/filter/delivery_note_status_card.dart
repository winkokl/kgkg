import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryNoteStatusCard extends ConsumerWidget {
  const DeliveryNoteStatusCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryNoteStatus = ref.watch(allFiltersProvider.select((value) => value.deliveryNoteStatus));
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("Status"),
        const SizedBox(height: 24),
        Column(
            children: DeliveryNoteStatus.values
                .where((element) => element.id != DeliveryNoteStatus.none.id)
                .map(
                  (e) => InkWell(
                    onTap: () => ref.read(allFiltersProvider.notifier).setDeliveryNoteStatus(e),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: e.index == 1 ? 0 : 30),
                      child: Row(children: [
                        Expanded(child: HeaderTextSmall(e.name, color: e.textColor)),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Transform.scale(
                            scale: 1,
                            child: Checkbox(
                              activeColor: brandColor,
                              value: e.id == deliveryNoteStatus.id,
                              onChanged: (bool? value) {
                                ref.read(allFiltersProvider.notifier).setDeliveryNoteStatus(e);
                              },
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
                .toList()),
      ],
    ));
  }
}
