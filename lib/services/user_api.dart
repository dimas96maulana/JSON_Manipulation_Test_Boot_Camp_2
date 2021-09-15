import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:json_manipulation/models/json_array.dart';

 
class UserApi {
  static UserApi? _instance;

  UserApi._();

  static UserApi? get instance {
    if (_instance == null) {
      _instance = UserApi._();
    }
    return _instance;
  }

  Future<List<JsonArray>> getAllUser() async {
    // const webAddress = "http://jsonplaceholder.typicode.com/users";
    // final uri = Uri.tryParse(webAddress);

    // final getUser = await http.get(uri!, 
        String jsonString = await 
      rootBundle.loadString("assets/data.json");
    // ); 
     
    final List responseBody = jsonDecode(jsonString);
    return responseBody.map((e) => JsonArray.fromJson(e)).toList();
  }
}
