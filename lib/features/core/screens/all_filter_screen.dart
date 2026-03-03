import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/business_unit_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/contract_status_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/customer_category_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/customer_name_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/customer_type_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/delivery_note_status_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/distribution_region_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/division_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/expense_type_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/order_status_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/payment_status_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/payment_type_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/region_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/sale_type_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/trip_name_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/trip_sale_request_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/way_name_card.dart';

import '../widgets/filter/date_card.dart';

class AllFilterScreen extends HookConsumerWidget {
  const AllFilterScreen({super.key, this.title, required this.filterControl});
  final FilterControl filterControl;
  final String? title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final needToApplyFilter = useState(false);
    ref.listen(allFiltersProvider, (previous, next) {
      if (previous != next) {
        needToApplyFilter.value = true;
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("All filters"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () => ref.read(allFiltersProvider.notifier).resetState(),
              child: const HeaderText('Clear All', color: brandColor),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (filterControl.hasCustomerCategory) const CustomerCategoryCard(),
                    if (filterControl.hasCustomerType) const CustomerTypeCard(),
                    if (filterControl.hasDate) const DateCard(),
                    if (filterControl.hasExpenseStatus) const ExpenseStatusCard(),
                    if (filterControl.hasCustomer) const CustomerNameCard(),
                    if (filterControl.hasDistributionRegion) const DistributionRegionCard(),
                    if (filterControl.hasWayName) const WayNameCard(),
                    if (filterControl.hasSaleType) const SaleTypeCard(),
                    if (filterControl.hasTripName) const TripNameCard(),
                    if (filterControl.hasBusinessUnit) const BusinessUnitNameCard(),
                    if (filterControl.hasContractStatus) const ContractStatusCard(),
                    if (filterControl.hasRegion) const RegionCard(),
                    if (filterControl.hasDivision) const DivisionCard(),
                    if (filterControl.hasPaymentStatus) const PaymentStatusCard(),
                    if (filterControl.hasOrderStatus) OrderStatusCard(isNeedToChangeStatusName: filterControl.isNeedToChangeStatusName),
                    if (filterControl.hasTripSaleRequestStatus) const TripSaleRequestCard(),
                    if (filterControl.hasPaymentType) const PaymentTypeCard(),
                    if (filterControl.hasDeliveryNoteStatus) const DeliveryNoteStatusCard()
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: bgWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ActionButton(
                label: "View Result",
                onPressed: () {
                  final fromDate = ref.watch(allFiltersProvider).fromDate;
                  final toDate = ref.watch(allFiltersProvider).toDate;

                  if ((fromDate.isEmpty && toDate.isNotEmpty) || (fromDate.isNotEmpty && toDate.isEmpty)) {
                    CustomDialog.showFailureDialog(
                      title: "Failed",
                      msg: "Please select both from date and to date",
                      onPressed: () => context.pop(),
                    );
                    return;
                  } else {
                    if (needToApplyFilter.value) {
                      ref.read(filterApplyProvider(title).notifier).setFilterApply(ref.watch(allFiltersProvider));
                    }
                    context.pop();
                  }
                },
                icon: const Icon(Icons.add, color: brandColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
