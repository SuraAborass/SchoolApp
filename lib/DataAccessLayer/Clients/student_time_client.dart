import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class StudentTimeClient {
  Future<dynamic> getStudentTime() async {
    var response = await http.get(Uri.parse(baseLink + studentTime));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}