import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';

class SalePromotionProductDetailsTab extends StatelessWidget {
  const SalePromotionProductDetailsTab({
    super.key,
    required this.salePromotion,
  });

  final SalePromotion salePromotion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: salePromotion.details.map((e) => SalePromotionInfoWidget(promotionDetail: e)).toList(),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SalePromotionInfoWidget extends HookWidget {
  const SalePromotionInfoWidget({super.key, required this.promotionDetail});

  final PromotionDetail promotionDetail;

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();

    void goToNextPage() {
      if (controller.page != null && controller.page! < promotionDetail.info.length - 1) {
        controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }

    void goToPreviousPage() {
      if (controller.page != null && controller.page! > 0) {
        controller.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: whiteContainerDecoration,
        child: ExpansionTile(
          trailing: const SizedBox.shrink(),
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  flex: 2,
                  child: InfoCard(
                    title: "Stock Keeping Unit (SKU)",
                    value: promotionDetail.sku.map((e) => e.label).join(',  '),
                    maxLines: promotionDetail.sku.length,
                  )),
              const SizedBox(width: 20),
              Expanded(child: InfoCard(title: "Range Type", value: promotionDetail.rangeType.name)),
            ],
          ),
          children: [
            SizedBox(
              height: 600,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeaderTextLarge("Detail Information", color: Color(0xff002C76)),
                      Row(
                        children: [
                          IconButton(
                            onPressed: goToPreviousPage,
                            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 16),
                          ),
                          IconButton(
                            onPressed: goToNextPage,
                            icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: PageView(
                      controller: controller,
                      children: promotionDetail.info.map((e) => InfoDetailPage(info: e)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoDetailPage extends StatelessWidget {
  const InfoDetailPage({super.key, required this.info});
  final Info info;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoCard(title: "Sale Range", value: '${info.saleRangeFrom} - ${info.saleRangeTo}'),
        InfoCard(title: "Normal Discount", value: '${formatter.format(info.discountAmount)} ${info.discountType.name}'),
        InfoCard(title: "Bonus", value: '${formatter.format(info.bonusAmt)} ${info.bonusType.name}'),
        InfoCard(title: "Cashback", value: '${formatter.format(info.cashback)} ${info.cashbackType.name}'),
        InfoCard(title: "Item Back", value: info.itemName),
        InfoCard(title: "Item Qty", value: '${info.itemQty}'),
        InfoCard(title: "Unit", value: info.itemUnitName),
      ],
    );
  }
}
