import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_text_span.dart';

/// Generic radio button selection widget for Enums
class EnumRadioSelector<T> extends StatelessWidget {
  const EnumRadioSelector({
    super.key,
    required this.title,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
    required this.isDisabled,
  });

  final String title;
  final List<T> options;
  final T selectedValue;
  final ValueChanged<T> onChanged;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          CustomTextSpan(
            textString: title,
            textColor: secondaryTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: options.map((option) {
            return GestureDetector(
              onTap: isDisabled ? null : () => onChanged(option),
              child: SizedBox(
                width: 150,
                child: Row(
                  children: [
                    Radio<T>(
                      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                      value: option,
                      groupValue: selectedValue,
                      onChanged: isDisabled ? null : (val) => onChanged(val as T),
                    ),
                    Expanded(child: Text(option.toString().split('.').last)), // Extracts enum name
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
