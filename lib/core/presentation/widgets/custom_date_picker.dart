import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';

import 'modal_sheet_ok_cancel_widget.dart';

typedef ConfirmFunction = void Function(int val);

class CustomDatePicker {
  static Future<String?> datePicker(BuildContext context, String currentVal, [String? checkDate, String? checkDate2]) async {
    final size = MediaQuery.of(context).size;
    return await showCupertinoModalPopup(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        String currentDate = currentVal == "" ? dateFormat(DateTime.now()) : currentVal;
        final initialDate = DateTime.parse(currentDate);
        final minDate = checkDate == null ? null : DateTime.tryParse(checkDate);
        final maxDate = checkDate2 == null ? null : DateTime.tryParse(checkDate2);

        return StatefulBuilder(builder: (context, setState) {
          return Container(
            color: Colors.white,
            height: size.height * 0.27,
            child: Column(
              children: [
                ModalSheetOkCancelWidget(
                  okCallback: () => Navigator.of(context).pop(currentDate),
                ),
                Expanded(
                  child: CupertinoDatePicker(
                    maximumYear: DateTime.now().year + 8,
                    minimumDate: minDate,
                    maximumDate: maxDate,
                    onDateTimeChanged: (DateTime val) {
                      SystemSound.play(SystemSoundType.click);
                      HapticFeedback.lightImpact();
                      setState(() {
                        currentDate = dateFormat(val);
                      });
                    },
                    initialDateTime: minDate ?? initialDate,
                    mode: CupertinoDatePickerMode.date,
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  static Future<DateTime?> showMaterialDate(BuildContext context) async {
    return showDatePicker(
      context: context,
      builder: (context, child) => child!,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
    );
  }
}
