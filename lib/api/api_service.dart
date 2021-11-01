import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http_post_request/model/login_model.dart';

class ApiService {
  Future<LoginResponceModel> login (LoginRequestModel requestModel) async {
    final url = Uri.parse("https://reqres.in/api/login");
    final responce = await http.post(url, body: requestModel.toJson());

    if(responce.statusCode == 200 || responce.statusCode == 400) {
      return LoginResponceModel.fromJson(json.decode(responce.body));
    }
    else {
      throw Exception('Failed to load Data');
    }
  }
}