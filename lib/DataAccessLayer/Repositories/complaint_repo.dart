import 'dart:convert';
import '../Clients/complaint_client.dart';
import '../Models/complaint.dart';

class ComplaintRepo {
  var client = ComplaintClient();

  Future<List<Complaint>> getComplaints() async {
    var response = await client.getComplaints();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Complaint>((json) => Complaint.fromMap(json))
          .toList();
    }
    return [];
  }
  Future<Complaint?> addComplaint(studentId,type,description) async {
    var data = await client.addComplaint(studentId,type,description);
    if (data != null) {
      final parsed = json.decode(data);
      print(parsed);
      return Complaint.fromMap(parsed);
    }
    return null;
  }
}