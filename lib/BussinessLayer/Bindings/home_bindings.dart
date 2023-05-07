import 'package:get/get.dart';
import '../Controllers/subjects_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SubjectsController>(SubjectsController());
  }
}