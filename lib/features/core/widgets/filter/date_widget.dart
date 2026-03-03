import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.value,
    required this.ontap,
  });
  final String value;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: whiteContainerDecoration.copyWith(
            border: Border.all(
          color: const Color(0xffE2E4E8),
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            children: [
              const Icon(
                Icons.calendar_month_outlined,
                size: 24,
                color: Color(0xffB3BFD6),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: HeaderTextSmall(
                    value,
                    color: const Color(0xff484848),
                  ),
                ),
              ),
              const Icon(
                Icons.expand_more_outlined,
                size: 24,
                color: Color(0xffB3BFD6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
