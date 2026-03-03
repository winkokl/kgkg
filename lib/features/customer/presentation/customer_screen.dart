import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_tab_hook.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/bu_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/customer_tab.dart';

class CustomerScreen extends HookConsumerWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabControllerWithIndex = useTabControllerWithIndex(initialLength: 2, ref: ref);
    final tabIndex = tabControllerWithIndex.tabIndex.value;

    final hasCusModuleAccess = useState<List<String>>([]);
    final hasCusSubModuleAccess = useState<List<String>>([]);
    final hasBuModuleAccess = useState<List<String>>([]);

    // Update when permissionProvider changes
    useEffect(() {
      hasCusModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.customer);
      hasCusSubModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(SUBMODULE.customer, MODULE.customer);
      hasBuModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(SUBMODULE.businessUnit, MODULE.customer);
      return null;
    }, [ref.watch(permissionProvider)]);

    if (hasCusModuleAccess.value.isEmpty) return const PermissionDeniedScreen();

    TabBar tabBar() => CustomTabBar(tabController: tabControllerWithIndex.tabController, titleList: customerTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customers"),
        centerTitle: false,
        actions: [
          CustomPopUpMenuButton(
            iconWidget: const AddButton(),
            popupMenuEntries: [
              if (hasCusSubModuleAccess.value.contains(PERMISSION.create))
                CustomPopUpMenuItem(
                  title: "Add New Customer",
                  isLast: true,
                  ontap: () => ref.watch(goRouterProvider).push(const CustomerFormRoute(isEdit: false).location),
                  icon: const Icon(Icons.add, size: 20, color: black),
                ),
              if (hasBuModuleAccess.value.contains(PERMISSION.create))
                CustomPopUpMenuItem(
                  title: "Add New Business Unit",
                  isLast: true,
                  ontap: () => ref.watch(goRouterProvider).push(const BusinessUnitFormRoute(isEdit: false).location),
                  icon: const Icon(Icons.add, size: 20, color: black),
                ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SearchTextField(
              title: tabIndex == 0 ? 'Cus' : 'bn',
              filterControl: FilterControl(
                hasCustomerCategory: tabIndex == 0,
                hasDate: tabIndex == 0,
                hasCustomerType: true,
                hasCustomer: tabIndex == 1,
                hasWayName: tabIndex == 1,
              ),
            ),
            const SizedBox(height: 10),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabControllerWithIndex.tabController,
                children: const [
                  CustomerTab(),
                  BuTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
