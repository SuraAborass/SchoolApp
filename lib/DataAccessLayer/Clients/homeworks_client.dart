import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class HomeworksClient {
  Future<dynamic> getHomeworks() async {
    var response = await http.get(Uri.parse(baseLink + homeworks));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}