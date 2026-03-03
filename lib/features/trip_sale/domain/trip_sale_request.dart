import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sale_request.freezed.dart';

@freezed
class TripSaleRequest with _$TripSaleRequest implements PagingDataItem {
  const factory TripSaleRequest({
    @Default(-1) int id,
    @Default("") String tripSaleRequestCode,
    @Default("") String tripName,
    @Default("") String date,
    @Default(TripSaleRequestStatus.all) TripSaleRequestStatus status,
    @Default(Warehouse()) Warehouse warehouse,
    @Default("") String deleteReason,
    @Default("") String remark,
    @Default("") String description,
    @Default([]) List<Product> products,
    @Default(-1) int createdBy,
    @Default(-1) int tripId,
  }) = _TripSaleRequest;
}
