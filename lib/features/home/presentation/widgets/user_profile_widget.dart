import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_cache_image.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/profile_image.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfileWidget extends ConsumerWidget {
  const UserProfileWidget({
    super.key,
    required this.height,
    required this.user,
  });

  final double height;
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => ref.watch(goRouterProvider).push(const ProfileRoute().location),
      child: Container(
        color: brandColor,
        height: height + 120,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const ProfileImage(
                        radius: 30,
                        image: CustomCacheImage(
                          boxFit: BoxFit.cover,
                          url: "https://api.slingacademy.com/public/sample-users/4.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderTextLarge(user.name, color: bgWhite),
                          const SizedBox(height: 4),
                          HeaderText(user.role, color: const Color(0xffDFDFDF)),
                        ],
                      ),
                    ],
                  ),
                  DecoratedContainer(
                    ontap: () => ref.watch(goRouterProvider).push(const ProfileRoute().location),
                    child: const Icon(
                      CupertinoIcons.person,
                      color: bgWhite,
                      size: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
