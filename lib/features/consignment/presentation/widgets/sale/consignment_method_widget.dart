import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/enum_radio_selector.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_form_notifier.dart';

// class ConsignmentMethodWidget extends ConsumerWidget {
//   const ConsignmentMethodWidget({super.key, required this.isEdit});
//   final bool isEdit;
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final saleNotifier = ref.read(consignmentFormNotifierProvider.notifier);

//     final consignmentMethod = ref.watch(consignmentFormNotifierProvider.select((value) => value.consignmentMethod));

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text.rich(
//           overflow: TextOverflow.ellipsis,
//           maxLines: 1,
//           CustomTextSpan(
//             textString: "Consignment Method",
//             textColor: secondaryTextColor,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(height: 4),
//         Row(
//           children: [
//             GestureDetector(
//               onTap: isEdit ? null : () => saleNotifier.setConsignmentMethod(ConsignmentMethod.stockRefill),
//               child: SizedBox(
//                 width: 120,
//                 child: Row(
//                   children: [
//                     Radio<ConsignmentMethod>(
//                       visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
//                       value: ConsignmentMethod.stockRefill,
//                       groupValue: consignmentMethod,
//                       onChanged: (index) {},
//                     ),
//                     Expanded(child: Text(ConsignmentMethod.stockRefill.name)),
//                   ],
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: isEdit ? null : () => saleNotifier.setConsignmentMethod(ConsignmentMethod.terminationProcess),
//               child: SizedBox(
//                 width: 150,
//                 child: Row(
//                   children: [
//                     Radio<ConsignmentMethod>(
//                       visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
//                       value: ConsignmentMethod.terminationProcess,
//                       groupValue: consignmentMethod,
//                       onChanged: (index) {},
//                     ),
//                     Expanded(child: Text(ConsignmentMethod.terminationProcess.name)),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

class ConsignmentMethodWidget extends ConsumerWidget {
  const ConsignmentMethodWidget({super.key, required this.isEdit});
  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saleNotifier = ref.read(consignmentFormNotifierProvider.notifier);
    final consignmentMethod = ref.watch(
      consignmentFormNotifierProvider.select((value) => value.consignmentMethod),
    );

    return EnumRadioSelector<ConsignmentMethod>(
      title: "Consignment Method",
      options: ConsignmentMethod.values,
      selectedValue: consignmentMethod,
      onChanged: (method) => saleNotifier.setConsignmentMethod(method),
      isDisabled: isEdit,
    );
  }
}
