import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';

part 'customer_category.freezed.dart';

@freezed
class CustomerCategory with _$CustomerCategory implements PagingDataItem {
  const factory CustomerCategory({
    @Default(-1) int id,
    @Default("") String name,
    @Default(-1) int status,
  }) = _CustomerCategory;
}
