import 'dart:convert';
import '../Clients/grades_client.dart';
import '../Models/grade.dart';

class GradesRepo {
  GradesClient client = GradesClient();
  Future<List<Grade>> getGrades() async {
    var response = await client.getGrades();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Grade>((json) => Grade.fromMap(json))
          .toList();
    }
    return [];
  }
}