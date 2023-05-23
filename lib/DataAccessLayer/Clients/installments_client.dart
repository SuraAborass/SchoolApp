import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class InstallmentsClient {
  Future<dynamic> getInstallments() async {
    var response = await http.get(Uri.parse(baseLink + installments));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}