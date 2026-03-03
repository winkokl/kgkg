import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tax_type_notifier.g.dart';

@Riverpod(keepAlive: true)
class TaxTypeNotifier extends _$TaxTypeNotifier {
  @override
  AmountOrPercentStatus build() => AmountOrPercentStatus.amount;

  void setType(AmountOrPercentStatus type) => state = type;

  void toggle() {
    state = state == AmountOrPercentStatus.amount ? AmountOrPercentStatus.percent : AmountOrPercentStatus.amount;
  }
}
