import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_tab_bar.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/expense/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/widgets/accept_tab.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/widgets/all_tab.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/widgets/pending_tab.dart';
import 'package:mgkaung_dms_mobile/features/expense/presentation/widgets/reject_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpenseScreen extends HookConsumerWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);

    setExpneseStatus() {
      ref.read(expenseStatusNotifierProvider.notifier).setExpenseStatus(tabController.index);
    }

    useEffect(() {
      tabController.addListener(setExpneseStatus);
      return () => tabController.removeListener(setExpneseStatus);
    }, [tabController]);

    final hasExpenseModuleAccess = useState<List<String>>([]);

    // Update when permissionProvider changes
    useEffect(() {
      hasExpenseModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(SUBMODULE.expense, MODULE.expenseManagement);
      return null;
    }, [ref.watch(permissionProvider)]);

    if (!hasExpenseModuleAccess.value.isNotEmpty) return const PermissionDeniedScreen();

    TabBar tabBar() => CustomTabBar(tabController: tabController, titleList: expenseTitleList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense"),
        centerTitle: false,
        actions: hasExpenseModuleAccess.value.contains(PERMISSION.create)
            ? [
                AddButton(
                  onTap: () => ref.watch(goRouterProvider).push(const ExpenseFormRoute(isEdit: false).location, extra: const Expense()),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SearchTextField(
              title: 'Exp',
              filterControl: FilterControl(hasDate: true),
            ),
            const SizedBox(height: 10),
            tabBar(),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: const [
                  AllTab(),
                  PendingTab(),
                  AcceptTab(),
                  RejectTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
