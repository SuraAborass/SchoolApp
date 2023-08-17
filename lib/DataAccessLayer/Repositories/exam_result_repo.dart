import 'dart:convert';

import '../Clients/exam_result_client.dart';
import '../Models/exam.dart';


class ExamResultsRepo {
  ExamResultsClient client = ExamResultsClient();
  Future<List<Exam>> getExamResults() async {
    var response = await client.getExamResults();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Exam>((json) => Exam.fromMap(json))
          .toList();
    }
    return [];
  }
}