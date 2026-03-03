import 'package:fpdart/fpdart.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/domain/module.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/repos/expense_repository.dart';
import 'package:dio/dio.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:mgkaung_dms_mobile/auth/application/auth_notifier.dart';
import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<ExpenseType>> expenseTypes(ExpenseTypesRef ref) {
  return ref.guardXFetch(() async => ref.watch(expenseRepositoryProvider).getExpenseTypes());
}

typedef PaginatedState = PaginatedData<Expense>;

@riverpod
// ignore: notifier_extends
class PaginatedExpenseNotifier extends PaginatedAsyncNotifier<Expense> {
  @override
  Future<PaginatedState> build() async {
    final expenseRepo = ref.watch(expenseRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('Exp'));
    final expenseStatus = ref.watch(expenseStatusNotifierProvider);
    final filter = ref.watch(filterApplyProvider('Exp'));
    ref.listen(tabIndexProvider, (previous, next) {
      if (next == 3) {
        ref.invalidateSelf();
      }
    });
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        // Get userId from SharedPreferences if not admin
        final userId = SharedPrefs.getInt("user_id");

        // ref.read(permissionProvider.notifier).hasAccessToModule(Module.ExpenseManagement,);

        final res = await expenseRepo.getExpenses(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          status: expenseStatus == 0 ? null : expenseStatus,
          allfilter: filter,
        );

        final items = res.filter((expense) => expense.user.id == userId).toList();

        return PaginatedState(
          items: items,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        final userId = SharedPrefs.getInt("user_id");

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await expenseRepo.getExpenses(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          status: expenseStatus == 0 ? null : expenseStatus,
          allfilter: filter,
        );
        final items = res.filter((expense) => expense.user.id == userId).toList();

        return PaginatedState(
          items: items,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedState> fetchNext(int page) async {
    final expenseRepo = ref.watch(expenseRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('Exp'));
    final expenseStatus = ref.watch(expenseStatusNotifierProvider);
    final filter = ref.watch(filterApplyProvider('Exp'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    // Get userId from SharedPreferences if not admin
    final userId = SharedPrefs.getInt("user_id");

    final res = await expenseRepo.getExpenses(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      status: expenseStatus == 0 ? null : expenseStatus,
      allfilter: filter,
    );
    return PaginatedState(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class ExpenseStatusNotifier extends _$ExpenseStatusNotifier {
  @override
  int build() => 0;

  void setExpenseStatus(int i) => state = i;
}
