part of '../router.dart';

@TypedGoRoute<AllFilterRoute>(path: '/all-filter')
class AllFilterRoute extends GoRouteData {
  const AllFilterRoute(this.title);
  final String? title;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    final (filterControl, allfilter) = state.extra as (FilterControl, Allfilter?);
    return SlideFromSideTransitionPage(
      state.pageKey,
      ProviderScope(overrides: [allFiltersProvider.overrideWith(() => AllFilters(allfilter))], child: AllFilterScreen(filterControl: filterControl, title: title)),
    );
  }
}
