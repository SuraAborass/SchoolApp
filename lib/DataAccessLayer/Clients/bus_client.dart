import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class BusClient {
  Future<dynamic> getBusInfo() async {
    var response = await http.get(Uri.parse(baseLink + busInfo));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}