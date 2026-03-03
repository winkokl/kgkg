import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mgkaung_dms_mobile/core/enums/vip_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/customer_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_customer_category_search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_way_search_form.dart';

class CustomerInfoForm2 extends HookConsumerWidget {
  const CustomerInfoForm2({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerType = ref.watch(customerFormNotifierProvider.select((value) => value.customerType));

    final division = ref.watch(customerFormNotifierProvider.select((value) => value.division));

    final city = ref.watch(customerFormNotifierProvider.select((value) => value.city));

    final township = ref.watch(customerFormNotifierProvider.select((value) => value.township));

    final customerCategory = ref.watch(customerFormNotifierProvider.select((value) => value.customerCategory));

    final address = ref.watch(customerFormNotifierProvider.select((value) => value.address));

    final creditLimit = ref.watch(customerFormNotifierProvider.select((value) => value.creditLimit));

    final creditType = ref.watch(customerFormNotifierProvider.select((value) => value.creditType));

    final regionWayName = ref.watch(customerFormNotifierProvider.select((value) => value.regionWayName));

    final businessUnitName = ref.watch(customerFormNotifierProvider.select((value) => value.businessUnitName));

    final buRefId = ref.watch(customerFormNotifierProvider.select((value) => value.buRefId));

    final buAddress = ref.watch(customerFormNotifierProvider.select((value) => value.buAddress));

    final description = ref.watch(customerFormNotifierProvider.select((value) => value.description));

    final customerFormNotifier = ref.read(customerFormNotifierProvider.notifier);

    final isNewCustomer = customerType.name.toLowerCase() == "new";

    // final isSelect = useState(false);

    final addressController = useTextEditingController(text: address);
    final buAddessController = useTextEditingController(text: buAddress);
    final creditLimitController = useTextEditingController(text: "${creditLimit == 0 ? "0" : creditLimit}");
    final buNameController = useTextEditingController(text: businessUnitName);
    final buRefIdController = useTextEditingController(text: buRefId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const HeaderText("Add customer details", color: Color(0xff002C76)),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Division/State Name *",
          hintText: "Select Division/State",
          key: UniqueKey(),
          isReadOnly: true,
          validator: FormValidators.requiredValidator().call,
          initialValue: division.name,
          ontap: () async {
            await CustomPicker.modalSheetPicker<Division>(
              context: context,
              onSelect: (v) {
                customerFormNotifier.setDivision(v);
                customerFormNotifier.setCity(const City());
                customerFormNotifier.setTownship(const Township());
              },
              display: (v) => v.name,
              currentValue: division,
              futureProvider: divisionsProvider,
              errorCallback: () => ref.invalidate(divisionsProvider),
            );
          },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "City Name *",
          hintText: "Select City",
          key: UniqueKey(),
          isReadOnly: true,
          validator: FormValidators.requiredValidator().call,
          initialValue: city.name,
          fillColor: division.id == -1 ? textFieldFillColor : null,
          ontap: division.id == -1
              ? null
              : () async {
                  await CustomPicker.modalSheetPicker<City>(
                    context: context,
                    onSelect: (v) {
                      customerFormNotifier.setCity(v);
                      customerFormNotifier.setTownship(const Township());
                    },
                    display: (v) => v.name,
                    currentValue: city,
                    data: ref.watch(divisionsProvider).requireValue.where((element) => element.id == division.id).first.cities,
                  );
                },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Township Name *",
          hintText: "Select Township",
          key: UniqueKey(),
          isReadOnly: true,
          validator: FormValidators.requiredValidator().call,
          initialValue: township.name,
          fillColor: city.id == -1 ? textFieldFillColor : null,
          ontap: city.id == -1
              ? null
              : () async {
                  await CustomPicker.modalSheetPicker<Township>(
                    context: context,
                    onSelect: (v) => customerFormNotifier.setTownship(v),
                    display: (v) => v.name,
                    currentValue: township,
                    data: ref.watch(divisionsProvider).requireValue.where((element) => element.id == division.id).first.cities.where((element) => element.id == city.id).first.townships,
                  );
                },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          // validator: FormValidators.requiredValidator().call,
          maxlines: 4,
          minlines: 3,
          controller: addressController,
          // initialValue: address,
          keyboardType: TextInputType.multiline,
          label: "Address *",
          validator: FormValidators.requiredValidator().call,
          onSaved: (v) => customerFormNotifier.setAddress(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
            label: "Customer Channel Name *",
            hintText: "Select Customer Channel Name",
            key: UniqueKey(),
            isReadOnly: true,
            validator: FormValidators.requiredValidator().call,
            initialValue: customerCategory.name,
            ontap: () async {
              await showCustomerCategorySearchForm(
                context,
                (v) => customerFormNotifier.setCustomerCategory(v),
              );
            }),
        const SizedBox(height: 20),
        const VIPStatusWidget(),
        const SizedBox(height: 20),
        const HeaderTextLarge("Default Business Unit", color: Color(0xff002C76)),
        const SizedBox(height: 10),
        FormTextInput(
          label: "Business Unit Name *",
          controller: buNameController,
          validator: FormValidators.requiredValidator().call,
          onSaved: (v) {
            customerFormNotifier.setBusinessUnitName(v);
          },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Business Unit Reference ID",
          controller: buRefIdController,
          onSaved: (v) => customerFormNotifier.setBusinessUnitRefId(v),
        ),
        const SizedBox(height: 20),
        FormTextInput(
            label: "Credit Type ${isNewCustomer ? "*" : ""}",
            hintText: "Select Credit Type",
            key: UniqueKey(),
            isReadOnly: true,
            validator: !isNewCustomer ? null : FormValidators.requiredValidator().call,
            initialValue: creditType.name,
            // fillColor: !isNewCustomer ? textFieldFillColor : null,
            ontap: () async {
              await CustomPicker.modalSheetPicker<CreditType>(
                context: context,
                onSelect: (v) {
                  customerFormNotifier.setCreditType(v);
                },
                display: (v) => v.name,
                currentValue: creditType,
                futureProvider: creditTypesProvider,
                errorCallback: () => ref.invalidate(creditTypesProvider),
              );
            }),
        const SizedBox(height: 20),
        FormTextInput(
          validator: !isNewCustomer ? null : FormValidators.numericValidator().call,
          label: "Credit Limit ${!isNewCustomer ? "" : "*"}",
          controller: creditLimitController,
          isReadOnly: !isNewCustomer,
          keyboardType: TextInputType.number,
          // fillColor: !isNewCustomer ? textFieldFillColor : null,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onSaved: (v) => customerFormNotifier.setCreditLimit(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Way Name *",
          hintText: "Way Name",
          key: UniqueKey(),
          isReadOnly: true,
          initialValue: regionWayName,
          validator: FormValidators.requiredValidator().call,
          ontap: () async {
            await showWaySearchForm(context, (c) {
              customerFormNotifier.setRegionWayId(c.id);
              customerFormNotifier.setRegionWayName(c.name);
            });
          },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          validator: FormValidators.requiredValidator().call,
          maxlines: 4,
          minlines: 3,
          controller: buAddessController,
          keyboardType: TextInputType.multiline,
          label: "Address *",
          onSaved: (v) => customerFormNotifier.setBusinessUnitAddress(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          maxlines: 4,
          minlines: 3,
          initialValue: description,
          keyboardType: TextInputType.multiline,
          label: "Description",
          onSaved: (v) => customerFormNotifier.setDescription(v ?? ""),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class VIPStatusWidget extends ConsumerWidget {
  const VIPStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerFormNotifier = ref.read(customerFormNotifierProvider.notifier);

    final vipStatus = ref.watch(customerFormNotifierProvider.select((value) => value.vipStatus));
    return FormTextInput(
      label: "VIP Status *",
      hintText: "Select VIP Status",
      key: UniqueKey(),
      isReadOnly: true,
      validator: FormValidators.requiredValidator().call,
      initialValue: vipStatus.name,
      ontap: () async {
        await CustomPicker.modalSheetPicker<VIPStatus>(
          context: context,
          onSelect: (v) => customerFormNotifier.setVIPStatus(v),
          display: (v) => v.name,
          currentValue: vipStatus,
          data: [VIPStatus.vip, VIPStatus.nonVip],
        );
      },
    );
  }
}
