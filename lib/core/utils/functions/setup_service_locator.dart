import 'package:bookly/core/utils/services/api_services.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source_imp.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source_imp.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void setupServiceLocator() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRemoteDataSource: HomeRemoteDataSourceImp(
        ApiServices(dio: Dio()),
      ),
    ),
  );
}
