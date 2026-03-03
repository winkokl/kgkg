import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_image.dart';

class DeliveryNoteOverViewTab extends ConsumerWidget {
  const DeliveryNoteOverViewTab({
    super.key,
    required this.deliveryNote,
  });

  final DeliveryNote deliveryNote;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: whiteContainerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoCard(title: "Delivery Note ID", value: deliveryNote.goodsDeliveryNoteCode),
                  InfoCard(title: "Issue Date", value: prettierDateFormat(deliveryNote.issueDate)),
                  InfoCard(title: "Delivery Date", value: prettierDateFormat(deliveryNote.deliveryDate)),
                  InfoCard(title: "Delivery Complete Date", value: prettierDateFormat(deliveryNote.deliveryCompleteDate)),
                  InfoCard(title: "Status", value: deliveryNote.status.name, textColor: deliveryNote.status.textColor),
                  InfoCard(title: "Reference ID", value: deliveryNote.referenceId),
                  InfoCard(title: "Invoice Date", value: prettierDateFormat(deliveryNote.invoiceDate)),
                  InfoCard(title: "Customer Name", value: deliveryNote.customerFirstName),
                  InfoCard(title: "Customer Address", value: deliveryNote.customerAddress),
                  InfoCard(title: "Customer Phone", value: deliveryNote.customerPhone),
                  InfoCard(title: "Business Unit Name", value: deliveryNote.businessUnitName),
                  InfoCard(title: "Business Unit Address", value: deliveryNote.businessUnitAddress),
                  InfoCard(title: "Way Name", value: deliveryNote.wayName),
                  InfoCard(title: "Description", value: deliveryNote.description),
                  if (deliveryNote.signUrl.isNotEmpty) SignatureImage(imageUrl: deliveryNote.signUrl),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
