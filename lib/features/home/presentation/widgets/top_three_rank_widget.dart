import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:flutter/material.dart';

class TopThreeRankWidget extends StatelessWidget {
  const TopThreeRankWidget({
    super.key,
    required this.index,
    required this.saleRank,
  });
  final int index;
  final SaleRank saleRank;
  @override
  Widget build(BuildContext context) {
    return DecoratedContainer(
        width: 250,
        height: 200,
        color: index == 0
            ? const Color(0xff0076FF).withOpacity(0.4)
            : index == 2
                ? const Color(0xffFFAA00).withOpacity(0.4)
                : const Color(0xff00D95F).withOpacity(0.4),
        child: Row(
          children: [
            if (index != 0) const SizedBox(width: 10),
            Image.asset('assets/images/rank${index + 1}.png'),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderTextLarge(saleRank.username),
                const SizedBox(height: 6),
                HeaderTextSmall("${formatter.format(saleRank.amount)} MMK"),
              ],
            )
          ],
        ));
  }
}
