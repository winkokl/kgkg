import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedContainer(
        border: Border.all(color: brandColor),
        color: Colors.transparent,
        ontap: onTap,
        child: const Icon(
          Icons.add,
          color: brandColor,
          size: 20,
        ),
      ),
    );
  }
}
