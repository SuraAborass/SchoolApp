import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class AlertsClient {
  Future<dynamic> getAlerts() async {
    var response = await http.get(Uri.parse(baseLink + alerts));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}