import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/common_name_card.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/show_customer_category_search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerCategoryCard extends ConsumerWidget {
  const CustomerCategoryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(allFiltersProvider.select((value) => value.customerCategory));
    return CommonNameCard(
      title: "Customer Channel Name",
      nameCardOntap: () => showCustomerCategorySearchForm(
        context,
        (c) => ref.read(allFiltersProvider.notifier).setCustomerCategory(c),
      ),
      onClear: () => ref.read(allFiltersProvider.notifier).clearCustomerCategory(),
      currentValueWidget: HeaderText(customer.id != -1 ? customer.name : '-'),
    );
  }
}

// class CustomerCategoryCard extends ConsumerWidget {
//   const CustomerCategoryCard({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final customerTpye =
//         ref.watch(allFiltersProvider.select((value) => value.customerCategory));
//     return FilterCard(
//         child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const HeaderTextLarge("Customer Category"),
//         const SizedBox(height: 24),
//         AsyncValueWidget(
//           value: ref.watch(customerCategorysProvider),
//           data: (data) {
//             return Column(
//               children: data
//                   .map((e) => InkWell(
//                         onTap: () => ref
//                             .read(allFiltersProvider.notifier)
//                             .setCustomerCategory(e),
//                         child: Padding(
//                           padding:
//                               EdgeInsets.only(bottom: data.last == e ? 0 : 30),
//                           child: Row(
//                             children: [
//                               Expanded(child: HeaderTextSmall(e.name)),
//                               SizedBox(
//                                 width: 20,
//                                 height: 20,
//                                 child: Transform.scale(
//                                   scale: 1,
//                                   child: Checkbox(
//                                     activeColor: brandColor,
//                                     value: e.id == customerTpye.id,
//                                     onChanged: (bool? value) {
//                                       ref
//                                           .read(allFiltersProvider.notifier)
//                                           .setCustomerCategory(e);
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ))
//                   .toList(),
//             );
//           },
//           errorCallback: () => ref.invalidate(customerCategorysProvider),
//         )
//       ],
//     ));
//   }
// }
