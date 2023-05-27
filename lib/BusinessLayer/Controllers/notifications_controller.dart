import 'package:get/get.dart';

import '../../DataAccessLayer/Models/notification.dart';
import '../../DataAccessLayer/Repositories/notifications_repo.dart';

class UserNotificationsController extends GetxController{
  NotificationsRepo repo = NotificationsRepo();
  List<UserNotification> userNotifications = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getNotifications();
    super.onInit();
  }

  Future<void> getNotifications() async {
    loading.value = true;
    userNotifications = await repo.getNotifications();
    update();
    loading.value = false;
  }

}