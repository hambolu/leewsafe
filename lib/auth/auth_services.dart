import 'dart:convert';

import 'package:leewsafe/auth/globals.dart';
import 'package:http/http.dart' as http;

// ignore: avoid_classes_with_only_static_members
class AuthServices {
  static Future<http.Response> register(
      String email, String password, String deviceId) async {
    final Map data = {
      'email': email,
      'password': password,
      'deviceId': deviceId,
    };
    final body = json.encode(data);
    final url = Uri.parse(baseURL + 'auth/register');
    final http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(body);
    print(response.body);
    return response;
  }

  static Future<http.Response> transfer(String address, String amount, String pkey) async {
    
    final Map data = {
      'address': address,
      'amount': amount,
      'pkey'  : pkey,

    };
    final body = json.encode(data);
    final url = Uri.parse(baseURL + 'auth/login');
    final http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
