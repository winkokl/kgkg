import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
    this.text, {
    super.key,
    this.color = black,
    this.maxLines = 2,
  });
  final Color color;
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}

class HeaderTextSmall extends StatelessWidget {
  const HeaderTextSmall(
    this.text, {
    super.key,
    this.color = black,
    this.maxLines = 2,
  });
  final Color color;
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}

class HeaderTextLarge extends StatelessWidget {
  const HeaderTextLarge(
    this.text, {
    super.key,
    this.color = black,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}

class TableText extends StatelessWidget {
  const TableText(
    this.text, {
    this.color,
    super.key,
  });

  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
