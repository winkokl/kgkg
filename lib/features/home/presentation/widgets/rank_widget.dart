import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_linear_progres_indicator.dart';

class RankWidget extends StatelessWidget {
  const RankWidget({
    super.key,
    required this.saleRank,
  });
  final SaleRank saleRank;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: whiteContainerDecoration,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        isThreeLine: true,
        leading: HeaderTextSmall("${saleRank.rank}"),
        title: HeaderText(saleRank.username),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 6),
            HeaderTextSmall("${formatter.format(saleRank.amount)} MMK"),
            const SizedBox(height: 10),
            CustomLinearProgresIndicator(
              value: saleRank.saleTargetAmount == 0 ? 0 : saleRank.amount / saleRank.saleTargetAmount,
              height: 4,
            ),
          ],
        ),
        trailing: const DecoratedContainer(
          height: 32,
          width: 32,
          color: Color(0xffF4F8FD),
          child: Icon(Icons.person, color: brandColor, size: 20),
        ),
      ),
    );
  }
}
