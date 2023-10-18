import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../app_exceptions.dart';
import 'base_api_service.dart';





class NetworkApiServices extends BaseApiServices{

  @override
  Future<dynamic> getApi(String url)async{

    if (kDebugMode) {
      print(url);
    }

    dynamic jsonResponse;

    try{
      var URL = Uri.parse(url);
      final response = await http.get(URL).timeout(const Duration(seconds: 10));
      jsonResponse = responseReturn(response);
    } on SocketException{
      throw InternetExceptions("Please Check Internet Connection");
    } on TimeoutException{
      throw RequestTimeOut("");
    }
    if (kDebugMode) {
      print(jsonResponse);
    }
    return jsonResponse;

  }


  @override
  Future<dynamic> postApi(var data, String url)async{

    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic jsonResponse;

    try{
      var URL = Uri.parse(url);
      final response = await http.post(URL, body: data).timeout(const Duration(seconds: 5));
      jsonResponse = responseReturn(response);
    } on SocketException{
      throw InternetExceptions("Please Check Internet Connection");
    } on TimeoutException{
      throw RequestTimeOut("");
    }
    //print("========================ResponseData : $jsonResponse ============================");
    return jsonResponse;

  }

  dynamic responseReturn(http.Response response){
    switch(response.statusCode ){
      case 200 :
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400 :
        throw InvalidUrlExceptions('Please Check URL');
      default:
        throw FetchDataExceptions('While Communicate with Server. Status Code: ${response.statusCode}');
    }
  }

}

