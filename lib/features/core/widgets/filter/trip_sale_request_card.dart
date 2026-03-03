import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleRequestCard extends ConsumerWidget {
  const TripSaleRequestCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripSaleRequest = ref.watch(allFiltersProvider.select((value) => value.tripSaleRequestStatus));
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("Status"),
        const SizedBox(height: 24),
        Column(
            children: TripSaleRequestStatus.values
                .where((element) => element.id != TripSaleRequestStatus.all.id)
                .map(
                  (e) => InkWell(
                    onTap: () => ref.read(allFiltersProvider.notifier).setTripSaleRequestStatus(e),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: e.index == 3 ? 0 : 30),
                      child: Row(children: [
                        Expanded(child: HeaderTextSmall(e.name, color: e.textColor)),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Transform.scale(
                            scale: 1,
                            child: Checkbox(
                              activeColor: brandColor,
                              value: e.id == tripSaleRequest.id,
                              onChanged: (bool? value) {
                                ref.read(allFiltersProvider.notifier).setTripSaleRequestStatus(e);
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
