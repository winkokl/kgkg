// import 'package:mgkaung_dms_mobile/core/constants.dart';
// import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
// import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
// import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class ConsignmentApprovalOverViewTab extends ConsumerWidget {
//   const ConsignmentApprovalOverViewTab(
//       {super.key, required this.consignmentapproval});
//   final ConsignmentApproval consignmentapproval;
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return SingleChildScrollView(
//       physics: const BouncingScrollPhysics(),
//       child: Column(
//         children: [
//           Container(
//             decoration: whiteContainerDecoration,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//               child: Column(
//                 children: [
//                   InfoCard(
//                       title: "Consignment Order ID",
//                       value: consignmentapproval.code),
//                   InfoCard(
//                       title: "Consignment Approval Date",
//                       value: prettierDateFormat(consignmentapproval.date)),
//                   InfoCard(
//                       title: "Customer Name",
//                       value: consignmentapproval.customerName),
//                   InfoCard(
//                       title: "Payment Type",
//                       value: consignmentapproval.paymentType),
//                   InfoCard(
//                       title: "Payment Term",
//                       value: consignmentapproval.paymentTerm),
//                   InfoCard(
//                     title: "Status",
//                     value: consignmentapproval.status.name,
//                     textColor: consignmentapproval.status.textColor,
//                   ),
//                   InfoCard(
//                       title: "Reason", value: consignmentapproval.rejectReason),
//                   InfoCard(
//                       title: "Description",
//                       value: consignmentapproval.description),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
