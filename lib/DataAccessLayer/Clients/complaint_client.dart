import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class ComplaintClient{
  Future<dynamic> addComplaint(userId,type,description) async {
    var response = await http.post(Uri.parse(baseLink + complaint),
        body: jsonEncode(<String, String>{
          "user_id": userId.toString(),
          "type": type.toString(),
          "description" : description.toString()
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    print(response.body);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }
}