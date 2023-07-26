import 'dart:convert';

import 'package:advanced5task/model/post_model.dart';
import 'package:http/http.dart';

class Network {
  static String BASE = 'dummy.restapiexample.com';

  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  //http api 2
  static String API_LIST = '/api/v1/employees';
  static String API_GET = '/api/v1/employee/'; //+id
  static String API_CREATE = '/api/v1/create';
  static String API_UPDATE = '/api/v1/update/'; //+id
  static String API_DELETE = '/api/v1/delete/'; //+id

  //http requests
  //get
  //get => is used with params
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params);
    var response = await get(uri);
    if (response.statusCode == 200) {
      return response.body;
    }
    return response.statusCode.toString();
  }

  //post => is used with body
  static Future<String?> POST(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api);
    var response = await post(uri, body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return response.statusCode.toString();
  }

  //put => is used with body
  static Future<String?> PUT(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api);
    var response = await put(uri, body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 202) {
      return response.body;
    }
    return response.statusCode.toString();
  }

  //delete => is used with body
  static Future<String?> DELETE(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params);
    var response = await delete(uri);
    if (response.statusCode == 200) {
      return response.body;
    }
    return response.statusCode.toString();
  }

  //http params
  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }

  //paramsCreate for post method
  static Map<String, String> paramsCreate(User post) {
    Map<String, String> params = {};
    params.addAll({
      "name": post.name!,
      "salary": post.salary.toString(),
      "age": post.age.toString(),
    });
    print(params);
    return params;
  }

  //paramsUpdate for put method
  static Map<String, String> paramsUpdate(User post) {
    Map<String, String> params = {};
    params.addAll({
      "name": post.name!,
      "salary": post.salary.toString(),
      "age": post.age.toString(),
    });
    print(params);
    return params;
  }

//http responses
}
