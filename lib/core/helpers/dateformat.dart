import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';

String dateFormat(DateTime date) => DateFormat(customDateFormat).format(date);

String prettierDateFormat(String? date) {
  if (date == null || date.isEmpty) return "";
  try {
    return DateFormat(customDateFormat).format(DateTime.parse(date));
  } catch (e) {
    return "";
  }
}

String getDueDate(String date, String duration) {
  return dateFormat(DateUtils.dateOnly(
    DateTime.parse(date).add(Duration(days: int.tryParse(duration) ?? 0)),
  ));
}
