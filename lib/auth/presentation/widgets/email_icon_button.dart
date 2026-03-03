import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmailIconButton extends ConsumerWidget {
  final String text;
  final void Function() onPressed;
  const EmailIconButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final authState = ref.watch(authNotifierProvider);
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ))),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // if (authState == const AuthState.loading())
          //   const CustomCircularProgressIndicator(
          //     color: Colors.white,
          //   ),
          // if (authState != const AuthState.loading()) ...[
          const SizedBox(width: 15),
          const Icon(Icons.email),
          const SizedBox(width: 15),
          Text(text),
          // ]
        ],
      ),
    );
  }
}
