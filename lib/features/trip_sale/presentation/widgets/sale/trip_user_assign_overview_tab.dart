import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripUserAssignOverViewTab extends ConsumerWidget {
  const TripUserAssignOverViewTab({super.key, required this.tripUserAssign});
  final TripUserAssign tripUserAssign;
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
                  InfoCard(title: "Name", value: tripUserAssign.userName),
                  InfoCard(title: "Phone Number", value: tripUserAssign.phoneNumber),
                  InfoCard(title: "Role", value: tripUserAssign.role),
                  InfoCard(title: "Description", value: tripUserAssign.description),
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
