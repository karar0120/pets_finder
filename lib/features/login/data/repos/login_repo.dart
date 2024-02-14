import 'package:pets_finder/core/helper/shared_preferences.dart';
import 'package:pets_finder/core/networking/api_error_handler.dart';
import 'package:pets_finder/core/networking/api_result.dart';
import 'package:pets_finder/core/networking/api_service.dart';
import 'package:pets_finder/core/networking/netwotk_info.dart';
import 'package:pets_finder/features/login/data/models/login_request_body.dart';
import 'package:pets_finder/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  final AppPreferences _appPreferences;
  final NetworkInfo _networkInfo;
  LoginRepo(this._apiService, this._appPreferences, this._networkInfo);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.login(loginRequestBody);
        _appPreferences.setAccessToken(accessToken: response.accessToken!);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(
          ErrorHandler.handle(DataSource.INTERNAL_SERVER_ERROR.getFailure()));
    }
  }
}
