import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/repos/consignment_repository.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/consignment_method_widget.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/sale/show_cc_customer_search_form.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_bu_search_form.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';

class ConsignmentInfoForm extends HookConsumerWidget {
  const ConsignmentInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(consignmentFormNotifierProvider.notifier);

    final saleCode = ref.watch(consignmentFormNotifierProvider.select((value) => value.code));

    final date = ref.watch(consignmentFormNotifierProvider.select((value) => value.date));

    final customer = ref.watch(consignmentFormNotifierProvider.select((value) => value.customer));

    final businessUnit = ref.watch(consignmentFormNotifierProvider.select((value) => value.businessUnit));

    final distributionRegion = ref.watch(consignmentFormNotifierProvider.select((value) => value.region));

    final contractId = ref.watch(consignmentFormNotifierProvider.select((value) => value.consignmentContractId));

    final contractCode = ref.watch(consignmentFormNotifierProvider.select((value) => value.consignmentContractCode));

    final paymentType = ref.watch(consignmentFormNotifierProvider.select((value) => value.paymentType));

    final paymentTerm = ref.watch(consignmentFormNotifierProvider.select((value) => value.paymentTerm));

    final description = ref.watch(consignmentFormNotifierProvider.select((value) => value.description));

    final contract = ref.watch(consignmentFormNotifierProvider.select((value) => value.consignmentContract));

    useEffect(() {
      if (paymentTerm.id != -1) return;
      Future.microtask(() async {
        final paymentTerms = await ref.read(paymentTermsProvider(0).future);
        if (paymentTerms.isNotEmpty) {
          saleNotifier.setPaymentTerm(paymentTerms.firstOrNull ?? const PaymentTerm());
        }
      });
      return;
    }, [ref.watch(paymentTermsProvider(0))]);

