import 'package:go_router/go_router.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_bu_search_form.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_customer_search_form.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/presentation/good_requisition_form_screen.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_list_notifier.dart';
import 'package:mgkaung_dms_mobile/features/product/application/product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/async_trip_proposal_product_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/application/trip_sale_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/helpers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/repos/trip_sale_repository.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/show_trip_sale_request_search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_proposal_search_form.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/presentation/widgets/sale/trip_sale_method_widget.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';

class TripSaleInfoForm extends HookConsumerWidget {
  const TripSaleInfoForm({super.key, required this.isEdit});
  final bool isEdit;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(tripSaleFormNotifierProvider.notifier);

    final saleCode = ref.watch(tripSaleFormNotifierProvider.select((value) => value.code));

    final date = ref.watch(tripSaleFormNotifierProvider.select((value) => value.date));

    final tripSaleRequest = ref.watch(tripSaleFormNotifierProvider.select((value) => value.tripSaleRequest));

    final tripProposal = ref.watch(tripSaleFormNotifierProvider.select((value) => value.tripProposal));

    final customer = ref.watch(tripSaleFormNotifierProvider.select((value) => value.customer));

    final businessUnit = ref.watch(tripSaleFormNotifierProvider.select((value) => value.businessUnit));

    final paymentType = ref.watch(tripSaleFormNotifierProvider.select((value) => value.paymentType));

    final paymentTerm = ref.watch(tripSaleFormNotifierProvider.select((value) => value.paymentTerm));

    final description = ref.watch(tripSaleFormNotifierProvider.select((value) => value.description));

    final tripSaleMethod = ref.watch(tripSaleFormNotifierProvider.select((value) => value.tripSaleMethod));

    final warehouse = ref.watch(tripSaleFormNotifierProvider.select((value) => value.warehouse));

    final promotion = ref.watch(tripSaleFormNotifierProvider.select((value) => value.salePromotion));

