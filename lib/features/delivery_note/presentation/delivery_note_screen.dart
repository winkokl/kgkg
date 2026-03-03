import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/common_paging_view.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/features/core/widgets/custom_card.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/search_text_field.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/application/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeliveryNoteScreen extends HookConsumerWidget {
  const DeliveryNoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Delivery Note"), centerTitle: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SearchTextField(
              filterControl: FilterControl(hasCustomer: true, hasDate: true, hasDeliveryNoteStatus: true),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: CommonPagingView(
              provider: paginatedDeliveryNoteNotifierProvider,
              contentBuilder: (data, endItem) => ListView.builder(
                key: const PageStorageKey('pageBasedView'),
                itemCount: data.items.length + (endItem != null ? 1 : 0),
                itemBuilder: (context, index) {
                  if (endItem != null && index == data.items.length) {
                    return endItem;
                  }
                  final deliveryNote = data.items[index];
                  return CustomCard(
                    title: deliveryNote.goodsDeliveryNoteCode,
                    subtitle: deliveryNote.referenceId,
                    date: prettierDateFormat(deliveryNote.issueDate),
                    statusWidget: DecoratedContainer(
                      height: 25,
                      width: 80,
                      color: deliveryNote.status.fillColor,
                      border: Border.all(color: deliveryNote.status.textColor),
                      radius: 6,
                      child: HeaderTextSmall(
                        deliveryNote.status.name,
                        color: deliveryNote.status.textColor,
                      ),
                    ),
                    ontap: () => ref.watch(goRouterProvider).push(
                          DeliveryNoteDetailRoute().location,
                          extra: deliveryNote,
                        ),
                  );
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
