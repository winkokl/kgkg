// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';

class CommonNameCard extends StatelessWidget {
  const CommonNameCard({
    Key? key,
    required this.nameCardOntap,
    required this.onClear,
    required this.currentValueWidget,
    this.isShowName = true,
    this.title = 'Name',
  }) : super(key: key);
  final VoidCallback nameCardOntap;
  final VoidCallback onClear;
  final Widget currentValueWidget;
  final bool isShowName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowName) ...[
          HeaderTextLarge(title),
          const SizedBox(height: 20),
        ],
        InkWell(
          onTap: nameCardOntap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currentValueWidget,
              InkWell(
                onTap: onClear,
                child: const Center(
                  child: HeaderText('Clear', color: brandColor),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Color(0xffB3BFD6),
              )
            ],
          ),
        )
      ],
    ));
  }
}
