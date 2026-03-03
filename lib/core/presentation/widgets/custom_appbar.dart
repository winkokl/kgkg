import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppbar({
//     super.key,
//     required this.title,
//     this.actions,
//     this.hasLeading = true,
//     this.onPressed,
//   });
//   final String title;
//   final List<Widget>? actions;
//   final bool hasLeading;
//   final VoidCallback? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       // leading: hasLeading ? CustomBackButton(onPressed: onPressed) : null,
//       title: Text(
//         title,
//         overflow: TextOverflow.ellipsis,
//         maxLines: 1,
//       ),
//       actions: actions,
//     );
//   }

//   @override
//   Size get preferredSize => const Size(double.infinity, 60);
// }

class CustomBackButton extends ConsumerWidget {
  const CustomBackButton({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.pop(context),
      child: const Icon(
        Icons.arrow_back,
        size: 24,
      ),
    );
  }
}
