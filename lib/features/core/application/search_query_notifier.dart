import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_query_notifier.g.dart';

@Riverpod()
class SearchQueryNotifier extends _$SearchQueryNotifier {
  @override
  String build([String? title]) {
    ref.onCancel(() {});

    ref.onDispose(() {});

    ref.onResume(() {});

    return '';
  }

  void setQuery(String query) {
    state = query;
  }
}
