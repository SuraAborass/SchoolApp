import 'package:http/http.dart' as http;

import '../../Constants/links.dart';

class SubjectsClient {
  Future<dynamic> getSubjectsWithHomework() async {
    var response = await http.get(Uri.parse(baseLink + "subjectWithHomework/1/1"));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}