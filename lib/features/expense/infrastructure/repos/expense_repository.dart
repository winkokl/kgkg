import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/data_sources/expense_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/dtos/expense_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'expense_repository.g.dart';

@Riverpod(keepAlive: true)
ExpenseRepository expenseRepository(ExpenseRepositoryRef ref) {
  return ExpenseRepository(ref.watch(expenseRemoteDataSourceProvider));
}

class ExpenseRepository {
  final ExpenseRemoteDataSource expenseRemoteDataSource;

  ExpenseRepository(this.expenseRemoteDataSource);

  Future<List<ExpenseType>> getExpenseTypes() async {
    final expenseTypeDtos = await expenseRemoteDataSource.getExpenseTypes();
    return expenseTypeDtos.map((e) => e.toDomain()).toList();
  }

  Future<List<Expense>> getExpenses({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    int? status,
  }) async {
    final data = await expenseRemoteDataSource.getExpenses(
      pagination: pagination,
      cancelToken: cancelToken,
      status: status,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<CustomResponse> createExpense(Expense expense) async => await expenseRemoteDataSource.createExpense(ExpenseDTO.fromDomain(expense));

  Future<CustomResponse> updateExpense(Expense expense) async => await expenseRemoteDataSource.updateExpense(ExpenseDTO.fromDomain(expense));

  Future<CustomResponse> deleteExpense(int id) async => await expenseRemoteDataSource.deleteExpense(id);
}
