import 'package:mgkaung_dms_mobile/features/core/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';

class FormTextInput extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextAlign? textAlign;
  final Widget? suffixicon;
  final Widget? prefixicon;
  final bool? secure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? initialValue;
  final Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormatters;
  final bool isReadOnly;
  final int? maxlines;
  final int? minlines;
  final TextInputType? keyboardType;
  final Function()? ontap;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Color borderColor;
  final Color focusBorderColor;
  final TextInputAction textInputAction;
  final Color? fillColor;
  final TextStyle? textStyle;
  final bool autoFocus;
  final AutovalidateMode? autoValidateMode;

  const FormTextInput({
    super.key,
    this.label,
    this.hintText,
    this.textAlign,
    this.suffixicon,
    this.prefixicon,
    this.validator,
    this.controller,
    this.secure,
    this.initialValue,
    this.inputFormatters,
    this.onSaved,
    this.isReadOnly = false,
    this.keyboardType,
    this.maxlines,
    this.minlines,
    this.ontap,
    this.onSubmitted,
    this.onChanged,
    this.onEditingComplete,
    this.textInputAction = TextInputAction.next,
    this.borderColor = const Color(0xffE2E4E8),
    this.focusBorderColor = const Color(0xffE2E4E8),
    this.fillColor,
    this.autoFocus = false,
    this.textStyle = const TextStyle(
      color: black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    this.autoValidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text.rich(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            CustomTextSpan(
              textString: label!.contains("*") ? label!.split('*')[0] : label!,
              textColor: secondaryTextColor,
              fontWeight: FontWeight.w500,
              textSpanChildren: (label!.contains("*")) ? [CustomTextSpan(textString: '*', textColor: errorColor)] : null,
            ),
          ),
          // Text(
          //   label!,
          //   style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
          //     color: secondaryTextColor,
          //     fontWeight: FontWeight.w500,
          //   ),
          //   overflow: TextOverflow.ellipsis,
          //   maxLines: 1,
          // ),
          const SizedBox(height: 4),
        ],
        TextFormField(
          autofocus: autoFocus,
          maxLines: maxlines,
          minLines: minlines,
          textInputAction: textInputAction,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          onTap: ontap,
          autovalidateMode: autoValidateMode,
          onSaved: onSaved,
          readOnly: isReadOnly,
          initialValue: initialValue,
          textAlign: textAlign ?? TextAlign.start,
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          style: textStyle,
          obscureText: secure == true,
          decoration: InputDecoration(
            fillColor: fillColor,
            prefixIconColor: iconColor,
            prefixIcon: prefixicon != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: prefixicon,
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(minHeight: 24, minWidth: 24),
            suffixIconConstraints: const BoxConstraints(minHeight: 24, minWidth: 24),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: focusBorderColor, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: focusBorderColor, width: 1.5),
            ),
            hintText: hintText,
            // suffix: ,
            suffixIcon: suffixicon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: suffixicon,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
