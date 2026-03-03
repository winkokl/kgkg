import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/filter_control.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchTextField extends ConsumerWidget {
  const SearchTextField({super.key, this.title, this.filterControl, this.hintText});
  final String? title;
  final FilterControl? filterControl;

  final String? hintText;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormTextInput(
      prefixicon: const Icon(Icons.search),
      hintText: hintText ?? "Search",
      borderColor: bgWhite,
      focusBorderColor: bgWhite,
      onEditingComplete: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onSaved: (text) => ref.read(searchQueryNotifierProvider(title).notifier).setQuery(text ?? ""),
      onSubmitted: (text) => ref.read(searchQueryNotifierProvider(title).notifier).setQuery(text ?? ""),
      suffixicon: filterControl == null
          ? null
          : Stack(
              children: [
                if (!ref.watch(filterApplyProvider(title).notifier).isInitial())
                  Positioned(
                    right: 6,
                    top: 8,
                    child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: errorColor),
                      width: 6,
                      height: 6,
                    ),
                  ),
                IconButton(
                  onPressed: () => ref.watch(goRouterProvider).push(AllFilterRoute(title).location, extra: (
                    filterControl,
                    ref.watch(filterApplyProvider(title)),
                  )),
                  icon: const Icon(
                    Icons.filter_list,
                    size: 24,
                    color: Color(0xff333333),
                  ),
                ),
              ],
            ),
      // onChanged: (text) => ref.read(searchQueryNotifierProvider(title).notifier).setQuery(text),
    );
  }
}
