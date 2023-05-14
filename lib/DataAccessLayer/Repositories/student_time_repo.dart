import 'dart:convert';
import '../Clients/student_time_client.dart';
import '../Models/student_time.dart';
import '../Models/subject.dart';

class StudentTimeRepo {
  StudentTimeClient client = StudentTimeClient();
  Future<List<StudentTime>> getStudentTime() async {
    var response = await client.getStudentTime();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<StudentTime>((json) => StudentTime.fromMap(json))
          .toList();
    }
    return [];
  }
}