import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:mgkaung_dms_mobile/features/home/presentation/widgets/user_position_widget.dart';
import 'package:mgkaung_dms_mobile/features/home/presentation/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HeaderWidget extends ConsumerWidget {
  const HeaderWidget({
    super.key,
    required this.height,
    required this.user,
  });
  final double height;
  final User user;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: <Widget>[
        UserProfileWidget(user: user, height: height),
        Container(),
        Positioned(
          top: 120.0,
          left: 16.0,
          right: 16.0,
          child: Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                color: bgWhite,
                borderRadius: BorderRadius.circular(6),
              ),
              height: 105,
              child: UserPositionWidget(user: user),
            ),
          ),
        )
      ],
    );
  }
}
