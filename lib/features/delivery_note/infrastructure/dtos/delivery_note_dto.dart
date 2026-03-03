import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';

part 'delivery_note_dto.freezed.dart';
part 'delivery_note_dto.g.dart';

@freezed
class DeliveryNoteDTO with _$DeliveryNoteDTO {
  const DeliveryNoteDTO._();

  const factory DeliveryNoteDTO({
    @JsonKey(name: 'goods_delivery_note_id') @Default(-1) int goodsDeliveryNoteId,
    @JsonKey(name: 'goods_request_note_id') @Default(-1) int goodsRequestNoteId,
    @JsonKey(name: 'goods_delivery_note_code') @Default("") String goodsDeliveryNoteCode,
    @JsonKey(name: 'delivery_note_date') @Default("") String issueDate,
    @JsonKey(name: 'delivery_date') @Default("") String deliveryDate,
    @JsonKey(name: 'delivery_complete_date') String? deliveryCompleteDate,
    @Default(0) int status,
    @JsonKey(name: 'reference_id') @Default("") String referenceId,
    @JsonKey(name: 'invoice_date') @Default("") String invoiceDate,
    @JsonKey(name: 'customer_first_name') @Default("") String customerFirstName,
    @JsonKey(name: 'customer_address') @Default("") String customerAddress,
    @JsonKey(name: 'customer_last_name') String? customerLastName,
    @JsonKey(name: 'customer_phone') @Default("") String customerPhone,
    @JsonKey(name: 'business_unit_name') @Default("") String businessUnitName,
    @JsonKey(name: 'business_unit_address') @Default("") String businessUnitAddress,
    @JsonKey(name: 'product_detail') @Default([]) List<ProductDTO> productDtos,
    @JsonKey(name: 'way_name') @Default('') String wayName,
    @Default("") String description,
    @JsonKey(name: 'signature') @Default("") String signUrl,
  }) = _DeliveryNoteDTO;

  factory DeliveryNoteDTO.fromJson(Map<String, dynamic> json) => _$DeliveryNoteDTOFromJson(json);

  DeliveryNote toDomain() => DeliveryNote(
        id: goodsDeliveryNoteId,
        goodsRequestNoteId: goodsRequestNoteId,
        goodsDeliveryNoteCode: goodsDeliveryNoteCode,
        issueDate: issueDate,
        deliveryDate: deliveryDate,
        deliveryCompleteDate: deliveryCompleteDate,
        status: DeliveryNoteStatus.fromId(status),
        referenceId: referenceId,
        invoiceDate: invoiceDate,
        customerFirstName: "$customerFirstName${customerLastName == null ? '' : customerLastName!}",
        customerAddress: customerAddress,
        customerPhone: customerPhone,
        businessUnitName: businessUnitName,
        businessUnitAddress: businessUnitAddress,
        signUrl: signUrl,
        description: description,
        products: productDtos.map((e) => e.toDomain()).toList(),
        wayName: wayName,
      );
}
