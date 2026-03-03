import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/card_shimmer.dart';
import '../../../core/widgets/shimmer_item.dart';

class HomeScreenShimmer extends StatelessWidget {
  const HomeScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final itemList = [1, 2, 3, 4, 5];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, AppBar().preferredSize.height + 150),
        child: Stack(
          children: <Widget>[
            Container(
              color: brandColor,
              height: AppBar().preferredSize.height + 110,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CardShimmer(
                  padding: EdgeInsets.zero,
                  boxDecoration: whiteContainerDecoration.copyWith(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.transparent),
                  ),
                  leadingItem: const ShimmerItem(width: 40, height: 40, radius: 30),
                  children: [
                    ShimmerItem(width: MediaQuery.sizeOf(context).width * 0.5),
                    const SizedBox(height: 8),
                    const ShimmerItem(height: 15, width: 150),
                  ],
                ),
              ),
            ),
            Container(),
            Positioned(
              top: 120.0,
              left: 16.0,
              right: 16.0,
              child: CardShimmer(
                leadingItem: const ShimmerItem(width: 50, height: 50, radius: 8),
                children: [
                  ShimmerItem(width: MediaQuery.sizeOf(context).width * 0.5),
                  const SizedBox(height: 8),
                  const ShimmerItem(width: 100),
                  const SizedBox(height: 8),
                  const ShimmerItem(),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: ShimmerItem(width: 100, radius: 8)),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      CardShimmer(
                        leadingItem: const ShimmerItem(width: 50, height: 50, radius: 8),
                        children: [
                          ShimmerItem(width: MediaQuery.sizeOf(context).width * 0.7),
                          const SizedBox(height: 8),
                          const ShimmerItem(width: 100),
                          const SizedBox(height: 8),
                          ShimmerItem(width: MediaQuery.sizeOf(context).width * 0.5),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                },
                childCount: itemList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
