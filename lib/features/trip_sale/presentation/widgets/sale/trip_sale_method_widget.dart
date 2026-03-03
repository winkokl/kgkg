import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/enum_radio_selector.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';

class TripSaleMethodWidget extends ConsumerWidget {
  const TripSaleMethodWidget({super.key, required this.isEdit});
  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(tripSaleFormNotifierProvider.notifier);
    final tripsaleMethod = ref.watch(
      tripSaleFormNotifierProvider.select((value) => value.tripSaleMethod),
    );

    return EnumRadioSelector<TripSaleMethod>(
      title: "Trip Sale Method",
      options: TripSaleMethod.values,
      selectedValue: tripsaleMethod,
      onChanged: (method) {
        saleNotifier.setTripProposal(const TripProposal());
        saleNotifier.setTripSaleRequest(const TripSaleRequest());
        saleNotifier.setWarehouse(null);
        saleNotifier.setDate("");
        saleNotifier.setTripSaleMethod(method);
      },
      isDisabled: isEdit,
    );
  }
}
