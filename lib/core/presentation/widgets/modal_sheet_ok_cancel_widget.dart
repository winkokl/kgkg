import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class ModalSheetOkCancelWidget extends StatelessWidget {
  const ModalSheetOkCancelWidget({
    super.key,
    required this.okCallback,
  });

  final VoidCallback okCallback;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Cancel",
                    style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(color: brandColor, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              InkWell(
                onTap: okCallback,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "OK",
                    style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(color: brandColor, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 0)
        ],
      ),
    );
  }
}
