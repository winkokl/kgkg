import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_management.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripManagementOverViewTab extends ConsumerWidget {
  const TripManagementOverViewTab({super.key, required this.management});
  final TripManagement management;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            decoration: whiteContainerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  InfoCard(title: "Trip ID", value: management.code),
                  InfoCard(title: "Trip Name", value: management.tripName),
                  InfoCard(title: "Allocation Account Name", value: management.tripWarehouseList.map((e) => e.name).join('\n')),
                  InfoCard(title: "Description", value: management.description),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
