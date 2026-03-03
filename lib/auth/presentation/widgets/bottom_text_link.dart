import 'package:flutter/material.dart';

class BottomTextLink extends StatelessWidget {
  final String text;
  final String link;
  final void Function() onPressed;
  const BottomTextLink({
    super.key,
    required this.text,
    required this.link,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(link),
        ),
      ],
    );
  }
}
