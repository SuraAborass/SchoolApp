import 'package:get/get.dart';

import '../../Constants/get_routes.dart';
import '../../DataAccessLayer/Models/complaint.dart';
import '../../DataAccessLayer/Models/homework.dart';
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
  void gotoPayload(UserNotification userNotification){
    if(userNotification.type=='homework'){
      HomeWork homework = HomeWork.fromMap(userNotification.data as Map<String,dynamic>);
      Get.toNamed(AppRoutes.homeWorksScreen,arguments: [homework]);
    }
    else if(userNotification.type=='complaint'){
      Complaint complaint = Complaint.fromMap(userNotification.data as Map<String,dynamic>);
      Get.toNamed(AppRoutes.homeWorksScreen,arguments: [complaint]);
    }
   else if(userNotification.type=='examResult'){
      Get.toNamed(AppRoutes.results);
    }
    else if(userNotification.type=='payment'){
      Get.toNamed(AppRoutes.installments);
    }
    else if(userNotification.type=='studentAbsence'){
      Get.toNamed(AppRoutes.studentTime);
    }

  }

}