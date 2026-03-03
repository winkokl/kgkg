import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/async_customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_customer_search_form.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_way_search_form.dart';

class BusinessUnitFormScreen extends HookConsumerWidget {
  const BusinessUnitFormScreen({super.key, required this.businessUnit, required this.isEdit});

  final BusinessUnit businessUnit;
  final bool isEdit;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final buRefId = useState(businessUnit.buRefId);
    final customer = useState(Customer(id: businessUnit.customerId, name: businessUnit.customerName));
    final businessUnitNameController = useTextEditingController(text: businessUnit.name);
    final businessUnitCodeController = useTextEditingController(text: businessUnit.buRefId);

    final way = useState(Way(id: businessUnit.wayId, name: businessUnit.wayName));
    final division = useState(Division(id: businessUnit.divisionId, name: businessUnit.divisionName));
    final city = useState(City(id: businessUnit.cityId, name: businessUnit.cityName));
    final township = useState(Township(id: businessUnit.townshipId, name: businessUnit.townshipName));
    // final creditType = useState(businessUnit.creditType);
    final addressController = useTextEditingController(text: businessUnit.buAddress);
    final phoneNumberController = useTextEditingController(text: businessUnit.phoneNumber);
    final descriptionController = useTextEditingController(text: businessUnit.description);

    // final creditLimitController = useTextEditingController(text: "${businessUnit.creditLimit == 0 ? "0" : businessUnit.creditLimit}");

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
        title: Text("${isEdit ? "Edit" : "Add New"} Business Unit"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            FormTextInput(
                                label: "Customer Name *",
                                hintText: "Select Customer Name",
                                key: UniqueKey(),
                                isReadOnly: true,
                                fillColor: isEdit ? textFieldFillColor : null,
                                textStyle: isEdit ? readOnlyTextStyle : null,
                                initialValue: customer.value.name,
                                validator: FormValidators.requiredValidator().call,
                                ontap: isEdit
                                    ? null
                                    : () async {
                                        await showCustomerSearchForm(context, (c) => customer.value = c);
                                      }),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Business Unit Name *",
                              controller: businessUnitNameController,
                              validator: FormValidators.requiredValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Business Unit Reference ID",
                              controller: businessUnitCodeController,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                                label: "Way Name *",
                                hintText: "Way Name",
                                key: UniqueKey(),
                                isReadOnly: true,
                                initialValue: way.value.name,
                                validator: FormValidators.requiredValidator().call,
                                ontap: () async {
                                  await showWaySearchForm(context, (c) => way.value = c);
                                }),
                            const SizedBox(height: 30),
                            const HeaderTextLarge("Business Unit Details", color: Color(0xff002C76)),
                            const SizedBox(height: 30),
                            FormTextInput(
                              label: "Division/State Name",
                              hintText: "Select Division/State",
                              key: UniqueKey(),
                              isReadOnly: true,
                              // validator: FormValidators.requiredValidator().call,
                              initialValue: division.value.name,
                              ontap: () async {
                                await CustomPicker.modalSheetPicker<Division>(
                                  context: context,
                                  onSelect: (v) {
                                    division.value = v;
                                    city.value = const City();
                                    township.value = const Township();
                                  },
                                  display: (v) => v.name,
                                  currentValue: division.value,
                                  futureProvider: divisionsProvider,
                                  errorCallback: () => ref.invalidate(divisionsProvider),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "City Name",
                              hintText: "Select City",
                              key: UniqueKey(),
                              isReadOnly: true,
                              // validator: FormValidators.requiredValidator().call,
                              initialValue: city.value.name,
                              fillColor: division.value.id == -1 ? textFieldFillColor : null,
                              ontap: division.value.id == -1
                                  ? null
                                  : () async {
                                      await CustomPicker.modalSheetPicker<City>(
                                        context: context,
                                        onSelect: (v) {
                                          city.value = v;
                                          township.value = const Township();
                                        },
                                        display: (v) => v.name,
                                        currentValue: city.value,
                                        data: ref.watch(divisionsProvider).requireValue.where((element) => element.id == division.value.id).first.cities,
                                      );
                                    },
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Township Name",
                              hintText: "Select Township",
                              key: UniqueKey(),
                              isReadOnly: true,
                              // validator: FormValidators.requiredValidator().call,
                              initialValue: township.value.name,
                              fillColor: city.value.id == -1 ? textFieldFillColor : null,
                              ontap: city.value.id == -1
                                  ? null
                                  : () async {
                                      await CustomPicker.modalSheetPicker<Township>(
                                        context: context,
                                        onSelect: (v) => township.value = v,
                                        display: (v) => v.name,
                                        currentValue: township.value,
                                        data: ref.watch(divisionsProvider).requireValue.where((element) => element.id == division.value.id).first.cities.where((element) => element.id == city.value.id).first.townships,
                                      );
                                    },
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Phone number",
                              controller: phoneNumberController,
                            ),
                            const SizedBox(height: 20),
                            // FormTextInput(
                            //     label: "Credit Type *",
                            //     hintText: "Select Credit Type",
                            //     key: UniqueKey(),
                            //     isReadOnly: true,
                            //     validator: FormValidators.requiredValidator().call,
                            //     initialValue: creditType.value.name,
                            //     ontap: () async {
                            //       await CustomPicker.modalSheetPicker<CreditType>(
                            //         context: context,
                            //         onSelect: (v) => creditType.value = v,
                            //         display: (v) => v.name,
                            //         currentValue: creditType.value,
                            //         futureProvider: creditTypesProvider,
                            //         errorCallback: () => ref.invalidate(creditTypesProvider),
                            //       );
                            //     }),
                            // const SizedBox(height: 20),
                            // FormTextInput(
                            //   validator: FormValidators.numericValidator().call,
                            //   label: "Credit Limit *",
                            //   controller: creditLimitController,
                            //   keyboardType: TextInputType.number,
                            //   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            // ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Address *",
                              controller: addressController,
                              validator: FormValidators.requiredValidator().call,
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Description",
                              maxlines: 4,
                              minlines: 3,
                              keyboardType: TextInputType.multiline,
                              controller: descriptionController,
                            ),
                            const SizedBox(height: 20),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ActionButton(
                  label: "Submit",
                  onPressed: () {
                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      final newBusinessUnit = businessUnit.copyWith(
                        name: businessUnitNameController.text,
                        buRefId: businessUnitCodeController.text,
                        customerId: customer.value.id,
                        cityId: city.value.id,
                        divisionId: division.value.id,
                        townshipId: township.value.id,
                        wayId: way.value.id,
                        address: addressController.text,
                        phoneNumber: phoneNumberController.text,
                        description: descriptionController.text,
                        // creditLimit: double.tryParse(creditLimitController.text) ?? 0,
                        // creditType: creditType.value,
                      );

                      if (isEdit) {
                        ref.read(asyncCustomerFormNotifierProvider.notifier).updateBusinessUnit(newBusinessUnit);
                      } else {
                        ref.read(asyncCustomerFormNotifierProvider.notifier).createBusinessUnit(newBusinessUnit);
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
