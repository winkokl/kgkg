import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/show_trip_name_search_form.dart';

class TripNameCard extends ConsumerWidget {
  const TripNameCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trip = ref.watch(allFiltersProvider.select((value) => value.tripName));
    return CommonNameCard(
      nameCardOntap: () => showTripNameSearchForm(
        context,
        (v) => ref.read(allFiltersProvider.notifier).setTripName(v),
      ),
      onClear: () => ref.read(allFiltersProvider.notifier).clearTripNames(),
      currentValueWidget: HeaderText(trip.id != -1 ? trip.name : 'Trip Name'),
      // Text.rich(
      //   CustomTextSpan(
      //     textString: 'Trip Name',
      //     textColor: black,
      //     textSpanChildren: [CustomTextSpan(textString: '(${trips.length})')],
      //   ),
      // ),
    );
  }
}
