import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/bottom_widget.dart';
import 'package:mgkaung_dms_mobile/core/pagination/widgets/error_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/common_shimmer_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonPagingView<N extends PagingAsyncNotifier<D>, D extends PaginatedData<T>, T extends PagingDataItem> extends HookConsumerWidget {
  const CommonPagingView({
    super.key,
    required this.provider,
    required this.contentBuilder,
  });
  final AutoDisposeAsyncNotifierProvider<N, D> provider;
  final Widget Function(D data, Widget? endItem) contentBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(provider, (_, state) {
      state.unwrapPrevious().showSnackbarOnError(context);
    });

    return ref.watch(provider).whenPlus(
          data: (data, hasError) {
            return RefreshIndicator(
              onRefresh: () => ref.refresh(provider.future),
              child: data.items.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/no_data.png'),
                          RefreshButton(onPressed: () {
                            ref.invalidate(provider);
                            // ref.invalidate(userInfoProvider);
                          }),
                        ],
                      ),
                    )
                  : contentBuilder(
                      data,
                      data.hasMore && !hasError
                          ? BottomWidget(
                              onScrollEnd: () => ref.read(provider.notifier).loadNext(),
                            )
                          : data.hasMore && hasError
                              ? BottomErrorWidget(retryCallback: () => ref.read(provider.notifier).loadNext())
                              : null),
            );
          },
          loading: () => const CommonShimmerList(),
          error: (e, st) {
            if (e.toString().contains("**")) {
              return PermissionDeniedWidget(
                onRetry: () {
                  ref.invalidate(provider);
                  // ref.invalidate(userInfoProvider);
                },
              );
            }
            return Center(
              child: CustomErrorWidget(errorCallback: () => ref.invalidate(provider)),
            );
          },
          skipErrorOnHasValue: true,
        );
  }
}
