import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginResponceModel {
  String token;
  String error;

  LoginResponceModel(this.token, this.error);

  factory LoginResponceModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceModelFromJson(json);
}

@JsonSerializable()
class LoginRequestModel {
  String email = '';
  String password = '';

  //LoginRequestModel(this.email, this.password);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
