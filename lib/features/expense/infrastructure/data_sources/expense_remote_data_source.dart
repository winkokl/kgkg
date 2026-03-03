import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/dtos/expense_dto.dart';
import 'package:mgkaung_dms_mobile/features/expense/infrastructure/dtos/expense_type_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'expense_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
ExpenseRemoteDataSource expenseRemoteDataSource(ExpenseRemoteDataSourceRef ref) {
  return ExpenseRemoteDataSource(ref.watch(dioClientProvider));
}

class ExpenseRemoteDataSource {
  final DioClient dioClient;

  ExpenseRemoteDataSource(this.dioClient);

  Future<List<ExpenseTypeDTO>> getExpenseTypes() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/expense-type');
    return (response as List).map((e) => ExpenseTypeDTO.fromJson(e)).toList();
  }

  Future<List<ExpenseDTO>> getExpenses({
    required Pagination pagination,
    CancelToken? cancelToken,
    int? status,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "username": pagination.query,
      "page": pagination.page,
      "status": status ?? "",
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      "${ApiBase.baseUrl}/mobile/expense-management",
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => ExpenseDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> createExpense(ExpenseDTO expenseDto) async => await dioClient.post(
        '${ApiBase.baseUrl}/mobile/expense-management/create',
        data: expenseDto.toJson(),
      );

  Future<CustomResponse> updateExpense(ExpenseDTO expenseDto) async => await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/expense-management/update/${expenseDto.id}',
        data: expenseDto.toJson(),
      );

  Future<CustomResponse> deleteExpense(int id) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/expense-management/delete/$id');
}
