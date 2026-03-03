import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';

Future<void> showPromotionEligibleDialog(BuildContext context, int invoiceId) async {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: true,
    backgroundColor: bgColor,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (context) => GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.55,
        minChildSize: 0.55,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const HeaderTextLarge("Sale Promotion Eligible"),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(child: Consumer(builder: (c, ref, child) {
                  return AsyncValueWidget(
                      value: ref.watch(promotionEligibleProvider(invoiceId)),
                      data: (promotion) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              InfoCard(title: "Bonus Status", value: promotion.bonusStatus.name, textColor: promotion.bonusStatus.textColor),
                              InfoCard(title: "Bonus", value: formatter.format(promotion.bonus)),
                              InfoCard(title: "Cash Back Status", value: promotion.cashBackStatus.name, textColor: promotion.cashBackStatus.textColor),
                              InfoCard(title: "Cash Back", value: formatter.format(promotion.cashBack)),
                            ],
                          ),
                        );
                      },
                      errorCallback: () => ref.invalidate(promotionEligibleProvider));
                }))
              ],
            ),
          ),
        )),
      ),
    ),
  );
}
