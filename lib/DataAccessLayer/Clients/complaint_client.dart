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
  Future<dynamic> addComplaint(studentId,type,description) async {
    var response = await http.post(Uri.parse(baseLink + newComplaint),
        body: jsonEncode(<String, String>{
          "student_id": "1",
          "type": type,
          "description" : description
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