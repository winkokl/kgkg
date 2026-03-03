import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/app_info.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_cache_image.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/profile_image.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';
import 'package:mgkaung_dms_mobile/features/profile/presentation/widgets/info_row_widget.dart';
import 'package:mgkaung_dms_mobile/features/profile/presentation/widgets/profile_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(userInfoProvider);

    return Material(
        // color: brandColor,
        child: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: RefreshIndicator(
        displacement: 60,
        edgeOffset: 100,
        onRefresh: () => ref.refresh(userInfoProvider.future),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: AsyncValueWidget(
                      value: userInfo,
                      loadingWidget: const ProfileShimmer(),
                      data: (data) {
                        return Column(
                          children: [
                            Stack(
                              fit: StackFit.loose,
                              children: <Widget>[
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                  color: brandColor,
                                ),
                                Positioned(
                                  top: 40,
                                  left: 14,
                                  right: 14,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      DecoratedContainer(
                                        child: const Icon(Icons.arrow_back_ios, size: 20, color: bgWhite),
                                        ontap: () => ref.watch(goRouterProvider).pop(),
                                      ),
                                      const HeaderTextLarge("My Profile", color: bgWhite),
                                      DecoratedContainer(
                                        child: const Icon(Icons.settings_outlined, size: 20, color: bgWhite),
                                        ontap: () => ref.watch(goRouterProvider).push(const SettingRoute().location),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 140,
                                  child: Container(
                                    height: 500,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(color: bgWhite, borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                                  ),
                                ),
                                const Positioned(
                                  top: 100,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ProfileImage(
                                        radius: 40,
                                        image: CustomCacheImage(
                                          boxFit: BoxFit.cover,
                                          url: "https://api.slingacademy.com/public/sample-users/4.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              color: bgWhite,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    // const SizedBox(height: 50),
                                    HeaderTextLarge(data.name),
                                    const SizedBox(height: 4),
                                    HeaderTextSmall(
                                      data.role,
                                      color: textGray,
                                    ),
                                    const SizedBox(height: 32),
                                    Container(
                                      decoration: whiteContainerDecoration,
                                      child: Column(
                                        children: [
                                          InfoRowWidget(
                                            label: "User Name",
                                            value: data.name,
                                          ),
                                          const Divider(height: 0),
                                          InfoRowWidget(
                                            label: "Email",
                                            value: data.email,
                                          ),
                                          const Divider(height: 0),
                                          InfoRowWidget(
                                            label: "Phone Number 1",
                                            value: data.phone1,
                                          ),
                                          const Divider(height: 0),
                                          InfoRowWidget(
                                            label: "Phone Number 2",
                                            value: data.phone2,
                                          ),
                                          const Divider(height: 0),
                                          InfoRowWidget(
                                            label: "User Role",
                                            value: data.role,
                                          ),
                                          const Divider(height: 0),
                                          InfoRowWidget(
                                            label: "Status",
                                            value: data.status ? "Active" : "Inactive",
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 32),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      errorCallback: () => ref.invalidate(userInfoProvider))),
            ),
            Text(
              "v ${AppInfo.version}",
              textAlign: TextAlign.center,
              style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xff5F6367),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
