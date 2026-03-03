import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaymentTypeCard extends ConsumerWidget {
  const PaymentTypeCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentTpye = ref.watch(allFiltersProvider.select((value) => value.paymentType));
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("Payment Type"),
        const SizedBox(height: 24),
        AsyncValueWidget(
          value: ref.watch(paymentTypesProvider),
          data: (data) {
            return Column(
              children: data
                  .map((e) => InkWell(
                        onTap: () => ref.read(allFiltersProvider.notifier).setPaymentType(e),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: data.last == e ? 0 : 30),
                          child: Row(
                            children: [
                              Expanded(child: HeaderTextSmall(e.name)),
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Transform.scale(
                                  scale: 1,
                                  child: Checkbox(
                                    activeColor: brandColor,
                                    value: e.id == paymentTpye.id,
                                    onChanged: (bool? value) {
                                      ref.read(allFiltersProvider.notifier).setPaymentType(e);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            );
          },
          errorCallback: () => ref.invalidate(paymentTypesProvider),
        )
      ],
    ));
  }
}
