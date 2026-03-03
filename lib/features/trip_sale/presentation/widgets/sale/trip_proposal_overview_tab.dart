import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';

class TripProposalOverViewTab extends ConsumerWidget {
  const TripProposalOverViewTab({super.key, required this.tripProposal});
  final TripProposal tripProposal;
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
                  InfoCard(title: "Trip ID", value: tripProposal.tripCode),
                  InfoCard(title: "Trip Name", value: tripProposal.tripName),
                  InfoCard(title: "Proposal Date", value: prettierDateFormat(tripProposal.proposalDate)),
                  InfoCard(title: "Distribution Region Name", value: tripProposal.regionName),
                  InfoCard(title: "Description", value: tripProposal.description),
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
