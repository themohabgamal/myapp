import 'package:dio/dio.dart';
import 'package:myapp/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';

import '../../features/login/data/login_request_body.dart';
import '../../features/login/data/login_response_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestBody body);
}