    void fetchConsignmentContract(ConsignmentContract v) async {
      try {
        LoadingOverlay.show();

        final consignmentRepo = ref.read(consignmentRepositoryProvider);
        final cc = await consignmentRepo.getConsignmentContractById(v.id);

        final products = cc.products
            .map((p) => p.copyWith(
                  salePrice: p.salePrice,
                  taxAmount: p.secondarySaleTax,
                  taxType: p.secondarySaleTaxType,
                  isConsignment: true,
                  availableQty: p.availableQty,
                  isViewOnly: false,
                ))
            .toList();

        ref.read(productListNotifierProvider.notifier).setProductList(products);
        saleNotifier.setConsignmentContractId(v.id);
        saleNotifier.setConsignmentContractCode(v.code);
        saleNotifier.setDate("");
        saleNotifier.setConsignmentContract(v);
      } catch (e) {
        CustomDialog.showFailureDialog(
          title: "Data Fetch Error",
          msg: "Failed to load consignment contract. Please try again.",
          onPressed: () => context.pop(),
        );
      } finally {
        LoadingOverlay.hide();
      }
    }

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(paymentTypesProvider);
        await Future.wait([
          ref.read(paymentTypesProvider.future),
        ]);
        return;
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: whiteContainerDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                if (saleCode.isNotEmpty) ...[
                  FormTextInput(
                    isReadOnly: true,
                    fillColor: textFieldFillColor,
                    textStyle: readOnlyTextStyle,
                    label: "Sale Order ID",
                    initialValue: saleCode,
                  ),
                  const SizedBox(height: 20),
                ],
                ConsignmentMethodWidget(isEdit: isEdit),
                const SizedBox(height: 20),
                FormTextInput(
                    label: "Customer Name *",
                    hintText: "Select Customer Name",
                    key: UniqueKey(),
                    isReadOnly: true,
                    initialValue: customer.name,
                    fillColor: isEdit ? textFieldFillColor : null,
                    validator: FormValidators.requiredValidator().call,
                    ontap: isEdit
                        ? null
                        : () async {
                            await showConsignmentContractCustomerSearchForm(context, (c, bu) {
                              saleNotifier.setCustomer(c);
                              saleNotifier.setConsignmentContractId(-1);
                              saleNotifier.setConsignmentContractCode("");
                              saleNotifier.setDate("");
                              saleNotifier.setBusinessUnit(bu);
                              saleNotifier.setConsignmentContract(const ConsignmentContract());
                            });
                          }),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Business Unit *",
                  key: UniqueKey(),
                  hintText: "Select Business Name",
                  isReadOnly: true,
                  fillColor: isEdit || customer.id == -1 ? textFieldFillColor : null,
                  initialValue: businessUnit.name,
                  validator: FormValidators.requiredValidator().call,
                  ontap: isEdit || customer.id == -1
                      ? null
                      : () async {
                          await showBusinessUnitSearchForm(context, (v) {
                            saleNotifier.setBusinessUnit(v);
                            saleNotifier.setConsignmentContractId(-1);
                            saleNotifier.setConsignmentContractCode("");
                            saleNotifier.setDate("");
                            saleNotifier.setConsignmentContract(const ConsignmentContract());
                          }, customer.id);
                        },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Consignment Contract *",
                  key: UniqueKey(),
                  hintText: "Select Consignment Contract",
                  isReadOnly: true,
                  fillColor: isEdit || businessUnit.id == -1 ? textFieldFillColor : null,
                  initialValue: contractCode,
                  validator: FormValidators.requiredValidator().call,
                  ontap: isEdit || businessUnit.id == -1
                      ? null
                      : () async {
                          await CustomPicker.modalSheetPicker<ConsignmentContract>(
                            context: context,
                            onSelect: (v) => fetchConsignmentContract(v),
                            display: (v) => v.code,
                            currentValue: contract,
                            futureProvider: consignmentContractsByBUProvider(businessUnit.id),
                            errorCallback: () => ref.invalidate(distributionRegionsProvider),
                          );
                        },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Sale Date *",
                  hintText: "Select Date",
                  key: UniqueKey(),
                  isReadOnly: true,
                  fillColor: isEdit || contractId == -1 ? textFieldFillColor : null,
                  initialValue: prettierDateFormat(date),
                  suffixicon: const Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xffB4BCCC),
                  ),
                  validator: FormValidators.requiredValidator().call,
                  ontap: isEdit || contractId == -1
                      ? null
                      : () async {
                          final startDate = contract.date;
                          final endDate = dateFormat(DateTime.parse(startDate).add(const Duration(days: 1)));
                          final selectedDate = await CustomDatePicker.datePicker(context, "", startDate, endDate);
                          if (selectedDate != null) {
                            saleNotifier.setDate(selectedDate);
                          }
                        },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Distribution Region *",
                  hintText: "Select Distribution Region",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: distributionRegion.name,
                  fillColor: isEdit ? textFieldFillColor : null,
                  validator: FormValidators.requiredValidator().call,
                  ontap: isEdit
                      ? null
                      : () async {
                          await CustomPicker.modalSheetPicker<Region>(
                            context: context,
                            onSelect: (v) => saleNotifier.setRegion(v),
                            display: (v) => v.name,
                            currentValue: distributionRegion,
                            futureProvider: distributionRegionsProvider,
                            errorCallback: () => ref.invalidate(distributionRegionsProvider),
                          );
                        },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Payment Type",
                  hintText: "Select Payment Type",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: isEdit ? paymentType.name : "Consignment",
                  validator: FormValidators.requiredValidator().call,
                  ontap: null,
                  fillColor: textFieldFillColor,
                  onSaved: (v) {
                    if (!isEdit) {
                      saleNotifier.setPaymentType(const PaymentType(id: 2, name: "Consignment"));
                    }
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Payment Term *",
                  hintText: "Select Payment Term",
                  validator: FormValidators.requiredValidator().call,
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: paymentTerm.name,
                  fillColor: isEdit ? textFieldFillColor : null,
                  ontap: isEdit
                      ? null
                      : () async {
                          await CustomPicker.modalSheetPicker<PaymentTerm>(
                            context: context,
                            onSelect: (v) => saleNotifier.setPaymentTerm(v),
                            display: (v) => v.name,
                            currentValue: paymentTerm,
                            futureProvider: paymentTermsProvider(0),
                            errorCallback: () => ref.invalidate(paymentTermsProvider),
                          );
                        },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Description",
                  maxlines: 4,
                  minlines: 3,
                  initialValue: description,
                  keyboardType: TextInputType.multiline,
                  onSaved: (v) => saleNotifier.setDescription(v ?? ""),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
