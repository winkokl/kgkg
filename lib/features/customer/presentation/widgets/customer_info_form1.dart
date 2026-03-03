import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/customer_form_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';

class CustomerInfoForm1 extends ConsumerWidget {
  const CustomerInfoForm1({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(customerFormNotifierProvider.select((value) => value.name));

    final dealingDate = ref.watch(customerFormNotifierProvider.select((value) => value.dealingDate));

    final customerCode = ref.watch(customerFormNotifierProvider.select((value) => value.customerCode));

    final customerType = ref.watch(customerFormNotifierProvider.select((value) => value.customerType));

    final phoneNumber1 = ref.watch(customerFormNotifierProvider.select((value) => value.phone1));

    final phoneNumber2 = ref.watch(customerFormNotifierProvider.select((value) => value.phone2));

    final phoneNumber3 = ref.watch(customerFormNotifierProvider.select((value) => value.phone3));

    final phoneNumber4 = ref.watch(customerFormNotifierProvider.select((value) => value.phone4));

    final email = ref.watch(customerFormNotifierProvider.select((value) => value.email));

    final contactPersonFirstName = ref.watch(customerFormNotifierProvider.select((value) => value.contactPersonFirstName));

    final contactPersonLastName = ref.watch(customerFormNotifierProvider.select((value) => value.contactPersonLastName));

    final contactPersonPhoneNumber = ref.watch(customerFormNotifierProvider.select((value) => value.contactPersonPhoneNumber));

    final contactPersonEmail = ref.watch(customerFormNotifierProvider.select((value) => value.contactPersonEmail));

    final customerFormNotifier = ref.read(customerFormNotifierProvider.notifier);

    return Column(
      children: [
        const SizedBox(height: 20),
        if (isEdit) ...[
          FormTextInput(
            label: "Customer ID *",
            initialValue: customerCode,
            isReadOnly: isEdit,
            fillColor: textFieldFillColor,
            textStyle: readOnlyTextStyle,
            onSaved: (v) => customerFormNotifier.setCustomerCode(v!),
          ),
          const SizedBox(height: 20),
        ],
        FormTextInput(
          validator: FormValidators.requiredValidator().call,
          label: "Customer Name *",
          initialValue: name,
          onSaved: (v) => customerFormNotifier.setName(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
            label: "Customer Type *",
            hintText: "Select Customer Type",
            key: UniqueKey(),
            isReadOnly: true,
            validator: FormValidators.requiredValidator().call,
            initialValue: customerType.name,
            ontap: () async {
              await CustomPicker.modalSheetPicker<CustomerType>(
                context: context,
                onSelect: (v) {
                  customerFormNotifier.setCustomerType(v);
                  customerFormNotifier.setCreditType(const CreditType());
                  customerFormNotifier.setCreditLimit("0");
                },
                display: (v) => v.name,
                currentValue: customerType,
                futureProvider: customerTypesProvider,
                errorCallback: () => ref.invalidate(customerTypesProvider),
              );
            }),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Dealing Date *",
          hintText: "Select Date",
          key: UniqueKey(),
          isReadOnly: true,
          initialValue: prettierDateFormat(dealingDate),
          suffixicon: const Icon(
            Icons.calendar_month_outlined,
            color: Color(0xffB4BCCC),
          ),
          validator: FormValidators.requiredValidator().call,
          ontap: () async {
            final selectedDate = await CustomDatePicker.datePicker(context, "");
            if (selectedDate != null) {
              customerFormNotifier.setDealingDate(selectedDate);
            }
          },
        ),
        const SizedBox(height: 20),
        FormTextInput(
          // validator: FormValidators.emailValidator(true).call,
          label: "Customer Email ",
          initialValue: email,
          onSaved: (v) => customerFormNotifier.setEmail(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          validator: FormValidators.requiredValidator().call,
          label: "Phone Number 1 *",
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          initialValue: phoneNumber1,
          onSaved: (v) => customerFormNotifier.setPhone1(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Phone Number 2",
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          initialValue: phoneNumber2,
          onSaved: (v) => customerFormNotifier.setPhone2(v),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Phone Number 3",
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          initialValue: phoneNumber3,
          onSaved: (v) => customerFormNotifier.setPhone3(v),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Phone Number 4",
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          initialValue: phoneNumber4,
          onSaved: (v) => customerFormNotifier.setPhone4(v),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Contact Person First Name",
          initialValue: contactPersonFirstName,
          onSaved: (v) => customerFormNotifier.setContactPersonFirstName(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          label: "Contact Person Last Name",
          initialValue: contactPersonLastName,
          onSaved: (v) => customerFormNotifier.setContactPersonLastName(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          validator: FormValidators.phoneValidator(false).call,
          label: "Contact Person Phone Number",
          initialValue: contactPersonPhoneNumber,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onSaved: (v) => customerFormNotifier.setContactPersonPhoneNumber(v!),
        ),
        const SizedBox(height: 20),
        FormTextInput(
          validator: FormValidators.emailValidator(false).call,
          label: "Contact Person Email",
          initialValue: contactPersonEmail,
          onSaved: (v) => customerFormNotifier.setContactPersonEmail(v!),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
