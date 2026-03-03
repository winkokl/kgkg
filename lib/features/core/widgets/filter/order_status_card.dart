import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderStatusCard extends ConsumerWidget {
  const OrderStatusCard({super.key, required this.isNeedToChangeStatusName});
  final bool isNeedToChangeStatusName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderStatus = ref.watch(allFiltersProvider.select((value) => value.orderStatus));
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("Status"),
        const SizedBox(height: 24),
        Column(
            children: OrderStatus.values
                .where((element) => element.id != OrderStatus.all.id)
                .map(
                  (e) => InkWell(
                    onTap: () => ref.read(allFiltersProvider.notifier).setOrderStatus(e),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: e.index == 3 ? 0 : 30),
                      child: Row(children: [
                        Expanded(
                            child: HeaderTextSmall(
                          isNeedToChangeStatusName ? e.name2 : e.name,
                          color: e.textColor,
                        )),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Transform.scale(
                            scale: 1,
                            child: Checkbox(
                              activeColor: brandColor,
                              value: e.id == orderStatus.id,
                              onChanged: (bool? value) {
                                ref.read(allFiltersProvider.notifier).setOrderStatus(e);
                              },
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
                .toList()),
      ],
    ));
  }
}
