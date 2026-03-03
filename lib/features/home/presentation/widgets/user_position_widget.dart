import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_linear_progres_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';

class UserPositionWidget extends StatelessWidget {
  const UserPositionWidget({
    super.key,
    required this.user,
  });
  final User user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText("My Place"),
          const SizedBox(height: 9),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE8F2FB),
                ),
                child: Center(
                  child: Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: brandColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                        child: HeaderText(
                      '${user.saleRank.rank == -1 ? '?' : user.saleRank.rank}',
                      color: bgWhite,
                    )),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerLeft,
                          child: HeaderTextSmall("${formatter.format(user.saleRank.amount)} MMK"),
                        )),
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerRight,
                          child: HeaderTextSmall("${formatter.format(user.saleRank.saleTargetAmount)} MMK"),
                        )),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomLinearProgresIndicator(
                      value: user.saleRank.saleTargetAmount == 0 ? 0 : user.saleRank.amount / user.saleRank.saleTargetAmount,
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
