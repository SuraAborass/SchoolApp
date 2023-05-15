import 'dart:convert';
import '../Clients/alerts_client.dart';
import '../Models/alert.dart';


class AlertsRepo {
  AlertsClient client = AlertsClient();
  Future<List<Alert>> getAlerts() async {
    var response = await client.getAlerts();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Alert>((json) => Alert.fromMap(json))
          .toList();
    }
    return [];
  }
}