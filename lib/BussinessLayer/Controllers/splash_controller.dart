import 'package:get/get.dart';
import '../../Constants/get_routes.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.homeScreen));

    super.onReady();
  }

}

