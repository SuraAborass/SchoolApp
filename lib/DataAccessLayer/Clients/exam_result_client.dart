import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class ExamResultsClient {
  Future<dynamic> getExamResults() async {
    var response = await http.get(Uri.parse(baseLink + examResults));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}