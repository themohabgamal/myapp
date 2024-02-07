import 'package:dio/dio.dart';
import 'package:myapp/core/networking/api_constants.dart';
import 'package:myapp/features/login/data/models/login_response_model.dart';
import 'package:myapp/features/signup/data/models/sign_up_response_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/signup/data/models/sign_up_request_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestBody requestBody);
  @POST(ApiConstants.signup)
  Future<SignupResponseModel> signUp(@Body() SignUpRequestBody requestBody);
}
