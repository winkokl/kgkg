import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/add_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/presentation/widgets/consignment_return_tab.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentReturnScreen extends ConsumerWidget {
  const ConsignmentReturnScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasConReturnModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.consignmentReturn, MODULE.consignmentReturn);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Consignment Return"),
        centerTitle: false,
        actions: !hasConReturnModuleAccess.contains(PERMISSION.create)
            ? null
            : [
                AddButton(
                  onTap: () {
                    ref.invalidate(productListNotifierProvider);

                    ref.watch(goRouterProvider).push(const ConsignmentReturnFormRoute(isEdit: false).location);
                  },
                )
              ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            SearchTextField(
              filterControl: FilterControl(
                hasDate: true,
                hasCustomer: true,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SaleReturnTab(),
            ),
          ],
        ),
      ),
    );
  }
}
