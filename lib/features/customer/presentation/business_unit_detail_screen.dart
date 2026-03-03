import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/async_customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';

class BusinessUnitDetailScreen extends ConsumerWidget {
  const BusinessUnitDetailScreen({super.key, required this.businessUnit});
  final BusinessUnit businessUnit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasBuModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.businessUnit, MODULE.customer);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Business Unit Details"),
        actions: hasBuModuleAccess.contains(PERMISSION.update) || hasBuModuleAccess.contains(PERMISSION.delete)
            ? [
                CustomPopUpMenuButton(
                  popupMenuEntries: [
                    if (hasBuModuleAccess.contains(PERMISSION.update))
                      CustomPopUpMenuItem(
                        title: "Edit",
                        ontap: () {
                          ref.watch(goRouterProvider).push(
                                const BusinessUnitFormRoute(isEdit: true).location,
                                extra: businessUnit,
                              );
                        },
                        icon: const Icon(Icons.edit_outlined, size: 20),
                      ),
                    if (hasBuModuleAccess.contains(PERMISSION.delete))
                      CustomPopUpMenuItem(
                        title: "Delete",
                        textColor: errorColor,
                        ontap: () => CustomDialog.showAsyncDeleteConfirmationDialog(
                            provider: asyncCustomerFormNotifierProvider,
                            onData: (message) => ref.watch(goRouterProvider).popUntilPath(const CustomerRoute().location),
                            onPressed: () {
                              ref.read(asyncCustomerFormNotifierProvider.notifier).deleteBusinessUnit(businessUnit.id);
                            }),
                        isLast: true,
                        icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                      )
                  ],
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: whiteContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      InfoCard(title: "Business Unit ID", value: businessUnit.code),
                      InfoCard(title: "Business Unit Name", value: businessUnit.name),
                      InfoCard(title: "Business Unit Rerference ID", value: businessUnit.buRefId ?? ""),
                      InfoCard(title: "Customer Name", value: businessUnit.customerName),
                      InfoCard(title: 'Customer Type', value: businessUnit.customerTypeName),
                      InfoCard(title: "Customer Channel", value: businessUnit.customerCategoryName),
                      InfoCard(title: "Way Name", value: businessUnit.wayName),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: whiteContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderTextLarge("Business Unit Details", color: Color(0xff002C76)),
                      const SizedBox(height: 20),
                      InfoCard(title: "Divison/State Name", value: businessUnit.divisionName),
                      InfoCard(title: "City Name", value: businessUnit.cityName),
                      InfoCard(title: "Township Name", value: businessUnit.townshipName),
                      InfoCard(title: "Phone Number", value: businessUnit.phoneNumber),
                      // InfoCard(title: "Credit Type", value: businessUnit.creditType.name),
                      // InfoCard(title: "Credit Limit", value: formatter.format(businessUnit.creditLimit)),
                      InfoCard(title: "Address", value: businessUnit.buAddress),
                      InfoCard(title: "Description", value: businessUnit.description),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
