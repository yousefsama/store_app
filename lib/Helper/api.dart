import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<dynamic>> get(
      {required String url, @required String? token}) async {
    Map<String, String> header = {};
    // header.addAll({       تقدر تضيف هنا اى حاجه انت عايزها          });
    if (token != null) {
      //هنا فى حاله وجود token
      header.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> post(
      {required String url,
      @required dynamic body,
      @required dynamic? token}) async {
    Map<String, String> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: token);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    }
    return throw Exception(
        'there is a problem with status code ${response.statusCode} with body ${response.body}');
  }

  Future<Map<String, dynamic>> put(
      {required String url,
      @required dynamic body,
      @required dynamic? token}) async {
    Map<String, String> header = {};
    // header.addAll({       تقدر تضيف هنا اى حاجه انت عايزها          });
    if (token != null) {
      //هنا فى حاله وجود token
      header.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: token);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    }
    return throw Exception(
        'there is a problem with status code ${response.statusCode} with body ${response.body}');
  }
}
