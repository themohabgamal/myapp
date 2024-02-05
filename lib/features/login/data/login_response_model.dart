import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';
@JsonSerializable()
class LoginResponseModel {
  final String message;
  final int status;
  final int code;
  final Data data;

  LoginResponseModel({
    required this.message,
    required this.status,
    required this.code,
    required this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  final String token;
  final String username;

  Data({
    required this.token,
    required this.username,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
