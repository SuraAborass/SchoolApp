import 'dart:convert';
import '../Clients/subject_client.dart';
import '../Models/subject.dart';

class SubjectsRepo {
  SubjectsClient client = SubjectsClient();
  Future<List<Subject>> getSubjectsWithHomework() async {
    var response = await client.getSubjectsWithHomework();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Subject>((json) => Subject.fromMap(json))
          .toList();
    }
    return [];
  }
}