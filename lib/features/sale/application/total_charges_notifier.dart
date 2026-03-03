import 'package:mgkaung_dms_mobile/features/sale/domain/total_charges.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'total_charges_notifier.g.dart';

@Riverpod(keepAlive: true)
class TotalChargesFormNotifier extends _$TotalChargesFormNotifier {
  @override
  TotalCharges build() => const TotalCharges();

  void setTotalCharges(TotalCharges val) => state = val;
}
