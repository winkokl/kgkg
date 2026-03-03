import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:mgkaung_dms_mobile/features/home/infrastructure/data_sources/home_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepository(ref.watch(homeRemoteDataSourceProvider));
}

class HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepository(this.homeRemoteDataSource);

  Future<User> getUserInfo() async {
    final userDto = await homeRemoteDataSource.getUserInfo();
    return userDto.toDomain();
  }

  Future<List<SaleRank>> getSaleRanks() async {
    final saleRanksDto = await homeRemoteDataSource.getSaleRanks();
    return saleRanksDto.map((saleRankDto) => saleRankDto.toDomain()).toList();
  }
}
