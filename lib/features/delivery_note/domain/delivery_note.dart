import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';

part 'delivery_note.freezed.dart';

@freezed
class DeliveryNote with _$DeliveryNote implements PagingDataItem {
  const factory DeliveryNote({
    @Default(-1) int id,
    @Default(-1) int goodsRequestNoteId,
    @Default("") String goodsDeliveryNoteCode,
    @Default("") String issueDate,
    @Default("") String deliveryDate,
    String? deliveryCompleteDate,
    @Default(DeliveryNoteStatus.none) DeliveryNoteStatus status,
    @Default("") String referenceId,
    @Default("") String invoiceDate,
    @Default("") String customerFirstName,
    @Default("") String customerAddress,
    @Default("") String customerLastName,
    @Default("") String customerPhone,
    @Default("") String businessUnitName,
    @Default("") String businessUnitAddress,
    @Default("") String description,
    @Default("") String signUrl,
    @Default([]) List<Product> products,
    @Default("") String wayName,
  }) = _DeliveryNote;
}
