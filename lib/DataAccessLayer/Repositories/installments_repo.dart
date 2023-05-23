import 'dart:convert';

import '../Clients/installments_client.dart';
import '../Models/installment.dart';


class InstallmentsRepo {
  InstallmentsClient client = InstallmentsClient();
  Future<List<Installment>> getInstallments() async {
    var response = await client.getInstallments();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Installment>((json) => Installment.fromMap(json))
          .toList();
    }
    return [];
  }
}