import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';

class TripVehicleTab extends StatelessWidget {
  const TripVehicleTab({super.key, required this.tripProposal});
  final TripProposal tripProposal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
            children: tripProposal.tripVehicle
                .map(
                  (e) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: whiteContainerDecoration,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: HeaderText(e.name),
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
