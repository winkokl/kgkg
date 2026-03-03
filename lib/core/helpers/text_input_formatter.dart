import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:flutter/services.dart';

class MaxDecimalValueInputFormatter extends TextInputFormatter {
  final double maxValue;

  MaxDecimalValueInputFormatter(this.maxValue);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // Allow only valid decimal numbers
    final newText = newValue.text;
    final isValid = textInputRegex.hasMatch(newText);
    if (!isValid) {
      return oldValue;
    }

    // Ensure the value does not exceed the maximum
    final doubleValue = double.tryParse(newText);
    if (doubleValue == null || doubleValue > maxValue) {
      return oldValue;
    }

    return newValue;
  }
}

List<TextInputFormatter> textInputFormats(AmountOrPercentStatus? type) {
  if (type == null) return [FilteringTextInputFormatter.digitsOnly];
  return type == AmountOrPercentStatus.amount
      ? [FilteringTextInputFormatter.digitsOnly]
      : [
          FilteringTextInputFormatter.allow(textInputRegex),
          MaxDecimalValueInputFormatter(99), // Ensure the value does not exceed 99
        ];
}
