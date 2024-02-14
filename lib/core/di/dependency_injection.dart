import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pets_finder/core/helper/shared_preferences.dart';
import 'package:pets_finder/core/networking/api_service.dart';
import 'package:pets_finder/core/networking/dio_factory.dart';
import 'package:pets_finder/core/networking/netwotk_info.dart';
import 'package:pets_finder/features/login/data/repos/login_repo.dart';
import 'package:pets_finder/features/login/logic/cubit/login_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<NetworkInfo>(() =>
      NetworkInfoImpl(internetConnectionChecker: InternetConnectionChecker()));

  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<AppPreferences>(
      () => AppPreferences(sharedPreferences: getIt()));
  // Dio & ApiService
  getIt.registerLazySingleton<DioFactory>(
      () => DioFactory(appPreferences: getIt()));

  Dio dio = await getIt<DioFactory>().getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(
      getIt<ApiService>(), getIt<AppPreferences>(), getIt<NetworkInfo>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // register
}
