import 'package:myapp/core/networking/api_result.dart';
import 'package:myapp/core/networking/api_service.dart';
import 'package:myapp/features/login/data/models/login_request_body.dart';

import '../models/login_response_model.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo({required this.apiService});
  Future<ApiResult<LoginResponseModel>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error.toString());
    }
  }
}
