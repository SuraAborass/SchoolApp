import 'dart:convert';
import '../Clients/notifications_client.dart';
import '../Models/notification.dart';


class NotificationsRepo {
  NotificationsClient client = NotificationsClient();
  Future<List<UserNotification>> getNotifications() async {
    var response = await client.getNotifications();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<UserNotification>((json) => UserNotification.fromMap(json))
          .toList();
    }
    return [];
  }
}