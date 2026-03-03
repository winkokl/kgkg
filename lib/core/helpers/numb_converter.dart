import 'package:intl/intl.dart';

final formatter = NumberFormat.decimalPatternDigits(
  locale: 'en_us',
  decimalDigits: 2,
);

extension StringToDouble on String {
  double toDouble() {
    return double.tryParse(replaceAll(',', '')) ?? 0;
  }
}

double roundToNextHundred(double amount) {
  return ((amount.round() + 99) ~/ 100) * 100;
}


// String numToString(int val) {
//   final number =
//       val % 1 == 0 ? val.toInt() : double.parse(val.toStringAsFixed(2));

//   return formatter.format(number);
// }
