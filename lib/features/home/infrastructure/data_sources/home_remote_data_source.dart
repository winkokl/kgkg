import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/home/infrastructure/dtos/sale_rank_dto.dart';
import 'package:mgkaung_dms_mobile/features/home/infrastructure/dtos/user_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_remote_data_source.g.dart';

@riverpod
HomeRemoteDataSource homeRemoteDataSource(HomeRemoteDataSourceRef ref) {
  return HomeRemoteDataSource(ref.watch(dioClientProvider));
}

class HomeRemoteDataSource {
  final DioClient dioClient;

  HomeRemoteDataSource(this.dioClient);

  Future<UserDTO> getUserInfo() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/auth-info');
    return UserDTO.fromJson(response['data']['user']);
  }

  Future<List<SaleRankDTO>> getSaleRanks() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/dashboard/reports/top-ten-list');
    print("Response Sale Ranks: $response");
    return (response['data'] as List).map((e) => SaleRankDTO.fromJson(e)).toList();
  }
}
