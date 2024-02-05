import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/core/networking/api_service.dart';
import 'package:myapp/core/networking/dio_factory.dart';
import 'package:myapp/features/login/logic/cubit/login_cubit.dart';

import '../../features/login/data/repos/login_repo.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  //* Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //* Login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(apiService: getIt()),
  );
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(loginRepo: getIt()));
}
