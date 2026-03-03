import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/features/customer/application/providers.dart';

Future<void> showBusinessUnitSearchForm(
  BuildContext context,
  Function(BusinessUnit c) onSelect,
  int customerId,
) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: true,
    backgroundColor: bgColor,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    builder: (context) => GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.75,
        minChildSize: 0.75,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      const HeaderText("Select BusinessUnit", color: brandColor),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 0.6),
                const SizedBox(height: 16),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Consumer(
                    builder: (context, ref, child) {
                      String query = '';
                      return StatefulBuilder(builder: (context, mysetState) {
                        return AsyncValueWidget(
                          value: ref.watch(customerByIdProvider(customerId)),
                          data: (data) {
                            List<BusinessUnit> filteredBusinessUnits = query.isEmpty
                                ? data.businessUnits
                                : data.businessUnits
                                    .where(
                                      (businessUnit) => businessUnit.name.toLowerCase().contains(
                                            query.toLowerCase(),
                                          ),
                                    )
                                    .toList();
                            return Column(
                              children: [
                                FormTextInput(
                                  prefixicon: const Icon(Icons.search),
                                  hintText: "Search",
                                  borderColor: bgWhite,
                                  focusBorderColor: bgWhite,
                                  onEditingComplete: () {
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  },
                                  onChanged: (text) => mysetState(() {
                                    query = text;
                                  }),
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: ListView.builder(
                                      itemCount: filteredBusinessUnits.length,
                                      itemBuilder: (c, index) {
                                        return InkWell(
                                            onTap: () {
                                              onSelect.call(filteredBusinessUnits[index]);
                                              Navigator.of(context).pop();
                                            },
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                HeaderText(filteredBusinessUnits[index].name),
                                                const SizedBox(height: 16),
                                                const Divider(height: 0),
                                                const SizedBox(height: 16),
                                              ],
                                            ));
                                      }),
                                ),
                              ],
                            );
                          },
                          errorCallback: () => ref.invalidate(customerByIdProvider(customerId)),
                        );
                      });
                    },
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
