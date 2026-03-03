import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onPressed,
    required this.label,
    this.backgroundColor,
    this.foregroundColor = bgWhite,
    this.icon,
    this.borderColor,
  });
  final VoidCallback? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color foregroundColor;
  final Color? borderColor;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      // alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none, borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(width: 10),
                  Text(
                    label,
                    style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      color: foregroundColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            : Text(
                label,
                style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
                  fontSize: 14,
                  color: foregroundColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          "Refresh",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// class CancelButton extends StatelessWidget {
//   const CancelButton({
//     super.key,
//     this.onPressed,
//     required this.label,
//   });
//   final VoidCallback? onPressed;
//   final String label;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.grey.shade200,
//         elevation: 4,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0), // Button border radius
//         ),
//       ),
//       child: Container(
//         height: 35,
//         alignment: Alignment.center,
//         child: Text(label, style: CustomTheme.appTheme.textTheme.bodySmall),
//       ),
//     );
//     // return ElevatedButton(
//     //   style: ButtonStyle(
//     //     textStyle:
//     //         MaterialStateProperty.all(CustomTheme.appTheme.textTheme.bodySmall),
//     //     // foregroundColor:
//     //     //     MaterialStateProperty.all(const Color(0xff000000).withOpacity(0.5)),
//     //     backgroundColor: MaterialStateProperty.all(Colors.transparent),
//     //     elevation: MaterialStateProperty.all(0),
//     //   ),
//     //   onPressed: onPressed,
//     //   child: Container(
//     //     height: 35,
//     //     alignment: Alignment.center,
//     //     child: Text(label, style: CustomTheme.appTheme.textTheme.bodySmall),
//     //   ),
//     // );
//   }
// }

// class OutlineIconButton extends StatelessWidget {
//   const OutlineIconButton({
//     super.key,
//     required this.color,
//     this.onPressed,
//     required this.label,
//     required this.icon,
//   });
//   final Color color;
//   final String label;
//   final VoidCallback? onPressed;
//   final Icon icon;

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton.icon(
//       onPressed: onPressed,
//       style: OutlinedButton.styleFrom(
//         foregroundColor: Colors.blue,
//         disabledForegroundColor: Colors.transparent, // Text color when pressed
//         side: const BorderSide(color: Colors.transparent), // Border color
//       ),
//       icon: icon, // Excel icon
//       label: Text(label,
//           style: CustomTheme.appTheme.textTheme.bodySmall!
//               .copyWith(color: Colors.blue)),
//     );
//     // return InkWell(
//     //   onTap: onPressed,
//     //   child: Container(
//     //     padding: const EdgeInsets.symmetric(vertical: 7),
//     //     decoration: BoxDecoration(
//     //       borderRadius: BorderRadius.circular(4),
//     //       border: Border.all(
//     //         color: color,
//     //       ),
//     //     ),
//     //     child: Center(
//     //       child: Text(
//     //         label,
//     //         style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
//     //           color: color,
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // );
//   }
// }
