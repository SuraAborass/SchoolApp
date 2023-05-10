import 'package:get/get.dart';
import '../Controllers/subjects_controller.dart';
import '../Controllers/vacation_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SubjectsController>(SubjectsController());
    Get.put<VacationController>(VacationController());
  }
}