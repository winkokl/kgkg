import 'package:flutter/cupertino.dart';

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: child),
      ),
    );
  }
}
