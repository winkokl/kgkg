import 'package:mgkaung_dms_mobile/features/core/widgets/card_shimmer.dart';
import 'package:flutter/material.dart';

class CommonShimmerList extends StatelessWidget {
  const CommonShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(6, (index) => const CommonShimmer()),
      ),
    );
  }
}
