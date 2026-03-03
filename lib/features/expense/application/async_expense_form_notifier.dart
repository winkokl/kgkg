import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/expense/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/repos/expense_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_expense_form_notifier.g.dart';

@riverpod
class AsyncExpenseFormNotifier extends _$AsyncExpenseFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> createExpense(Expense expense) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(expenseRepositoryProvider).createExpense(expense);
      ref.invalidate(paginatedExpenseNotifierProvider);
      return Some(res);
    });
  }

  Future<void> updateExpense(Expense expense) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(expenseRepositoryProvider).updateExpense(expense);
      ref.invalidate(paginatedExpenseNotifierProvider);
      return Some(res);
    });
  }

  Future<void> deleteExpense(int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(expenseRepositoryProvider).deleteExpense(id);
      ref.invalidate(paginatedExpenseNotifierProvider);
      return Some(res);
    });
  }
}
