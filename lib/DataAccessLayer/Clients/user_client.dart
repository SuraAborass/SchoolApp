import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../Constants/links.dart';

class UserClient {
  Future<dynamic> login(phone, password) async {
    var response = await http.post(Uri.parse(baseLink + loginLink),
        body:
            jsonEncode(<String, dynamic>{"phone": phone, "password": password}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
