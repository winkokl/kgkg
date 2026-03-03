import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabControllerWithIndex {
  final TabController tabController;
  final ValueNotifier<int> tabIndex;

  TabControllerWithIndex(this.tabController, this.tabIndex);
}

TabControllerWithIndex useTabControllerWithIndex({
  required int initialLength,
  required WidgetRef ref,
}) {
  final tabController = useTabController(initialLength: initialLength);
  final tabIndex = useState(0);

  void setTabIndex() {
    tabIndex.value = tabController.index;
    ref.invalidate(filterApplyProvider());
  }

  useEffect(() {
    tabController.addListener(setTabIndex);
    return () {
      tabController.removeListener(setTabIndex);
    };
  }, [tabController]);

  return TabControllerWithIndex(tabController, tabIndex);
}
