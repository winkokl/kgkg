import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_bu_search_form.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_way_cus_form.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/secondary_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleInfoForm extends HookConsumerWidget {
  const SecondarySaleInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(secondarySaleFormNotifierProvider.notifier);

    final saleCode = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.code));

    final date = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.date));

    final deliveryDate = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.deliveryDate));

    final saleType = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.saleType));

    final customer = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.customer));

    final businessUnit = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.businessUnit));

    final paymentType = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.paymentType));

    final paymentTerm = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.paymentTerm));

    final description = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.description));

    final promotion = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.salePromotion));

    useEffect(() {
      if (saleType.id != -1) return;
      Future.microtask(() async {
        final saleTypes = await ref.read(saleTypesProvider.future);
        if (saleTypes.isNotEmpty) {
          saleNotifier.setSaleType(saleTypes.first);
        }
      });
      return;
    }, [ref.watch(saleTypesProvider)]);

    useEffect(() {
      final isNewCustomer = customer.customerType.name == "New";
      if (isNewCustomer && paymentType.id == -1) {
        Future.microtask(() async {
          try {
            final paymentTypes = await ref.read(paymentTypesProvider.future);
            final cashdownType = paymentTypes.firstWhere(
              (element) => element.name.toLowerCase() == "cashdown",
              orElse: () => const PaymentType(),
            );
            if (cashdownType.id != -1) {
              saleNotifier.setPaymentType(cashdownType);
            }
          } catch (_) {
            // Handle error if needed
          }
        });
      }
      return null;
    }, [customer.customerType.name]);

    ref.listen(salePromotionNotifierProvider, (previous, state) {
      state.unwrapPrevious().maybeWhen(
            orElse: () {},
            loading: () => LoadingOverlay.show(),
            data: (data) {
              LoadingOverlay.hide();
              final promotion = data.fold(() => null, (t) => t);
              if (promotion == null) {
                CustomDialog.showFailureDialog(
                  title: "Error",
                  msg: "No promotion details available",
                  onPressed: () => context.pop(),
                );
                return;
              }
              ref.invalidate(productListNotifierProvider);

              saleNotifier.setPromotion(promotion);
            },
            error: (e, stack) {
              LoadingOverlay.hide();
              CustomDialog.showFailureDialog(
                title: "Error",
                msg: "Cannot retreive promotion data.",
                onPressed: () => context.pop(),
              );
            },
          );
    });

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(paymentTypesProvider);
        ref.invalidate(saleTypesProvider);
        await Future.wait([
          ref.read(paymentTypesProvider.future),
          ref.read(saleTypesProvider.future),
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
                FormTextInput(
                  label: "Sale Date *",
                  hintText: "Select Date",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: prettierDateFormat(date),
                  suffixicon: const Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xffB4BCCC),
                  ),
                  validator: FormValidators.requiredValidator().call,
                  ontap: () async {
                    final selectedDate = await CustomDatePicker.datePicker(context, "");
                    if (selectedDate != null) {
                      saleNotifier.setDate(selectedDate);
                      saleNotifier.setDeliveryDate("");
                    }
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Delivery Date *",
                  hintText: "Select Date",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: prettierDateFormat(deliveryDate),
                  suffixicon: const Icon(
                    Icons.calendar_month_outlined,
                    color: Color(0xffB4BCCC),
                  ),
                  validator: FormValidators.requiredValidator().call,
                  ontap: () async {
                    final selectedDate = await CustomDatePicker.datePicker(context, "", date);
                    if (selectedDate != null) {
                      saleNotifier.setDeliveryDate(selectedDate);
                    }
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Sale Type",
                  hintText: "Select Sale Type",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: saleType.name,
                  validator: FormValidators.requiredValidator().call,
                  ontap: () async {
                    await CustomPicker.modalSheetPicker<SaleType>(
                      context: context,
                      onSelect: (v) {
                        saleNotifier.setSaleType(v);
                      },
                      display: (v) => v.name,
                      currentValue: saleType,
                      futureProvider: saleTypesProvider,
                      errorCallback: () => ref.invalidate(saleTypesProvider),
                    );
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                    label: "Customer Name *",
                    hintText: "Select Customer Name",
                    key: UniqueKey(),
                    isReadOnly: true,
                    initialValue: customer.name,
                    validator: FormValidators.requiredValidator().call,
                    fillColor: isEdit ? textFieldFillColor : null,
                    ontap: isEdit
                        ? null
                        : () async {
                            await showWayCustomerSearchForm(context, (c) async {
                              print(c);
                              saleNotifier.setCustomer(c);
                              saleNotifier.setBusinessUnit(const BusinessUnit());
                              // Set default payment type based on customer type
                              if (c.customerType.name == "New") {
                                try {
                                  final paymentTypes = await ref.watch(paymentTypesProvider.future);
                                  final cashdownType = paymentTypes.firstWhere(
                                    (element) => element.name.toLowerCase() == "cashdown",
                                    orElse: () => const PaymentType(),
                                  );
                                  saleNotifier.setPaymentType(cashdownType);
                                } catch (_) {
                                  saleNotifier.setPaymentType(const PaymentType());
                                  ref.invalidate(paymentTypesProvider);
                                }
                                saleNotifier.setPaymentTerm(const PaymentTerm());
                              } else if (c.customerType.id == 2) {
                                // for existing customer set default payment type to credit
                                try {
                                  final paymentTypes = await ref.watch(paymentTypesProvider.future);
                                  saleNotifier.setPaymentType(paymentTypes.where((element) => element.id == 1).firstOrNull ?? const PaymentType());
                                } catch (_) {
                                  ref.invalidate(paymentTypesProvider);
                                }
                                saleNotifier.setPaymentTerm(const PaymentTerm());
                              } else {
                                saleNotifier.setPaymentType(const PaymentType());
                                saleNotifier.setPaymentTerm(const PaymentTerm());
                              }
                            });
                          }),
                const SizedBox(height: 20),
                FormTextInput(
                    label: "Business Unit *",
                    hintText: "Select Business Name",
                    key: UniqueKey(),
                    isReadOnly: true,
                    initialValue: businessUnit.name,
                    validator: FormValidators.requiredValidator().call,
                    fillColor: customer.id == -1 || isEdit ? textFieldFillColor : null,
                    ontap: customer.id == -1 || isEdit
                        ? null
                        : () async {
                            await showBusinessUnitSearchForm(
                              context,
                              (v) => saleNotifier.setBusinessUnit(v),
                              customer.id,
                            );
                          }),
                const SizedBox(height: 20),
                Consumer(
                  builder: (context, ref, _) {
                    final customer = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.customer));
                    final paymentType = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.paymentType));
                    final paymentTerm = ref.watch(secondarySaleFormNotifierProvider.select((value) => value.paymentTerm));
                    final saleNotifier = ref.read(secondarySaleFormNotifierProvider.notifier);

                    final isNewCustomer = customer.customerType.name == "New";
                    final isCashOnDelivery = paymentType.id == 3;

                    return Column(
                      children: [
                        FormTextInput(
                          label: "Payment Type *",
                          hintText: isNewCustomer
                              ? "Automatically set for new customers"
                              : isCashOnDelivery
                                  ? "Not required for Cash on Delivery"
                                  : "Select Payment Type",
                          key: ValueKey('payment_type_${isNewCustomer}_$isCashOnDelivery'),
                          isReadOnly: true, // Always readOnly for visual indication
                          initialValue: paymentType.name.isEmpty && isNewCustomer ? "Cashdown" : paymentType.name,
                          fillColor: textFieldFillColor, // Always show as disabled
                          validator: (isNewCustomer || isCashOnDelivery) ? null : FormValidators.requiredValidator().call, // Don't validate if not applicable
                          ontap: () async {
                            // Always defined, logic inside
                            if (isNewCustomer || isCashOnDelivery) {
                              // Show info dialog instead of allowing selection
                              String message = isNewCustomer ? 'Payment type is automatically set to Cashdown for new customers' : 'Payment type is not required for Cash on Delivery';
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(message),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            } else {
                              // Only open picker if it's a valid action
                              await CustomPicker.modalSheetPicker<PaymentType>(
                                context: context,
                                onSelect: (v) {
                                  saleNotifier.setPaymentType(v);
                                  saleNotifier.setPaymentTerm(const PaymentTerm());
                                },
                                display: (v) => v.name,
                                currentValue: paymentType,
                                futureProvider: paymentTypesProvider,
                                errorCallback: () => ref.invalidate(paymentTypesProvider),
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        FormTextInput(
                          label: "Payment Term${!isNewCustomer && !isCashOnDelivery ? ' *' : ''}",
                          hintText: isNewCustomer
                              ? "Not available for new customers"
                              : isCashOnDelivery
                                  ? "Not required for Cash on Delivery"
                                  : "Select Payment Term",
                          key: ValueKey('payment_term_${isNewCustomer}_$isCashOnDelivery'),
                          isReadOnly: true, // Always readOnly for visual indication
                          initialValue: (isNewCustomer || isCashOnDelivery) ? "" : paymentTerm.name,
                          fillColor: textFieldFillColor, // Always show as disabled if not applicable
                          validator: (isNewCustomer || isCashOnDelivery) ? null : FormValidators.requiredValidator().call,
                          ontap: () async {
                            // Always defined, logic inside
                            if (isNewCustomer || isCashOnDelivery) {
                              // Show info message
                              String message = isNewCustomer ? 'Payment term is not available for new customers' : 'Payment term is not required for Cash on Delivery';
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(message),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            } else {
                              // Only open picker if it's a valid action
                              await CustomPicker.modalSheetPicker<PaymentTerm>(
                                context: context,
                                onSelect: (v) => saleNotifier.setPaymentTerm(v),
                                display: (v) => v.name,
                                currentValue: paymentTerm,
                                futureProvider: paymentTermsProvider(1),
                                errorCallback: () => ref.invalidate(paymentTermsProvider),
                              );
                            }
                          },
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Promotion",
                  hintText: "Select Promotion",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: promotion.promotionName,
                  fillColor: customer.id == -1 || businessUnit.wayId == -1 ? textFieldFillColor : null,
                  ontap: customer.id == -1 || businessUnit.wayId == -1
                      ? null
                      : () async {
                          await CustomPicker.modalSheetPicker<SalePromotion>(
                            context: context,
                            onSelect: (v) async {
                              ref.read(salePromotionNotifierProvider.notifier).getById(v.id);
                            },
                            display: (v) => v.promotionName,
                            currentValue: promotion,
                            futureProvider: salePromotionsByCusChannelWayProvider(customer.customerCategory.id, businessUnit.wayId, date),
                            errorCallback: () => ref.invalidate(salePromotionsByCusChannelWayProvider),
                          );
                        },
                  suffixicon: (promotion.id != -1)
                      ? SizedBox(
                          width: 60,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => saleNotifier.setPromotion(const SalePromotion()),
                                child: const Icon(Icons.delete_forever, size: 22, color: errorColor),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () => ref.watch(goRouterProvider).push(SalePromotionDetailRoute(promotion.id).location),
                                child: const Icon(Icons.info_outline, size: 24, color: brandColor),
                              ),
                            ],
                          ),
                        )
                      : null,
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
