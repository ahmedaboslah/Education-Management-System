

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class Api {
  final Dio dio = Dio();
  Future<dynamic> get({required String endPoint}) async {
    var response = await http
        .get(Uri.parse('http://192.168.1.7/api_education/user/$endPoint.php'));
    List data = [];
    var info;
    if (response.statusCode == 200) {
      info = json.decode(response.body);
     data.addAll(info);
    }
    print(info[0]);
    return info;
  }
  Future<dynamic> Post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers
    );
    if(response.statusCode==200){
         List data =  jsonDecode(response.body);
         return data;
    }
    else{
      throw Exception('there is a problem with the status code${response.statusCode} with the body${jsonDecode(response.body)}');
    }
   
  }

}
