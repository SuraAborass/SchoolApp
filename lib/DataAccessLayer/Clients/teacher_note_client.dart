import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class TeacherNotesClient {
  Future<dynamic> getTeacherNotes() async {
    var response = await http.get(Uri.parse(baseLink + teacherNotes));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}