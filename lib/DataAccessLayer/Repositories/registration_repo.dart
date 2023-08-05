import 'dart:convert';
import '../Clients/registration_client.dart';
import '../Models/student.dart';
class RegistrationStudentRepo{

var client = RegistrationStudentClient();

  Future<Student?> registrationStudent(firstname, secondname,mothername,fathername,gender,motherphone,
      birthdate,nationality,paytype,gradeId) async {
    var data = await client.registrationStudent(firstname, secondname,mothername,fathername,gender,motherphone,
        birthdate,nationality,paytype,gradeId);
    print(data);
    if (data != null) {
      return Student.fromMap(jsonDecode(data));
    }
    return null;
  }
}