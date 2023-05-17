import 'dart:convert';

import '../Clients/exam_result_client.dart';
import '../Models/exam_result.dart';


class ExamResultsRepo {
  ExamResultsClient client = ExamResultsClient();
  Future<List<ExamResult>> getExamResults() async {
    var response = await client.getExamResults();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<ExamResult>((json) => ExamResult.fromMap(json))
          .toList();
    }
    return [];
  }
}