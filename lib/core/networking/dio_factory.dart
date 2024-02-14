import 'package:dio/dio.dart';
import 'package:pets_finder/core/helper/shared_preferences.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory({required this.appPreferences});

  static Dio? dio;

  final AppPreferences appPreferences;

  Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    String accessToken = await appPreferences.getAccessToken();
    Map<String, String> header = {
      "Authorization": "Bearer $accessToken",
    };

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = header;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
