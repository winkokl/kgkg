import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/async_customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerDetailScreen extends ConsumerWidget {
  const CustomerDetailScreen({super.key, required this.customer});
  final Customer customer;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BusinessUnit? getActiveBu() {
      if (customer.businessUnits.isEmpty) return null;
      for (final bu in customer.businessUnits) {
        if (bu.createdType == 1) {
          return bu;
        } else {
          continue;
        }
      }
      return null;
    }

    final bu = getActiveBu();
    final hasCusSubModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.customer, MODULE.customer);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Details"),
        actions: hasCusSubModuleAccess.contains(PERMISSION.update) || hasCusSubModuleAccess.contains(PERMISSION.delete)
            ? [
                CustomPopUpMenuButton(
                  popupMenuEntries: [
                    if (hasCusSubModuleAccess.contains(PERMISSION.update))
                      CustomPopUpMenuItem(
                        title: "Edit",
                        ontap: () {
                          ref.watch(goRouterProvider).push(
                                const CustomerFormRoute(isEdit: true).location,
                                extra: bu != null
                                    ? customer.copyWith(
                                        businessUnitId: bu.id,
                                        buRefId: bu.buRefId,
                                        businessUnitName: bu.name,
                                        buAddress: bu.address,
                                        regionWayId: bu.wayId,
                                        regionWayName: bu.wayName,
                                      )
                                    : customer,
                              );
                        },
                        icon: const Icon(Icons.edit_outlined, size: 20),
                      ),
                    if (hasCusSubModuleAccess.contains(PERMISSION.delete))
                      CustomPopUpMenuItem(
                        title: "Delete",
                        textColor: errorColor,
                        ontap: () => CustomDialog.showAsyncDeleteConfirmationDialog(
                            provider: asyncCustomerFormNotifierProvider,
                            onData: (message) => ref.watch(goRouterProvider).popUntilPath(const CustomerRoute().location),
                            onPressed: () {
                              ref.read(asyncCustomerFormNotifierProvider.notifier).deleteCustomer(customer.id);
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
                      InfoCard(title: "Customer ID", value: customer.customerCode),
                      InfoCard(title: "Customer Name", value: customer.name),
                      InfoCard(title: "Customer Type", value: customer.customerType.name),
                      InfoCard(title: "Dealing Date", value: prettierDateFormat(customer.dealingDate)),
                      InfoCard(title: "Phone Number 1", value: customer.phone1),
                      InfoCard(title: "Phone Number 2", value: customer.phone2 ?? ''),
                      InfoCard(title: "Phone Number 3", value: customer.phone3 ?? ''),
                      InfoCard(title: "Phone Number 4", value: customer.phone4 ?? ''),
                      InfoCard(title: "Customer Email", value: customer.email),
                      InfoCard(
                        title: "Contact Person First Name",
                        value: customer.contactPersonFirstName,
                      ),
                      InfoCard(
                        title: "Contact Person Last Name",
                        value: customer.contactPersonLastName,
                      ),
                      InfoCard(
                        title: "Contact Person Phone Number",
                        value: customer.contactPersonPhoneNumber,
                      ),
                      InfoCard(
                        title: "Contact Person Email",
                        value: customer.contactPersonEmail,
                      ),
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
                      const HeaderTextLarge("Customer Details", color: Color(0xff002C76)),
                      const SizedBox(height: 20),
                      // InfoCard(title: "Country Name", value: customer.country.name),
                      InfoCard(title: "Divison/State Name", value: customer.division.name),
                      InfoCard(title: "City Name", value: customer.city.name),
                      InfoCard(title: "Township Name", value: customer.township.name),
                      InfoCard(title: "Address", value: customer.address),
                      InfoCard(title: "Customer Channel Name", value: customer.customerCategory.name),
                      InfoCard(title: "Credit Type", value: customer.creditType.name),
                      InfoCard(title: "Credit Limit", value: formatter.format(customer.creditLimit)),
                      InfoCard(title: "VIP Status", value: customer.vipStatus.name),
                      if (bu != null) ...[
                        InfoCard(title: "Business Unit Name", value: bu.name),
                        InfoCard(title: "Business Unit Rerference ID", value: bu.buRefId ?? ""),
                        InfoCard(title: "Way Name", value: bu.wayName),
                        InfoCard(title: "Address", value: bu.address),
                      ],
                      // InfoCard(title: "Remark", value: customer.remark),
                      InfoCard(title: "Description", value: customer.description),
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
