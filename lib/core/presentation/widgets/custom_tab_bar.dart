import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class CustomTabBar extends TabBar {
  CustomTabBar({
    super.key,
    required this.tabController,
    required this.titleList,
    this.scrollable = true,
  }) : super(
          tabs: titleList.map((e) => Tab(child: Text(e))).toList(),
          isScrollable: scrollable, tabAlignment: scrollable ? TabAlignment.start : null,
          controller: tabController,
          // labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          labelColor: brandColor,
          labelStyle: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          // tabAlignment: TabAlignment.start,
          dividerColor: black.withOpacity(0.1),
          indicatorColor: brandColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: brandColor, width: 2.0),
            ),
          ),
          unselectedLabelColor: black.withOpacity(0.5),
        );

  final TabController tabController;
  final List<String> titleList;
  final bool scrollable;
}
