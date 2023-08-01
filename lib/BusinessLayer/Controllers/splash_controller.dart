import 'package:get/get.dart';
import 'package:school_app/BusinessLayer/Controllers/user_controller.dart';
import '../../Constants/get_routes.dart';
import '../../main.dart';

class SplashController extends GetxController {
  UserController userController = Get.find();

  @override
  void onReady() {
    if (userController.authed == true) {
      if (userController.user != null) {
        MyApp.appUser = userController.user;
      }

      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.homeScreen));
    } else {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.loginScreen));
    }
    super.onReady();
  }
}

