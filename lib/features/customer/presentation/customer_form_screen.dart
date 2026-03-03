import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/async_customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/customer_info_form2.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/customer_info_form1.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerFormScreen extends ConsumerWidget {
  const CustomerFormScreen({super.key, required this.isEdit});

  final bool isEdit;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenX(
      provider: asyncCustomerFormNotifierProvider,
      onData: (res) => CustomDialog.showSuccessDialog(
        title: "Success",
        msg: res.message ?? "",
        onPressed: () => ref.watch(goRouterProvider).popUntilPath(const CustomerRoute().location),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${isEdit ? "Edit" : "Add New"} Customer"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const IndicatorWidget(length: 2),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    decoration: whiteContainerDecoration,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ref.watch(indicatorNotifierProvider) == 0 ? CustomerInfoForm1(isEdit: isEdit) : CustomerInfoForm2(isEdit: isEdit),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    ActionButton(
                      label: ref.watch(indicatorNotifierProvider) == 0 ? "Next" : "Submit",
                      onPressed: () {
                        if (formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          if (ref.watch(indicatorNotifierProvider) == 0) {
                            ref.read(indicatorNotifierProvider.notifier).setValue(1);
                          } else {
                            if (isEdit) {
                              ref.read(asyncCustomerFormNotifierProvider.notifier).updateCustomer(ref.watch(customerFormNotifierProvider));
                            } else {
                              ref.read(asyncCustomerFormNotifierProvider.notifier).createCustomer(ref.watch(customerFormNotifierProvider));
                            }
                          }
                        }
                      },
                    ),
                    if (ref.watch(indicatorNotifierProvider) == 1)
                      TextButton(
                        onPressed: () => ref.read(indicatorNotifierProvider.notifier).setValue(0),
                        child: const Text("Previous"),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
