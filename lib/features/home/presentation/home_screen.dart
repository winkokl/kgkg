import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:mgkaung_dms_mobile/features/home/presentation/widgets/header_widget.dart';
import 'package:mgkaung_dms_mobile/features/home/presentation/widgets/home_screen_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/rank_widget.dart';
import 'widgets/top_three_rank_widget.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeData = ref.watch(homeDataProvider);

    return AsyncValueWidget(
        value: homeData,
        loadingWidget: const HomeScreenShimmer(),
        data: (data) {
          List<SaleRank> topThreeList = [];
          List<SaleRank> exceptTopThreeList = [];

          for (var element in data.saleRanks) {
            if (element.rank == 1 || element.rank == 2 || element.rank == 3) {
              topThreeList.add(element);
            } else {
              exceptTopThreeList.add(element);
            }
          }

          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, AppBar().preferredSize.height + 150),
              child: HeaderWidget(user: data.user, height: AppBar().preferredSize.height),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: RefreshIndicator(
                onRefresh: () {
                  ref.invalidate(userInfoProvider);
                  ref.invalidate(saleRanksProvider);
                  return ref.refresh(homeDataProvider.future);
                },
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    const SliverToBoxAdapter(child: HeaderTextLarge("Our Sales Rank")),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(
                        child: SizedBox(
                      height: 110,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: topThreeList.length,
                        separatorBuilder: (context, index) => const SizedBox(width: 14),
                        itemBuilder: (ctx, index) => TopThreeRankWidget(
                          index: index,
                          saleRank: topThreeList[index],
                        ),
                      ),
                    )),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Column(
                            children: [
                              RankWidget(saleRank: exceptTopThreeList[index]),
                              const SizedBox(height: 10),
                            ],
                          );
                        },
                        childCount: exceptTopThreeList.length,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        errorCallback: () {
          ref.invalidate(userInfoProvider);
          ref.invalidate(saleRanksProvider);
          ref.invalidate(homeDataProvider);
        });
  }
}
