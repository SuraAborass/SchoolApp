import 'dart:convert';
import '../Clients/complaint_client.dart';
import '../Models/complaint.dart';

class ComplaintRepo {
  var client = ComplaintClient();
  Future<Complaint?> addComplaint(userId,type,description) async {
    var data = await client.addComplaint(userId,type,description);
    if (data != null) {
      final parsed = json.decode(data);
      return Complaint.fromMap(parsed);
    }
    return null;
  }
}