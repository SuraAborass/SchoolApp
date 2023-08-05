import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class RegistrationStudentClient {
  Future<dynamic> registrationStudent(firstname, secondname,mothername,fathername,gender,motherphone,
      birthdate,nationality,paytype,gradeId) async {
    var response = await http.post(Uri.parse(baseLink + registrationLink),
        body:
        jsonEncode(<String, dynamic>{"first_name": firstname,
          "second_name": secondname,
          "mother_name": mothername,
          "father_name": fathername,
          "gender": gender,
          "mother_phone" : motherphone,
          "birth_date": birthdate,
          "nationality": nationality,
          "pay_type" : paytype,
          "grade_id" : gradeId.toString(),
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
  }}