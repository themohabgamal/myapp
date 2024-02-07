import 'package:myapp/core/networking/api_result.dart';
import 'package:myapp/core/networking/api_service.dart';

import '../models/sign_up_request_body.dart';
import '../models/sign_up_response_model.dart';

class SignUpRepo {
  ApiService apiService;
  SignUpRepo({required this.apiService});
  Future<ApiResult<SignupResponseModel>> signUp(SignUpRequestBody body) async {
    try {
      final response = await apiService.signUp(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error.toString());
    }
  }
}
