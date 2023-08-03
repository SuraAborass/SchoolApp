import 'package:get/get.dart';
import '../Controllers/grades_controller.dart';
import '../Controllers/user_controller.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
    Get.put<GradesController>(GradesController());
  }
}