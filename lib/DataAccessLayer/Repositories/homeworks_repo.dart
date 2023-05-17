import 'dart:convert';

import '../Clients/homeworks_client.dart';
import '../Models/homework.dart';



class HomeworksRepo {
  HomeworksClient client = HomeworksClient();
  Future<List<HomeWork>> getHomeworks() async {
    var response = await client.getHomeworks();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<HomeWork>((json) => HomeWork.fromMap(json))
          .toList();
    }
    return [];
  }
}