    // Auto-select current date on first load
    useEffect(() {
      if (!isEdit && date.isEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          saleNotifier.setDate(DateTime.now().toString().split(' ')[0]);
        });
      }
      return null;
    }, []);

    // Auto-select Cash Down payment type on first load
    useEffect(() {
      if (!isEdit && paymentType.id == -1) {
        ref.read(paymentTypesProvider.future).then((paymentTypes) {
          final cashDown = paymentTypes.firstWhere(
            (pt) => pt.name.toLowerCase().contains('cash down') || pt.name.toLowerCase() == 'cash down',
            orElse: () => const PaymentType(),
          );
          if (cashDown.id != -1) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              saleNotifier.setPaymentType(cashDown);
            });
          }
        }).catchError((error) {
          // Silently handle error, user can still manually select
        });
      }
      return null;
    }, []);

    // Auto-select the last trip sale request ID on first load (for ALL tabs)
    // Directly call the API to fetch trip sale requests, regardless of which tab you came from
    useEffect(() {
      if (!isEdit && tripSaleRequest.id == -1) {
        // Show loading while fetching
        WidgetsBinding.instance.addPostFrameCallback((_) {
          LoadingOverlay.show();
        });

        // Directly call the repository to fetch trip sale requests
        final repository = ref.read(tripSaleRepositoryProvider);

        // Get user info for assigned trip filtering
        ref.read(userInfoProvider.future).then((userInfo) {
          final userName = userInfo.userName;

          // Fetch trip user assignments
          repository.getTripUserAssigns(
            pagination: (page: 1, query: userName),
            cancelToken: null,
            allfilter: null,
          ).then((tripUserAssigns) {
            // Find assigned trip IDs
            final userAssignment = tripUserAssigns.where((assign) => assign.userName == userName).firstOrNull;
            final assignedTripIds = userAssignment?.trips.map((trip) => trip.id).toList() ?? [];

            // Fetch trip sale requests with assigned trip filter
            repository.getTripSaleRequests(
              pagination: (page: 1, query: ''),
              cancelToken: null,
              allfilter: null,
              assignedTripIds: assignedTripIds.isEmpty ? [] : assignedTripIds,
            ).then((tripSaleRequests) {
              if (tripSaleRequests.isNotEmpty) {
                final latestTripSaleRequest = tripSaleRequests.first;
                // Fetch full details and set the trip sale request
                repository.getTripSaleRequestById(latestTripSaleRequest.id).then((fullTripSaleRequest) {
                  final products = getModifiedProducts(fullTripSaleRequest, true);
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ref.read(productListNotifierProvider.notifier).setProductList(products);
                    saleNotifier.setTripSaleRequest(fullTripSaleRequest);
                    LoadingOverlay.hide();
                  });
                }).catchError((error) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    LoadingOverlay.hide();
                  });
                  // Silently handle error, user can still manually select
                });
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  LoadingOverlay.hide();
                });
              }
            }).catchError((error) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                LoadingOverlay.hide();
              });
              // Silently handle error, user can still manually select
            });
          }).catchError((error) {
            // If trip user assignment fetch fails, fetch all trip sale requests
            repository.getTripSaleRequests(
              pagination: (page: 1, query: ''),
              cancelToken: null,
              allfilter: null,
              assignedTripIds: [],
            ).then((tripSaleRequests) {
              if (tripSaleRequests.isNotEmpty) {
                final latestTripSaleRequest = tripSaleRequests.first;
                repository.getTripSaleRequestById(latestTripSaleRequest.id).then((fullTripSaleRequest) {
                  final products = getModifiedProducts(fullTripSaleRequest, true);
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ref.read(productListNotifierProvider.notifier).setProductList(products);
                    saleNotifier.setTripSaleRequest(fullTripSaleRequest);
                    LoadingOverlay.hide();
                  });
                }).catchError((error) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    LoadingOverlay.hide();
                  });
                });
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  LoadingOverlay.hide();
                });
              }
            }).catchError((error) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                LoadingOverlay.hide();
              });
            });
          });
        }).catchError((error) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            LoadingOverlay.hide();
          });
          // Silently handle error, user can still manually select
        });
      }
      return null;
    }, []);

    // Auto-select promotion when customer and business unit are selected
    useEffect(() {
      if (!isEdit && customer.id != -1 && businessUnit.wayId != -1 && date.isNotEmpty && promotion.id == -1) {
        ref.read(salePromotionsByCusChannelWayProvider(customer.customerCategory.id, businessUnit.wayId, date).future).then((promotions) {
          if (promotions.isNotEmpty) {
            final firstPromotion = promotions.first;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              saleNotifier.setPromotion(firstPromotion);
              // Loading will be handled by salePromotionNotifierProvider listener
              ref.read(salePromotionNotifierProvider.notifier).getById(firstPromotion.id);
            });
          }
        }).catchError((error) {
          // Silently handle error, user can still manually select
        });
      }
      return null;
    }, [customer.id, businessUnit.wayId, date]);

    ref.listen(asyncTripProposalProductFormNotifierProvider, (previous, state) {
      state.maybeWhen(
        loading: () => LoadingOverlay.show(),
        error: (error, stackTrace) {
          LoadingOverlay.hide();
          CustomDialog.showFailureDialog(title: "Error", msg: error.toString(), onPressed: () => context.pop());
        },
        data: (data) {
          LoadingOverlay.hide();
          final productList = data.fold(() => null, (t) => t);
          final tmpProducts = productList?.map((e) {
            // Use proposalQty if available, otherwise use the existing quantity from product
            final quantity = e.proposalQty ?? e.quantity;
            final currentProductAmount = quantity * e.salePrice;

            // Calculate tax based on type
            final tax = e.secondarySaleTaxType == AmountOrPercentStatus.amount ? e.secondarySaleTax : (e.secondarySaleTax / 100) * currentProductAmount;

            final product = e.copyWith(
              isTrip: true,
              isViewOnly: false,
              availableQty: e.availableQty,
              quantity: quantity,
              amount: currentProductAmount,
              totalAmount: currentProductAmount + tax,
              taxAmount: e.secondarySaleTax,
              taxType: e.secondarySaleTaxType,
              warehouse: warehouse ?? const Warehouse(),
              isPromotionItem: false,
            );
            return product;
          }).toList();

          ref.watch(productListNotifierProvider.notifier).setProductList(tmpProducts ?? []);
        },
        orElse: () {},
      );
    });

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
              //want to modify product list to set isPromotionItem true for promo products in product list
              final promoProductIds = <int>{};
              final Info promoinfo;
              String promoName = "";
              promoName = promotion.promotionName;
              final details = promotion.details ?? <dynamic>[];
              for (final d in details) {
                final pid = (d.productId ?? -1) as int;
                if (pid != -1) promoProductIds.add(pid);
                // promoinfo = d.info ?? '';
              }

              ref.read(productListNotifierProvider.notifier).setProductList(
                    ref
                        .read(productListNotifierProvider)
                        .map((e) => promoProductIds.contains(e.id)
                            ? e.copyWith(
                                isPromotionItem: true,
                                //only if promotion is item back type no promotiontype field
                                itemBackProduct: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.firstWhere((element) => element.itemQty > 0, orElse: () => Info(promotionName: promoName, skulabel: "")) : Info(promotionName: promoName, skulabel: ""),
                                promotionDetail: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()),
                                promotionInfo: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).info.first.copyWith(promotionName: promoName, skulabel: "") : Info(promotionName: promoName, skulabel: ""),
                                promotionSku: promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).sku.isNotEmpty ? promotion.details.firstWhere((element) => element.productId == e.id, orElse: () => const PromotionDetail()).sku.first : const Sku(),
                              )
                            : e)
                        .toList(),
                  );

              print("Product list updated with promotion items");
              print(ref.read(productListNotifierProvider).where((element) => element.isPromotionItem).toList());

              // ref.invalidate(productListNotifierProvider);

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
      onRefresh: () => ref.read(paymentTypesProvider.future),
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
                // TripSaleMethodWidget(isEdit: isEdit),
                const SizedBox(height: 20),
                if (tripSaleMethod == TripSaleMethod.saleRequest) ...[
                  FormTextInput(
                    label: "Trip Sale ID *",
                    hintText: "Select Trip Sale ID",
                    key: UniqueKey(),
                    isReadOnly: true,
                    fillColor: isEdit ? textFieldFillColor : null,
                    initialValue: tripSaleRequest.tripSaleRequestCode,
                    validator: FormValidators.requiredValidator().call,
                    ontap: isEdit
                        ? null
                        : () async {
                            ref.invalidate(searchQueryNotifierProvider('treq'));
                            ref.invalidate(filterApplyProvider('treq'));
                            await showTripSaleRequestSearchForm(context, (v) {
                              saleNotifier.setTripSaleRequest(v);
                            });
                          },
                  ),
                  const SizedBox(height: 20),
                ],
                if (tripSaleMethod == TripSaleMethod.extraSale) ...[
                  FormTextInput(
                    label: "Trip Proposal ID *",
                    hintText: "Select Trip Proposal ID",
                    key: UniqueKey(),
                    isReadOnly: true,
                    fillColor: isEdit ? textFieldFillColor : null,
                    initialValue: tripProposal.tripCode,
                    validator: FormValidators.requiredValidator().call,
                    ontap: isEdit
                        ? null
                        : () async {
                            ref.invalidate(searchQueryNotifierProvider('tp'));
                            ref.invalidate(filterApplyProvider('tp'));
                            await showTripProposalSearchForm(context, (v) {
                              saleNotifier.setTripProposal(v);
                              saleNotifier.setWarehouse(const Warehouse());
                            });
                          },
                  ),
                  const SizedBox(height: 20),
                  if (!isEdit) ...[
                    FormTextInput(
                      label: "Allocation *",
                      hintText: "Select Allocation",
                      key: UniqueKey(),
                      isReadOnly: true,
                      initialValue: warehouse?.name,
                      fillColor: isEdit || tripProposal.id == -1 ? textFieldFillColor : null,
                      validator: FormValidators.requiredValidator().call,
                      ontap: isEdit || tripProposal.id == -1
                          ? null
                          : () async {
                              await CustomPicker.modalSheetPicker<Warehouse>(
                                context: context,
                                onSelect: (v) {
                                  saleNotifier.setWarehouse(v);
                                  ref.read(asyncTripProposalProductFormNotifierProvider.notifier).getTripProposalProduct(tripProposal.id, v.id);
                                },
                                display: (v) => v.name,
                                currentValue: warehouse ?? const Warehouse(),
                                data: tripProposal.tripWarehouseDetails,
                              );
                            },
                    ),
                    const SizedBox(height: 20),
                  ],
                ],
                FormTextInput(
                  label: "Sale Date *",
                  hintText: "Select Date",
                  key: UniqueKey(),
                  isReadOnly: true,
                  fillColor: (tripSaleMethod == TripSaleMethod.saleRequest ? tripSaleRequest.id != -1 : tripProposal.id != -1) || isEdit ? null : textFieldFillColor,
                  initialValue: prettierDateFormat(date),
                  suffixicon: const Icon(Icons.calendar_month_outlined, color: Color(0xffB4BCCC)),
                  validator: FormValidators.requiredValidator().call,
                  ontap: (tripSaleMethod == TripSaleMethod.saleRequest ? tripSaleRequest.id != -1 : tripProposal.id != -1) || isEdit
                      ? () async {
                          final selectedDate = await CustomDatePicker.datePicker(context, "", DateTime.now().toString().split(' ')[0]);
                          if (selectedDate != null) {
                            saleNotifier.setDate(selectedDate);
                          }
                        }
                      : null,
                ),
                const SizedBox(height: 20),
                FormTextInput(
                    label: "Customer Name *",
                    hintText: "Select Customer Name",
                    key: UniqueKey(),
                    isReadOnly: true,
                    initialValue: customer.name,
                    validator: FormValidators.requiredValidator().call,
                    ontap: () async {
                      await showCustomerSearchForm(context, (c) {
                        saleNotifier.setCustomer(c);
                        // Auto-select first business unit if available
                        if (c.businessUnits.isNotEmpty) {
                          saleNotifier.setBusinessUnit(c.businessUnits.first);
                        } else {
                          saleNotifier.setBusinessUnit(const BusinessUnit());
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
                    fillColor: customer.id == -1 ? textFieldFillColor : null,
                    validator: FormValidators.requiredValidator().call,
                    ontap: customer.id == -1
                        ? null
                        : () async {
                            await showBusinessUnitSearchForm(
                              context,
                              (v) => saleNotifier.setBusinessUnit(v),
                              customer.id,
                            );
                          }),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Payment Type *",
                  hintText: "Select Payment Type",
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: paymentType.name,
                  validator: FormValidators.requiredValidator().call,
                  ontap: () async {
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
                  },
                ),
                const SizedBox(height: 20),
                FormTextInput(
                  label: "Payment Term ${paymentType.id == 3 ? '' : '*'}",
                  hintText: "Select Payment Term",
                  validator: paymentType.id == 3 ? null : FormValidators.requiredValidator().call,
                  key: UniqueKey(),
                  isReadOnly: true,
                  initialValue: paymentTerm.name,
                  fillColor: paymentType.id == 3 ? textFieldFillColor : null,
                  ontap: paymentType.id == 3
                      ? null
                      : () async {
                          await CustomPicker.modalSheetPicker<PaymentTerm>(
                            context: context,
                            onSelect: (v) => saleNotifier.setPaymentTerm(v),
                            display: (v) => v.name,
                            currentValue: paymentTerm,
                            futureProvider: paymentTermsProvider(1),
                            errorCallback: () => ref.invalidate(paymentTermsProvider),
                          );
                        },
                ),
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
                              saleNotifier.setPromotion(v);
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
                              // InkWell(
                              //   onTap: () => saleNotifier.setPromotion(const SalePromotion()),
                              //   child: const Icon(Icons.delete_forever, size: 22, color: errorColor),
                              // ),
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
