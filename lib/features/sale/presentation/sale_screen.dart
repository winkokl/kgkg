import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';

class SaleScreen extends HookConsumerWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSsoModuleAccess = useState<List<String>>([]);
    final hasSsoReturnModuleAccess = useState<List<String>>([]);
    final hasConsignmentModuleAccess = useState<List<String>>([]);
    final hasConsignmentReturnModuleAccess = useState<List<String>>([]);
    final hasTripModuleAccess = useState<List<String>>([]);
    final hasTripReturnModuleAccess = useState<List<String>>([]);
    final hasDeliveryNotesModuleAccess = useState<List<String>>([]);
    final hasMarketingModuleAccess = useState<List<String>>([]);
    final hasMarketingReturnModuleAccess = useState<List<String>>([]);

    // Update when permissionProvider changes
    useEffect(() {
      hasSsoModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.secondarySalesOrder);
      hasSsoReturnModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.secondarySalesReturn);
      hasConsignmentModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.consignment);
      hasConsignmentReturnModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.consignmentReturn);
      hasTripModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.trip);
      hasTripReturnModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.tripReturn);
      hasDeliveryNotesModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(SUBMODULE.deliveryNote, MODULE.goodRequest);
      hasMarketingModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.marketingPromotion);
      hasMarketingReturnModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.marketingPromotionReturn);

      return null;
    }, [ref.watch(permissionProvider)]);

    if (!hasSsoModuleAccess.value.isNotEmpty && !hasSsoReturnModuleAccess.value.isNotEmpty && !hasConsignmentModuleAccess.value.isNotEmpty && !hasConsignmentReturnModuleAccess.value.isNotEmpty && !hasTripModuleAccess.value.isNotEmpty && !hasTripReturnModuleAccess.value.isNotEmpty && !hasDeliveryNotesModuleAccess.value.isNotEmpty && !hasMarketingModuleAccess.value.isNotEmpty && !hasMarketingReturnModuleAccess.value.isNotEmpty) {
      return const PermissionDeniedScreen();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Select Sale Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RefreshIndicator(
          onRefresh: () => ref.refresh(userInfoProvider.future),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 30),
                if (hasSsoModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    ontap: () => ref.watch(goRouterProvider).push(const SecondarySaleRoute().location),
                    image: "assets/images/sale_order.png",
                    title: "Sale",
                  ),
                  const SizedBox(height: 16),
                ],
                // Text("${hasSsoReturnModuleAccess.value}"),
                if (hasTripModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    ontap: () => ref.watch(goRouterProvider).push(const TripSaleRoute().location),
                    image: "assets/images/sale_order.png",
                    title: "Trip Sale",
                  ),
                  const SizedBox(height: 16),
                ],
                if (hasConsignmentModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    image: "assets/images/consignment.png",
                    title: "Consignment",
                    ontap: () => ref.watch(goRouterProvider).push(const ConsignmentRoute().location),
                  ),
                  const SizedBox(height: 16),
                ],
                // if (hasMarketingModuleAccess.value.isNotEmpty) ...[
                //   SaleOptionItem(
                //     image: "assets/images/sale_order.png",
                //     title: "Marketing Promotion",
                //     ontap: () => ref.watch(goRouterProvider).push(const MarketingPromotionPlanRoute().location),
                //   ),
                //   const SizedBox(height: 16),
                // ],
                if (hasDeliveryNotesModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    ontap: () => ref.watch(goRouterProvider).push(const DeliveryNoteRoute().location),
                    image: "assets/images/delivery_note.png",
                    title: "Delivery Note",
                  ),
                  const SizedBox(height: 16),
                ],
                if (hasSsoReturnModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    image: "assets/images/sale_return.png",
                    title: "Sale Return",
                    ontap: () => ref.watch(goRouterProvider).push(const SecondarySaleReturnRoute().location),
                  ),
                  const SizedBox(height: 16),
                ],
                if (hasTripReturnModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    image: "assets/images/trip_sale_goods_return.png",
                    title: "Trip Sale Good Return",
                    ontap: () => ref.watch(goRouterProvider).push(const TripSaleReturnRoute().location),
                  ),
                  const SizedBox(height: 16),
                ],
                if (hasConsignmentReturnModuleAccess.value.isNotEmpty) ...[
                  SaleOptionItem(
                    image: "assets/images/trip_sale_goods_return.png",
                    title: "Consignment Return",
                    ontap: () => ref.watch(goRouterProvider).push(const ConsignmentReturnRoute().location),
                  ),
                  const SizedBox(height: 16),
                ],
                // if (hasMarketingReturnModuleAccess.value.isNotEmpty) ...[
                //   SaleOptionItem(
                //     image: "assets/images/sale_return.png",
                //     title: "Marketing Promotion Return",
                //     ontap: () => ref.watch(goRouterProvider).push(const MarketingPromotionReturnRoute().location),
                //   ),
                //   const SizedBox(height: 16),
                // ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaleOptionItem extends StatelessWidget {
  const SaleOptionItem({
    super.key,
    required this.image,
    required this.title,
    this.ontap,
  });
  final String image;
  final String title;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
            color: bgWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            children: [
              Image.asset(image),
              const SizedBox(width: 12),
              Expanded(flex: 3, child: HeaderTextLarge(title)),
              const Icon(Icons.arrow_forward, color: black, size: 24),
              const SizedBox(width: 20),
            ],
          )),
    );
  }
}
