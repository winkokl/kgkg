// import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
// import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
// import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
// import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
// import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class InvoiceCard extends ConsumerWidget {
//   const InvoiceCard({
//     super.key,
//     required this.title,
//     required this.date,
//     required this.status,
//     required this.ontap,
//   });
//   final String title;
//   final String date;
//   final PaymentStatus status;
//   final VoidCallback ontap;
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ListTileCard(
//       ontap: ontap,
//       titleWidget: HeaderText(title),
//       subtitleWidgets: [
//         const SizedBox(height: 6),
//         HeaderTextSmall(date, color: brandColor),
//       ],
//       trailingWidget: DecoratedContainer(
//         height: 25,
//         width: 80,
//         color: status.fillColor,
//         border: Border.all(color: status.textColor),
//         radius: 6,
//         child: HeaderTextSmall(
//           status.name,
//           color: status.textColor,
//         ),
//       ),
//     );
//   }
// }
