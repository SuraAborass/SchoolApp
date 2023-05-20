import 'dart:convert';
import '../Clients/bus_client.dart';
import '../Models/bus.dart';


class BusRepo {
  BusClient client = BusClient();
  Future<List<BusInfo>> getBusInfo() async {
    var response = await client.getBusInfo();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<BusInfo>((json) => BusInfo.fromMap(json))
          .toList();
    }
    return [];
  }
}