// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/active_icon_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension StringHardcoded on String {
  String get hardcoded => this;
}

class ScaffoldWithNestedNavigation extends StatefulHookConsumerWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ScaffoldWithNestedNavigation> createState() => _ScaffoldWithNestedNavigationState();
}

class _ScaffoldWithNestedNavigationState extends ConsumerState<ScaffoldWithNestedNavigation> with WidgetsBindingObserver {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addObserver(this); // Start listening for lifecycle changes
  //   // WidgetsBinding.instance.addPostFrameCallback((_) {
  //   //   final isLogIn = ref.read(isLoginProvider);
  //   //   if (!isLogIn) {
  //   //     context.go(const PinCodeRoute(hasOperation: false).location);
  //   //   }
  //   // });
  // }

  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this); // Stop listening when the widget is disposed
  //   super.dispose();
  // }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.resumed) {
  //     context.push(const PinCodeRoute(hasOperation: false).location, extra: () => context.pop());
  //   } else if (state == AppLifecycleState.paused) {}
  // }

  @override
  Widget build(BuildContext context) {
    ref.listen(isSessionExpiredNotifierProvider, (previous, isSessionExpired) {
      if (isSessionExpired) {
        CustomDialog.showFailureDialog(
          title: "Failed",
          msg: "Session expired. Please login again.",
          onPressed: () => ref.read(authNotifierProvider.notifier).signOut(),
        );
      }
    });

    void goBranch(int index) {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    }

    return ScaffoldWithNavigationBar(
      body: widget.navigationShell,
      currentIndex: widget.navigationShell.currentIndex,
      onDestinationSelected: goBranch,
    );
  }
}

class ScaffoldWithNavigationBar extends ConsumerWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: body,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 55,
          child: NavigationBar(
            selectedIndex: currentIndex,
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: const [
              NavigationDestination(
                icon: InactiveIconWidget(iconData: Icons.other_houses, title: "Home"),
                selectedIcon: ActiveIconWidget(iconData: Icons.other_houses, title: "Home"),
                label: '',
              ),
              NavigationDestination(
                icon: InactiveIconWidget(iconData: Icons.people_alt_outlined, title: "Customers"),
                selectedIcon: ActiveIconWidget(iconData: Icons.people_alt, title: "Customers"),
                label: '',
              ),
              NavigationDestination(
                icon: InactiveIconWidget(iconData: Icons.shopping_bag_outlined, title: "Sales"),
                selectedIcon: ActiveIconWidget(iconData: Icons.shopping_bag, title: "Sales"),
                label: '',
              ),
              NavigationDestination(
                icon: InactiveIconWidget(iconData: Icons.bar_chart, title: "Expenses"),
                selectedIcon: ActiveIconWidget(iconData: Icons.bar_chart, title: "Expenses"),
                label: '',
              ),
              // NavigationDestination(
              //   icon: InactiveIconWidget(iconData: Icons.list_alt, title: 'Report'),
              //   selectedIcon: ActiveIconWidget(iconData: Icons.list_alt, title: 'Report'),
              //   label: '',
              // ),
            ],
            onDestinationSelected: (v) {
              onDestinationSelected.call(v);
              ref.read(tabIndexProvider.notifier).setIndex(v);
              if (v == 1) {
                ref.invalidate(filterApplyProvider("Cus"));
                return;
              }
              if (v == 3) {
                ref.invalidate(filterApplyProvider("Exp"));
                return;
              }
            },
          ),
        ),
      ),
    );
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = brandColor
      ..strokeWidth = 7
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), paint);
  }
}

// tabs: <Widget>[
//                 Tab(
//                   icon: Image.asset(
//                     'assets/images/home.png',
//                     color: tabController.index == 0 ? brandColor : null,
//                   ),
//                   text: 'Home',
//                   iconMargin: EdgeInsets.zero,
//                 ),
//                 Tab(
//                   icon: Image.asset(
//                     'assets/images/customer.png',
//                     color: tabController.index == 1 ? brandColor : null,
//                   ),
//                   text: 'Customers',
//                   iconMargin: EdgeInsets.zero,
//                 ),
//                 Tab(
//                   icon: Image.asset(
//                     'assets/images/sale.png',
//                     color: tabController.index == 2 ? brandColor : null,
//                   ),
//                   text: 'Sale',
//                   iconMargin: EdgeInsets.zero,
//                 ),
//                 Tab(
//                   icon: Image.asset(
//                     'assets/images/expense.png',
//                     color: tabController.index == 3 ? brandColor : null,
//                   ),
//                   text: 'Expense',
//                   iconMargin: EdgeInsets.zero,
//                 ),
//                 Tab(
//                   icon: Image.asset(
//                     'assets/images/report.png',
//                     color: tabController.index == 4 ? brandColor : null,
//                   ),
//                   text: 'Report',
//                   iconMargin: EdgeInsets.zero,
//                 ),
//               ],

// Material(
//         color: bgWhite,
//         child: SizedBox(
//           height: 60,
//           child: TabBar(
//             controller: tabController,
//             onTap: (v) {
//               // ref.read(tabIndexProvider.notifier).setIndex(v);
//               widget.onDestinationSelected.call(v);
//               tabController.animateTo(v);
//             },
//             labelColor: brandColor,
//             labelPadding: EdgeInsets.zero,
//             indicatorSize: TabBarIndicatorSize.label,
//             labelStyle: CustomTheme.appTheme.textTheme.bodySmall!
//                 .copyWith(color: black, fontWeight: FontWeight.bold),
//             unselectedLabelStyle: CustomTheme.appTheme.textTheme.bodySmall!
//                 .copyWith(color: const Color(0xff737791)),
//             unselectedLabelColor: const Color(0xff737791),
//             indicator: TopIndicator(),
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(tabController.index == 0
//                     ? Icons.other_houses
//                     : Icons.other_houses_outlined),
//                 text: 'Home',
//                 iconMargin: EdgeInsets.zero,
//               ),
//               Tab(
//                 icon: Icon(tabController.index == 1
//                     ? Icons.people_alt
//                     : Icons.people_alt_outlined),
//                 text: 'Customers',
//                 iconMargin: EdgeInsets.zero,
//               ),
//               Tab(
//                 icon: Icon(tabController.index == 2
//                     ? Icons.shopping_bag
//                     : Icons.shopping_bag_outlined),
//                 text: 'Sale',
//                 iconMargin: EdgeInsets.zero,
//               ),
//               const Tab(
//                 icon: Icon(Icons.bar_chart),
//                 text: 'Expense',
//                 iconMargin: EdgeInsets.zero,
//               ),
//               const Tab(
//                 icon: Icon(Icons.list_alt),
//                 text: 'Report',
//                 iconMargin: EdgeInsets.zero,
//               ),
//             ],
//           ),
//         ),
//       ),
