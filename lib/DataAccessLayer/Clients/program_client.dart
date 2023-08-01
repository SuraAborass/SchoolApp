import 'package:http/http.dart' as http;

import '../../Constants/links.dart';

class ProgramClient {
  Future<dynamic> getDays() async {
    var response = await http.get(Uri.parse(baseLink + weekProgram));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}