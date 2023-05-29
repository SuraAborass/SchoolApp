import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class ComplaintClient{

  Future<dynamic> getComplaints() async {
    var response = await http.get(Uri.parse(baseLink + complaints));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  Future<dynamic> addComplaint(userId,type,description) async {
    var response = await http.post(Uri.parse(baseLink + newComplaint),
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