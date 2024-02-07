import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignupResponseModel {
  final String message;
  final bool status;
  final int code;
  final Data data;

  SignupResponseModel({
    required this.message,
    required this.status,
    required this.code,
    required this.data,
  });

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseModelToJson(this);
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
