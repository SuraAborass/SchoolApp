import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class GradesClient {
  Future<dynamic> getGrades() async {
    var response = await http.get(Uri.parse(baseLink + grades ));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}