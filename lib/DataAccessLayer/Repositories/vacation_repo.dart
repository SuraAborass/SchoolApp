import 'dart:convert';
import '../Clients/vacation_client.dart';
import '../Models/vacation.dart';


class VacationsRepo {
  VacationsClient client = VacationsClient();
  Future<List<Vacation>> getVacations() async {
    var response = await client.getVacations();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Vacation>((json) => Vacation.fromMap(json))
          .toList();
    }
    return [];
  }
}